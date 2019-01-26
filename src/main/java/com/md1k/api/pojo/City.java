package com.md1k.api.pojo;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Created by IntelliJ IDEA.
 * Author: shuangqiao
 * Date: 2018/12/22  16:17
 * Descript:
 */
public class City {
    private Integer id;
    private Object position;
    private BigDecimal longitude;
    private BigDecimal latitude;
    private String name;
    private String name_spelling;
    private Date sys_created;
    private Date sys_modified;

    public City() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Object getPosition() {
        return position;
    }

    public void setPosition(Object position) {
        this.position = position;
    }

    public BigDecimal getLongitude() {
        return longitude;
    }

    public void setLongitude(BigDecimal longitude) {
        this.longitude = longitude;
    }

    public BigDecimal getLatitude() {
        return latitude;
    }

    public void setLatitude(BigDecimal latitude) {
        this.latitude = latitude;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName_spelling() {
        return name_spelling;
    }

    public void setName_spelling(String name_spelling) {
        this.name_spelling = name_spelling;
    }

    public Date getSys_created() {
        return sys_created;
    }

    public void setSys_created(Date sys_created) {
        this.sys_created = sys_created;
    }

    public Date getSys_modified() {
        return sys_modified;
    }

    public void setSys_modified(Date sys_modified) {
        this.sys_modified = sys_modified;
    }
}
