package com.carstore.service;

import com.carstore.entity.News;

import java.util.List;


/**
 * 新闻业务逻辑访问接口
 */
public interface NewsService {
	/**
	 * 根据新闻ID删除新闻
	 * @param id
	 * @throws Exception
	 */
	int delete(Long id) throws Exception;

	/**
	 * 更新新闻信息
	 * @param news
	 * @throws Exception
	 */
	int update(News news) throws Exception;
	/**
	 * 保存新闻信息
	 * @param news
	 * @throws Exception
	 */
	int save(News news) throws Exception;
	/**
	 * 查询所有的新闻信息
	 * @throws Exception
	 */
	List<News> getAllNews() throws Exception;

	/**
	 * 查询所有的新闻信息
	 * @throws Exception
	 */
	List<News> getAllNews(int type) throws Exception;

	/**
	 * 根据新闻ID查询新闻
	 * @param id
	 * @throws Exception
	 */
	News findById(long id) throws Exception;
	/**
	 * 查询新闻表的总数量
	 * @throws Exception
	 */
	long getNewsRowCount()  throws Exception ;

}
