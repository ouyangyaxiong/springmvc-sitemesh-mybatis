package com.tomtop.portal.pojo;

public class CategoryTranslation {
    private Integer id;

    private Integer langId;

    private String langLabel;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getLangId() {
        return langId;
    }

    public void setLangId(Integer langId) {
        this.langId = langId;
    }

    public String getLangLabel() {
        return langLabel;
    }

    public void setLangLabel(String langLabel) {
        this.langLabel = langLabel == null ? null : langLabel.trim();
    }
}