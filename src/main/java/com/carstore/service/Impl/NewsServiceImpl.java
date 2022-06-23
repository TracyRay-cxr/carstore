package com.carstore.service.Impl;

import com.carstore.dao.NewsDAO;
import com.carstore.dao.Impl.NewsDAOImp;
import com.carstore.entity.News;
import com.carstore.service.NewsService;

import java.util.List;

public class NewsServiceImpl implements NewsService {

    NewsDAO newsDAO=new NewsDAOImp();


    @Override
    public int delete(Long id) throws Exception {
        return newsDAO.delete(id);
    }

    @Override
    public int update(News news) throws Exception {
        return newsDAO.update(news);
    }

    @Override
    public int save(News news) throws Exception {
        return newsDAO.save(news);
    }

    @Override
    public List<News> getAllNews() throws Exception {
        return null;
    }

    @Override
    public List<News> getAllNews(int type) throws Exception {
        return  newsDAO.getAllNews(type);
    }

    @Override
    public News findById(long id) throws Exception {
        return newsDAO.findById(id);
    }

    @Override
    public long getNewsRowCount() throws Exception {
        return 0;
    }
}
