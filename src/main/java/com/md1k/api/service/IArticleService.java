package com.md1k.api.service;

import com.github.pagehelper.PageInfo;
import com.md1k.api.pojo.Article;

import java.util.List;

public interface IArticleService {
	/**
	 * 根据文章id查找文章详情
	 * @param id
	 * @return
	 */
	 Article findById(String id);
	
	/**
	 * 根据创建时间获取最新的文章
	 * @return
	 */
	 List<Article> getNewArticle();
	
	/**
	 * 根据分类id获取文章列表
	 * @param categoryId
	 * @return
	 */
	 PageInfo<Article> selectCategory(Integer categoryId, Integer currentPage);
	
	/**
	 * 根据id找到上一篇文章
	 * @param id
	 * @return
	 */
	 Article getLastArticleById(Integer id, Integer categoryId);

	/**
	 * 根据id找到下一篇文章
	 * @param id
	 * @return
	 */
	Article getNextArticleById(Integer id, Integer categoryId);

	/**
	 * 根据点击排行获取文章列表
	 * @return
	 */
	 List<Article> getArticleByHits();

	/**
	 * 写文章存入数据库
	 * @param article
	 * @return
	 */
	 void insertArticle(Article article);

	/**
	 * 修改文章
	 * @param article
	 * @return
	 */
	 void updateArticle(Article article);

	/**
	 * 删除文章,并不是真的删除，只是状态设置为0，不显示
	 * 同样，还原文章也是
	 * @param id
	 * @return
	 */
	 void changeStatusById(char status, Integer id);
	/**
	 * 查找所有文章
	 * @return
	 */
	 PageInfo<Article> findArticleList(Byte status, Integer currentPage);

	 PageInfo<Article> find(Article article, Integer currentPage);

	List<Article> searchList(char status, String searchInput, Integer currentPage);
}
