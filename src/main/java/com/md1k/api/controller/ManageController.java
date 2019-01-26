package com.md1k.api.controller;

import com.md1k.api.pojo.Article;
import com.md1k.api.service.IArticleService;
import com.md1k.api.util.Constants;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping("/manage")
public class ManageController {
    private final static String PAGE_HOST = "page_host";
    @Resource
    private Environment environment;
    @Resource
    private IArticleService articleService;

    /**
     * 响应后台写文章表单的请求.
     * @return
     */
    @RequestMapping("list")
    public String manage(Model model){
        String getPageHost = environment.getProperty(PAGE_HOST);
        model.addAttribute("getPageHost",getPageHost);
        return "/manageLogin";
    }

    @RequestMapping(value = "/writeAdd", method = RequestMethod.POST)
    @ResponseBody
    public String writeAdd(Article article){
        articleService.insertArticle(article);
        return "redirect:/list";
    }

    /**
     * 响应后台写文章表单的请求.
     * @return
     */
    @RequestMapping("/write")
    public String write(Model model){
        String getPageHost = environment.getProperty(PAGE_HOST);
        model.addAttribute("getPageHost",getPageHost);
        return "/write";
    }

    @RequestMapping(value = "/checkPasswd", method = RequestMethod.POST)
    @ResponseBody
    public String checkPasswd(String username,String password)
    {
        if(!Constants.MANAGE_USERNAME.equals(username))
        {
            return "username error";
        }
        else if(!Constants.MANAGE_PASSWD.equals(password))
        {
            return "password error";
        }

        return "redirect:/manage/list";
    }

    @RequestMapping(value = "/del", method = RequestMethod.POST)
    @ResponseBody
    public String delById(Integer id){
        articleService.changeStatusById('0',id);
        return "1";
    }

    @RequestMapping(value = "/resolve", method = RequestMethod.POST)
    @ResponseBody
    public String resolve(Integer id){
        articleService.changeStatusById('1',id);
        return "1";
    }
}
