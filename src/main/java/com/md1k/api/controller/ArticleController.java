package com.md1k.api.controller;

import com.github.pagehelper.PageInfo;
import com.md1k.api.pojo.Article;
import com.md1k.api.service.IArticleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import java.util.ArrayList;
import java.util.List;

import static com.md1k.api.config.LoadListTask.*;


@Controller
@RequestMapping("/")
public class ArticleController {
	private final static String PAGE_HOST = "page_host";
	private final static String IMG_HOST = "img_host";

	@Resource
	private IArticleService iarticleService;

	@RequestMapping(value="/",method = {RequestMethod.POST,RequestMethod.GET})
	public String getQing(Model model, HttpServletRequest request){
		model.addAttribute("RANGE_LIST",RANGE_LIST);
		model.addAttribute("KEY_WORDS",KEY_WORDS);
		model.addAttribute("DAILY_RECOMMEND",DAILY_RECOMMEND);
		if (request.getHeader("User-Agent").toLowerCase().contains("windows")) {
            model.addAttribute("RAND_LIST",RAND_LIST);
			return "/pc/home";
		}else {
		    List<Article> RANDS = new ArrayList<>();
		    for (int i=0;i<3;i++){
		        RANDS.add(RAND_LIST.get(i));
            }
            model.addAttribute("RAND_LIST",RANDS);
			return "/app/home";
		}
		//return "404";
	}

	//文章列表页
	@RequestMapping(value = "/list/{categoryId}/{currentPage}.html",method = {RequestMethod.POST,RequestMethod.GET})
	public String list(Model model, @PathVariable("categoryId") Integer categoryId,@PathVariable("currentPage") Integer currentPage, HttpServletRequest request){
		PageInfo<Article> pageInfo = iarticleService.getAllArticle(categoryId,currentPage);
		if (pageInfo.getList().size()>0){
			model.addAttribute("categoryName",pageInfo.getList().get(0).getCategoryName());
		}
		model.addAttribute("RANGE_LIST",RANGE_LIST);
		model.addAttribute("pageInfo", pageInfo);
		if (request.getHeader("User-Agent").toLowerCase().contains("windows")) {
			return "/pc/list";
		}else {
			return "/app/list";
		}
		//return "404";
	}

	//文章详情页
	@RequestMapping(value = "/detail/{id}.html",method = {RequestMethod.POST,RequestMethod.GET})
	public String essayDetail(Model model, @PathVariable("id") Integer id,HttpServletRequest request){
		try {
			Article article = iarticleService.findById(id);
			model.addAttribute("article", article);

			int categoryId = article.getCategoryId();
			//获得上一篇和下一篇
			Article lastInfo = iarticleService.getLastArticleById(id, categoryId);
			model.addAttribute("lastTitle", lastInfo);
			Article nextInfo = iarticleService.getNextArticleById(id, categoryId);
			model.addAttribute("nextTitle", nextInfo);
			model.addAttribute("RANGE_LIST",RANGE_LIST);
			model.addAttribute("RAND_LIST",RAND_LIST);
			model.addAttribute("KEY_WORDS",KEY_WORDS);
			if (request.getHeader("User-Agent").toLowerCase().contains("windows")) {
				return "/pc/detail";
			} else {
				return "/app/detail";
			}
			//return "404";
		}catch (Exception e){
			e.printStackTrace();
			return "404";
		}
	}
}
