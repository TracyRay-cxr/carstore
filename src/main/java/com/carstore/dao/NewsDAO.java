package com.carstore.dao;

import com.carstore.entity.News;

import java.util.List;

/**
 * 新闻数据访问接口
 */
public interface NewsDAO {
    /**
     * 根据新闻ID删除新闻
     * @param id
     * @return
     * @throws Exception
     */
    int delete(Long id)throws Exception;

    /**
     * 更新新闻信息
     * @param news
     * @return
     * @throws Exception
     */
    int update(News news)throws Exception;

    /**
     * 查询所有的新闻信息
     * @throws Exception
     */
    List<News> getAllNews(int type) throws Exception;

    /**
     * 保存新闻信息
     * @param news
     * @return
     * @throws Exception
     */
    int save(News news)throws Exception;

    /**
     * 查询所有新闻信息
     * @return
     * @throws Exception
     */
    List<News> getAllNews()throws Exception;

    /**
     *根据ID查询新闻信息
     * @param id
     * @return
     * @throws Exception
     */
    News findById(long id)throws Exception;

    /**
     * 查询新闻表的总数量
     * @return
     * @throws Exception
     */
    long getNewsRowCount()throws Exception;

}
