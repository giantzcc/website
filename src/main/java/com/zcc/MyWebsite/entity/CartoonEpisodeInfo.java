package com.zcc.MyWebsite.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * @author chencheng.zhou
 * @version V1.0
 * @create 2017/07/18 16:08
 */
public class CartoonEpisodeInfo {
    private int episode;//第几话
    private String title;//标题
    private List<String> orderinfo = new ArrayList<String>();//图片名

    public int getEpisode() {
        return episode;
    }

    public String getTitle() {
        return title;
    }

    public List<String> getOrderinfo() {
        return orderinfo;
    }

    public void setEpisode(int episode) {
        this.episode = episode;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setOrderinfo(List<String> orderinfo) {
        this.orderinfo = orderinfo;
    }
}
