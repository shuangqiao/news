package com.md1k.api.dao;

import com.md1k.api.pojo.KeyWord;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * Author: shuangqiao
 * Date: 2019/3/23  15:25
 * Descript:关键字接口
 */
public interface IKeyWordsDao {

    /**
     * 获取关键字列表
     * @return
     */
    List<KeyWord> getList();

    int insert(KeyWord keyWord);
}
