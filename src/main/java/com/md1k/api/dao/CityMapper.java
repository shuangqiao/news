package com.md1k.api.dao;


import com.md1k.api.pojo.City;

public interface CityMapper {

    City selectByPrimaryKey(Integer id);

}