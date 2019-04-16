package com.md1k.api.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.md1k.api.config.LoadListTask;
import com.md1k.api.dao.IArticleDao;
import com.md1k.api.pojo.Article;
import com.md1k.api.service.IArticleService;
import com.md1k.api.util.Constants;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import com.md1k.api.config.AsyncTask;

@Service
public class ArticleService implements IArticleService {

	@Resource
	private IArticleDao articleDao;
	@Resource
	private AsyncTask asyncTask;

	@Override
	public Article findById(int id){
		Article article = articleDao.findById(id);
		AsyncTask.List.offer(article);
		asyncTask.taskService();
		return article;
	}
	
	@Override
	public List<Article> getNewArticle() {
		List<Article> list = articleDao.getNewArticle();
		return list;
	}

	@Override
	public PageInfo<Article> getAllArticle(Integer categoryId, Integer currentPage) {
		currentPage = currentPage == null ? 1 : currentPage;
		PageHelper.startPage(currentPage, 10);
		List<Article> list = articleDao.getAllArticle(categoryId);
		PageInfo<Article> pageInfo = new PageInfo<>(list);
		return pageInfo;
	}

	@Override
	public Article getLastArticleById(Integer id, Integer categoryId) {
		return articleDao.getLastArticleById(id,categoryId);
	}

	@Override
	public Article getNextArticleById(Integer id, Integer categoryId) {
		return articleDao.getNextArticleById(id,categoryId);
	}

	/*
         * 根据点击排行获取文章列表
         */
	@Override
	public List<Article> getArticleByHits() {
		return articleDao.getArticleByHits();
	}

	@Override
	public void insertArticle(Article article) {
		 articleDao.insertArticle(article);
		 try {
			 Thread.sleep(1000);
		 }catch (Exception e){
		 	e.printStackTrace();
		 }
		 reload(article);
	}

	@Override
	public void updateArticle(Article article) {
		articleDao.updateArticle(article);
		try {
			Thread.sleep(1000);
		}catch (Exception e){
			e.printStackTrace();
		}
		reload(article);
	}

	@Override
	public void changeStatusById(char status,Integer id) {
		articleDao.changeStatusById(status,id);
	}

	@Override
	public PageInfo<Article> findArticleList(char status, Integer currentPage) {
		currentPage = currentPage == null ? 1 : currentPage;
		PageHelper.startPage(currentPage, 10);
		List<Article> list = articleDao.findArticleList(status);
		PageInfo<Article> pageInfo = new PageInfo<Article>(list);
		return pageInfo;
	}

	@Override
	public PageInfo<Article> find(Article article, Integer currentPage) {
		currentPage = currentPage == null ? 1 : currentPage;
		PageHelper.startPage(currentPage, 10);
		List<Article> list = articleDao.find(article);
		PageInfo<Article> pageInfo = new PageInfo<>(list);
		return pageInfo;
	}

	@Override
	public List<Article> searchList(char status,String searchInput, Integer currentPage) {
		/*currentPage = currentPage == null ? 1 : currentPage;
		PageHelper.startPage(currentPage, 10);*/
		List<Article> list = articleDao.findByTitle(searchInput);
		if(list.size()>0){
			/*System.out.println(list.toString());
			PageInfo<Article> pageInfo = new PageInfo<>(list);*/
			for(int i=0;i<list.size();i++){
				if(list.get(i).getTitle().contains(searchInput)){
					list.get(i).setTitle(list.get(i).getTitle().replaceAll(searchInput,"\\<font color='red'\\>"+searchInput+"</font>"));
				}
			}
			return list;
		}else{
			List<Article> list2 = articleDao.findByWords(searchInput);
			if(list2.size()>0){
				for(int i=0;i<list2.size();i++){
					if(list2.get(i).getWords().contains(searchInput)){
						int flag1 = list2.get(i).getWords().indexOf(searchInput);
						if(flag1 > 2){
							flag1 = flag1 - 2;
						}
						String w = list2.get(i).getWords().substring(flag1);
						list2.get(i).setWords("..."+w.replaceAll(searchInput,"\\<font color='red'\\>"+searchInput+"</font>"));
					}
				}
				return list2;
			}else{
				return new ArrayList<Article>();
			}
		}
	}

	private void reload(Article article){
		if (article.getCategoryId().equals(Constants.STORY)){
			LoadListTask.WOMAN_LIST = articleDao.findByCategoryId(Constants.STORY);
			for (Article a : LoadListTask.WOMAN_LIST){
				a.setWords(article.getWords().substring(0,80)+"...");
			}
		}else if (article.getCategoryId().equals(Constants.RELATION)){
			LoadListTask.SEX_LIST = articleDao.findByCategoryId(Constants.RELATION);
			for (Article a :  LoadListTask.SEX_LIST){
				a.setWords(article.getWords().substring(0,80)+"...");
			}
		}else if (article.getCategoryId().equals(Constants.HEALTH)){
			LoadListTask.HEALTH_LIST = articleDao.findByCategoryId(Constants.HEALTH);
			for (Article a :  LoadListTask.HEALTH_LIST){
				a.setWords(article.getWords().substring(0,80)+"...");
			}
		}else if (article.getCategoryId().equals(Constants.COLD)){
			LoadListTask.COLD_LIST = articleDao.findByCategoryId(Constants.COLD);
			for (Article a :  LoadListTask.COLD_LIST){
				a.setWords(article.getWords().substring(0,80)+"...");
			}
		}else if (article.getCategoryId().equals(Constants.YOUNG)){
			LoadListTask.YOUNG_LIST = articleDao.findByCategoryId(Constants.YOUNG);
			for (Article a :  LoadListTask.YOUNG_LIST){
				a.setWords(article.getWords().substring(0,80)+"...");
			}
		}else if (article.getCategoryId().equals(Constants.HISTORY)){
			LoadListTask.HISTORY_LIST = articleDao.findByCategoryId(Constants.HISTORY);
			for (Article a :  LoadListTask.HISTORY_LIST){
				a.setWords(article.getWords().substring(0,80)+"...");
			}
		}
	}
}
