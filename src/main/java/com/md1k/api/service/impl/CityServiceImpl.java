package com.md1k.api.service.impl;

import com.md1k.api.dao.CityMapper;
import com.md1k.api.pojo.City;
import com.md1k.api.service.CityService;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by A8 on 2017-10-17.
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class CityServiceImpl implements CityService {

  @Resource
  private CityMapper cityMapper;

  @Override
  public City selectByPrimaryKey(Integer id) {
    return cityMapper.selectByPrimaryKey(id);
  }
}
