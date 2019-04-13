package com.md1k.api.controller;

import com.alibaba.fastjson.JSONObject;
import com.md1k.api.config.LoadListTask;
import com.md1k.api.util.ApplicationInitListener;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by IntelliJ IDEA.
 * Author: shuangqiao
 * Date: 2019/4/10  16:52
 * Descript:
 */
@Controller
@RequestMapping(value = "/video")
public class VideoController {

    @RequestMapping(value = "/uuid/{uuid}/{name}",method = {RequestMethod.POST,RequestMethod.GET})
    public String video(Model model, @PathVariable("uuid") String uuid,@PathVariable("name") String name){
        if (StringUtils.isEmpty(uuid)){
            return "404";
        }else if (uuid.equals(LoadListTask.uuid)){
            model.addAttribute("name",name);
            model.addAttribute("uuid",uuid);
            return "/pc/video";
        }else {
            return "404";
        }
    }

    @RequestMapping(value = "/getnewuuid/lsq/{num}")
    @ResponseBody
    public String getUuid(@PathVariable("num") Integer num){
        Date date = new Date();
        if (num == date.getHours()) {
            return LoadListTask.uuid;
        }else {
            return "error";
        }
    }

    @RequestMapping(value = "/list/{uuid}",method = {RequestMethod.POST,RequestMethod.GET})
    @ResponseBody
    public String getVideoList( @PathVariable("uuid") String uuid){
        if (!uuid.equals(LoadListTask.uuid)){
            return "404";
        }
        String url = "/www/server/apache-tomcat-default/webapps/video"+uuid+"/video_list.txt";
        List<String> nameList = new ArrayList<>();
        File file = new File(url);
        try {
            InputStreamReader inputReader = new InputStreamReader(new FileInputStream(file),"UTF-8");
            BufferedReader bf = new BufferedReader(inputReader);
            // 按行读取字符串
            String str;
            while ((str = bf.readLine()) != null) {
                nameList.add(str);
            }
            bf.close();
            inputReader.close();
        } catch (IOException e) {
            System.out.println("video_list.txt============" + e.getMessage());
        }
        return JSONObject.toJSONString(nameList);
    }
}
