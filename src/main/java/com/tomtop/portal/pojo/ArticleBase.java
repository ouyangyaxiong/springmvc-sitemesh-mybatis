package com.tomtop.portal.pojo;

import java.util.Date;

public class ArticleBase {
    private Integer id;

    private Integer categoryBaseId;

    private String author;

    private Date createDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCategoryBaseId() {
        return categoryBaseId;
    }

    public void setCategoryBaseId(Integer categoryBaseId) {
        this.categoryBaseId = categoryBaseId;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}