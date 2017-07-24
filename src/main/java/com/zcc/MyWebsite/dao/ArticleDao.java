package com.zcc.MyWebsite.dao;

import com.zcc.MyWebsite.entity.Article;
import com.zcc.MyWebsite.entity.ArticleType;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import java.util.*;

/**
 * @author chencheng.zhou
 * @version V1.0
 * @create 2017/07/22 16:36
 */
@Component(value = "articleDao")
public class ArticleDao {
    @Autowired
    private SqlSessionFactory sqlSessionFactory;
    public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
        this.sqlSessionFactory = sqlSessionFactory;
    }

    /**
     * 返回所有栏目分类
     */
    public List<ArticleType> findAllTypes(){
        SqlSession sqlSession = sqlSessionFactory.openSession();
        List<ArticleType> rst = sqlSession.selectList("articleNamespace.findAll");
        return rst;
    }

    /**
     * 返回指定类型的所有文章的信息
     */
    public List<Article> findArticleInfoByType(int typeid){
        SqlSession sqlSession = sqlSessionFactory.openSession();
        List<Article> rst = sqlSession.selectList("articleNamespace.findArticleInfo", typeid);
        return rst;
    }

    /**
     * 根据id查询文章
     */
    public Article findArticle(int artid){
        SqlSession sqlSession = sqlSessionFactory.openSession();
        Article rst = sqlSession.selectOne("articleNamespace.findArticle", artid);
        return rst;
    }

    /**
     * 分页查询
     */
    public List<Article> findPageArticles(int typeid, int index, int size){
        SqlSession sqlSession = sqlSessionFactory.openSession();
        Map<String, Object> map=new HashMap<String, Object>();
        map.put("typeid", typeid);
        map.put("index", index);
        map.put("pagesize", size);
        List<Article> rst = sqlSession.selectList("articleNamespace.findArticlesByPage", map);
        return rst;
    }

    /**
     * 返回某一类文章的数量
     */
    public int findArticlesCount(int typeid){
        SqlSession sqlSession = sqlSessionFactory.openSession();
        int rst = sqlSession.selectOne("articleNamespace.findArticlesCount", typeid);
        return rst;
    }
}
