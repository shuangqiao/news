package com.md1k.api.controller;

import com.md1k.api.pojo.City;
import com.md1k.api.service.CityService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/city")
public class CitiesController {

    @Resource
    private CityService cityService;
    /**
     * 获取城市列表
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model){
        City city = cityService.selectByPrimaryKey(1);
        model.addAttribute("city",city);
       return "/single";
    }

}
