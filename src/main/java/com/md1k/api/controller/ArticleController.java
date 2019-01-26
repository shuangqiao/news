package com.md1k.api.controller;

import com.github.pagehelper.PageInfo;
import com.md1k.api.pojo.Article;
import com.md1k.api.service.IArticleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

import static com.md1k.api.config.LoadListTask.*;


@Controller
@RequestMapping("/")
public class ArticleController {
	private final static String PAGE_HOST = "page_host";
	private final static String IMG_HOST = "img_host";

	@Resource
	private IArticleService iarticleService;

	@RequestMapping(value="/")
	public String getQing(Model model){
		model.addAttribute("WOMAN_LIST",WOMAN_LIST);
		model.addAttribute("MAN_LIST",MAN_LIST);
		model.addAttribute("SEX_LIST",SEX_LIST);
		model.addAttribute("HEALTH_LIST",HEALTH_LIST);
		model.addAttribute("COLD_LIST",COLD_LIST);
		model.addAttribute("Physiology_LIST",Physiology_LIST);
		model.addAttribute("WEEK_LIST",WEEK_LIST);
		model.addAttribute("YOUNG_LIST",YOUNG_LIST);
		model.addAttribute("HISTORY_LIST",HISTORY_LIST);
		return "/home";
	}

	//文章列表页
	@RequestMapping("/list/{categoryId}/{currentPage}")
	public String list(Model model, @PathVariable("categoryId") Integer categoryId,@PathVariable("currentPage") Integer currentPage){
		PageInfo<Article> pageInfo = iarticleService.getAllArticle(categoryId,currentPage);
		if (pageInfo.getList().size()>0){
			model.addAttribute("categoryName",pageInfo.getList().get(0).getCategoryName());
		}

		model.addAttribute("range",RANGE_LIST);
		model.addAttribute("pageInfo", pageInfo);
		return "/list";
	}

	//文章详情页
	@RequestMapping("/detail/{id}")
	public String essayDetail(Model model, @PathVariable("id") Integer id){
		Article article = iarticleService.findById(id);
		model.addAttribute("article", article);

		int categoryId = article.getCategoryId();
		//获得上一篇和下一篇
		Article lastInfo = iarticleService.getLastArticleById(id,categoryId);
		model.addAttribute("lastTitle",lastInfo);
		Article nextInfo = iarticleService.getNextArticleById(id,categoryId);
		model.addAttribute("nextTitle",nextInfo);
		return "/detail";
	}
}
