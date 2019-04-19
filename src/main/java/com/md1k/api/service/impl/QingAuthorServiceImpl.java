package com.md1k.api.service.impl;

import com.md1k.api.dao.IQingAuthorDao;
import com.md1k.api.pojo.QingAuthor;
import com.md1k.api.service.IQingAuthorService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * Author: shuangqiao
 * Date: 2019/4/19  11:59
 * Descript:
 */
@Service
public class QingAuthorServiceImpl implements IQingAuthorService {

    @Resource
    private IQingAuthorDao qingAuthorDao;

    @Override
    public List<QingAuthor> selectAll() {
        return qingAuthorDao.selectAll();
    }
}
