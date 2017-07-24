package com.zcc.MyWebsite.service;

import com.zcc.MyWebsite.dao.ArticleDao;
import com.zcc.MyWebsite.entity.Article;
import com.zcc.MyWebsite.entity.ArticleType;
import com.zcc.MyWebsite.entity.PageInfo;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * @author chencheng.zhou
 * @version V1.0
 * @create 2017/07/22 19:46
 */
@Component(value = "articleService")
@Transactional
public class ArticleService {
    @Resource(name = "articleDao")
    private ArticleDao dao;
    @Transactional(readOnly = true)
    public List<ArticleType> getArticleTypes(){
        return dao.findAllTypes();
    }

    @Transactional(readOnly = true)
    public List<Article> getArticleInfo(int typeid){
        return dao.findArticleInfoByType(typeid);
    }

    @Transactional(readOnly = true)
    public List<Article> getArticleInfo(int typeid, int index){
        return dao.findPageArticles(typeid, index, PageInfo.PageSize);
    }

    @Transactional(readOnly = true)
    public Article getArticle(int artid){
        return dao.findArticle(artid);
    }

    @Transactional(readOnly = true)
    public int getPageCount(int typeid, int pageSize){
        return (dao.findArticlesCount(typeid)+pageSize-1)/pageSize;
    }

    /**
     * 获取分页控件的相关信息
     * @param typeid
     * @param index
     * @return
     */
    public PageInfo getPageInfo(int typeid, int index){
        PageInfo info = new PageInfo();
        int count = getPageCount(typeid, PageInfo.PageSize);
        int begin = index-index%PageInfo.PageSize;
        info.setPrePages(begin>PageInfo.PageSize-1?begin-PageInfo.PageSize:begin);
        info.setNextPages(begin+PageInfo.PageSize>count-1?begin:begin+PageInfo.PageSize);
        List<Integer> pages=new ArrayList<>();
        for(int i=0;i<PageInfo.PageSize;i++){
            if(begin+i<count)
                pages.add(begin+i);
        }
        info.setPages(pages);
        info.setCurrentPage(index);
        return info;
    }
}
