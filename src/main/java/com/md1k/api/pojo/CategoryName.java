package com.md1k.api.pojo;

/**
 * Created by IntelliJ IDEA.
 * Author: shuangqiao
 * Date: 2019/4/19  12:24
 * Descript:
 */
public class CategoryName {
    private Integer id;
    private String name;
    private Integer categoryId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }
}
