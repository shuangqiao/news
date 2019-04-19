package com.md1k.api.service;

import com.md1k.api.pojo.CategoryName;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * Author: shuangqiao
 * Date: 2019/4/19  12:28
 * Descript:
 */
public interface ICategoryService {
    List<CategoryName> selectAll();
}
