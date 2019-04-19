package com.md1k.api.dao;

import com.md1k.api.pojo.CategoryName;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * Author: shuangqiao
 * Date: 2019/4/19  12:25
 * Descript:
 */
public interface ICategoryDao {
    List<CategoryName> selectAll();
}
