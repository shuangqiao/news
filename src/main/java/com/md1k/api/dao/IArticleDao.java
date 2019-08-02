package com.md1k.api.dao;

import com.md1k.api.pojo.Article;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IArticleDao {

	/**
	 * 根据文章uuid查找文章详情
	 * @param uuid
	 * @return
	 */
	Article findById(@Param("uuid") String uuid);

	/**
	 * 根据创建时间获取最新的文章
	 * @return
	 */
	public List<Article> getNewArticle();

	/**
	 * 根据分类id获取文章列表
	 * @param categoryId
	 * @return
	 */
	List<Article> getAllArticle(@Param("categoryId") Integer categoryId);

	/**
	 * 根据id找到上一篇文章
	 * @param id
	 * @return
	 */
	Article getLastArticleById(@Param("id") int id, @Param("categoryId") Integer categoryId);

	/**
	 * 根据id找到下一篇文章
	 * @param id
	 * @return
	 */
	Article getNextArticleById(@Param("id") int id, @Param("categoryId") Integer categoryId);

	/**
	 * 根据点击排行获取文章列表
	 * @return
	 */
	public List<Article> getArticleByHits();

	/**
	 * 更新浏览次数
	 * @param id
	 * @param hits
	 */
	void updateHitsById(@Param("id") Integer id, @Param("hits") Integer hits);

	/**
	 * 写文章存入数据库
	 * @param article
	 * @return
	 */
	public void insertArticle(Article article);

	/**
	 * 修改文章
	 * @param article
	 * @return
	 */
	public void updateArticle(Article article);

	/**
	 * 删除文章,还原文章
	 * @param id
	 * @return
	 */
	void changeStatusById(@Param("status") char status, @Param("id") Integer id);

	/**
	 * 查找所有文章
	 * @return
     */
	List<Article> findArticleList(Byte status);

	List<Article> findByTitle(@Param("title") String title);

	List<Article> findByWords(@Param("words") String words);

	List<Article> find(Article article);

	List<Article> findByCategoryId(@Param("categoryId") Integer categoryId);

	/**
	 * 随机列表
	 * @return
	 */
	List<Article> getArticleByRand();

	/**
	 * 每日推荐（访问量最小的）
	 * @return
	 */
	Article dailyRecommend();

}
