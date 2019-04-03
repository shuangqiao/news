package com.md1k.api.controller;

import com.github.pagehelper.PageInfo;
import com.md1k.api.pojo.Article;
import com.md1k.api.service.IArticleService;
import com.md1k.api.util.BigDecimalUtil;
import com.md1k.api.util.Constants;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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
    @RequestMapping("/")
    public String manage(Model model){
        String getPageHost = environment.getProperty(PAGE_HOST);
        model.addAttribute("getPageHost",getPageHost);
        return "/manageLogin";
    }
    @RequestMapping("/index")
    public String index(Model model){
        String getPageHost = environment.getProperty(PAGE_HOST);
        model.addAttribute("getPageHost",getPageHost);
        return "/manage";
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
    @RequestMapping(value = "/write",method = {RequestMethod.POST,RequestMethod.GET})
    public String write(Model model){
        String getPageHost = environment.getProperty(PAGE_HOST);
        model.addAttribute("getPageHost",getPageHost);
        return "/write";
    }

    @RequestMapping(value = "/checkPasswd", method = RequestMethod.POST)
    @ResponseBody
    public Object checkPasswd(String username,String password)
    {
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHH");
        String dateStr = sdf.format(date);
        String d =  dateStr.substring(dateStr.length()-2);
        if(!Constants.MANAGE_PASSWD.equals(password)) {
            String pwd = dateStr + BigDecimalUtil.mul(new BigDecimal(d), new BigDecimal(2)).intValue()
                    + "lsq" + (Integer.valueOf(d) + 1);
            if (!password.equals(pwd)) {
                return "password error";
            }
        }else if(!(Constants.MANAGE_USERNAME+Integer.valueOf(d)+1).equals(username)) {
            return "username error";
        }

        return 1;
    }

    @RequestMapping(value = "/del", method = {RequestMethod.POST,RequestMethod.GET})
    @ResponseBody
    public String delById(Integer id){
        articleService.changeStatusById('0',id);
        return "1";
    }

    @RequestMapping(value = "/deleteList/{currentPage}", method = {RequestMethod.POST,RequestMethod.GET})
    public String deleteList(Model model,@PathVariable("currentPage") Integer currentPage){
        PageInfo<Article> list = articleService.findArticleList((char)0,currentPage);
        model.addAttribute("pageInfo",list);
        String getPageHost = environment.getProperty(PAGE_HOST);
        model.addAttribute("getPageHost",getPageHost);
        return "/deleteList";
    }

    @RequestMapping(value = "/articleList/{currentPage}", method = {RequestMethod.POST,RequestMethod.GET})
    public String articleList(Model model,@PathVariable("currentPage") Integer currentPage){
        PageInfo<Article> list = articleService.findArticleList((char)0,currentPage);
        model.addAttribute("pageInfo",list);
        String getPageHost = environment.getProperty(PAGE_HOST);
        model.addAttribute("getPageHost",getPageHost);
        return "/articleList";
    }

    @RequestMapping(value = "/resolve", method = {RequestMethod.POST,RequestMethod.GET})
    @ResponseBody
    public String resolve(Integer id){
        articleService.changeStatusById('1',id);
        return "1";
    }
}
