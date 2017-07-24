package com.zcc.MyWebsite.entity;

/**
 * @author chencheng.zhou
 * @version V1.0
 * @create 2017/07/22 20:05
 */
public class Article {
    private Integer id;
    private String title;
    private String content;
    private String posttime;
    private String originurl;
    private String sourcesite;

    public Integer getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public String getPosttime() {
        return posttime;
    }

    public String getOriginurl() {
        return originurl;
    }

    public String getSourcesite() {
        return sourcesite;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setPosttime(String posttime) {
        this.posttime = posttime;
    }

    public void setOriginurl(String originurl) {
        this.originurl = originurl;
    }

    public void setSourcesite(String sourcesite) {
        this.sourcesite = sourcesite;
    }
}
