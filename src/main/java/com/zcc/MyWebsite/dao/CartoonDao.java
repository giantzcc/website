package com.zcc.MyWebsite.dao;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.zcc.MyWebsite.entity.CartoonEpisodeInfo;
import com.zcc.MyWebsite.util.PathUtil;

import java.io.*;
import java.util.*;

/**
 * @author chencheng.zhou
 * @version V1.0
 * @create 2017/07/18 16:04
 */
public class CartoonDao {
    private String path;
    private String type;
    public CartoonDao(String type) {
        Properties prop = new Properties();
        try {
            prop.load(CartoonDao.class.getClassLoader().getResourceAsStream("config.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        String base = prop.getProperty("CartoonPath");
        this.type = type;
        this.path=PathUtil.join(base, type);
    }

    public String getPath() {
        return path;
    }

    /**
     * @return 返回每一话动漫的信息
     */
    public List<CartoonEpisodeInfo> loadInfos(){
        List<CartoonEpisodeInfo> rst = new ArrayList<CartoonEpisodeInfo>();
        File file = new File(path);
        File[] files = file.listFiles();
        for (File f:files){
            if(f.isDirectory()){
                File jsonFile = new File(PathUtil.join(f.getAbsolutePath(),"info.json"));
                try {
                    ObjectMapper mapper = new ObjectMapper();
                    JsonNode jsonNode = mapper.readTree(jsonFile);
                    CartoonEpisodeInfo info = new CartoonEpisodeInfo();
                    info.setTitle(jsonNode.get("title").asText());
                    info.setEpisode(jsonNode.get("episode").asInt());
                    List<String> urls = mapper.readValue(jsonNode.get("orderinfo").toString(), ArrayList.class);
                    List<String> nurls = new ArrayList<>();
                    for (String url:urls)
                        nurls.add(PathUtil.urlJoin("cartoondata", type, String.valueOf(info.getEpisode()), url));
                    info.setOrderinfo(nurls);
                    rst.add(info);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return rst;
    }

    public static void updateInfos(Map<String, List<CartoonEpisodeInfo>> data){
        Properties prop = new Properties();
        try {
            prop.load(CartoonDao.class.getClassLoader().getResourceAsStream("config.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        String base = prop.getProperty("CartoonPath");
        File file = new File(base);
        File[] files = file.listFiles();
        for(File dir:files){
            if(dir.isDirectory()){
                String name = dir.getName();
                for(File eps:dir.listFiles()){
                    CartoonDao dao = new CartoonDao(name);
                    data.put(name, dao.loadInfos());
                }
            }
        }
    }

    /**
     * 获取指定话的图片url
     * @param baseurl
     * @param episode
     * @return
     */
    public List<String> findPictureUrls(String baseurl, int episode){
        List<String> rst = new ArrayList<String>();
        String dpath=PathUtil.join(this.path,String.valueOf(episode));
        File file = new File(PathUtil.join(dpath, "info.json"));
        try {
            ObjectMapper mapper = new ObjectMapper();
            List<String> strs = mapper.readValue(mapper.readTree(file).get("orderinfo").toString(), ArrayList.class);
            if(strs!=null)
                for (String picName:strs){
                    rst.add(PathUtil.urlJoin(baseurl, "cartoondata", this.type, String.valueOf(episode), picName));
                }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rst;
    }
}
