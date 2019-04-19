package com.md1k.api.service.impl;

import com.md1k.api.dao.ICategoryDao;
import com.md1k.api.pojo.CategoryName;
import com.md1k.api.service.ICategoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * Author: shuangqiao
 * Date: 2019/4/19  12:28
 * Descript:
 */
@Service
public class CategoryServiceImpl implements ICategoryService {
    @Resource
    private ICategoryDao categoryDao;

    @Override
    public List<CategoryName> selectAll() {
        return categoryDao.selectAll();
    }
}
