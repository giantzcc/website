package com.zcc.MyWebsite.entity;

/**
 * @author chencheng.zhou
 * @version V1.0
 * @create 2017/07/22 16:24
 */
public class ArticleType {
    private Integer id;
    private String typeName;

    public Integer getId() {
        return id;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }
}
