package com.carstore.dao.Impl;

import com.carstore.dao.NewsDAO;
import com.carstore.dao.dateBase;
import com.carstore.entity.News;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class NewsDAOImp implements NewsDAO {
    dateBase db=new dateBase();
    @Override
    public int delete(Long id) throws Exception {
        int r=-1;
        try {
            String sql = " DELETE FROM carstore_news where cn_id=?";

            r=db.executeUpdate(sql,id);

        }catch (Exception ex)
        {
            throw ex;
        }
        return  r;
    }

    @Override
    public int update(News news) throws Exception {
        int r=-1;
        try {
            String sql = " UPDATE carstore_news set cn_title=?,cn_content=?,"
                    + "cn_create_time=? where cn_id=?";

            r=db.executeUpdate(sql,news.getTitle(),news.getContent(),news.getCreateTime(),news.getId());

        }catch (Exception ex)
        {
            throw ex;
        }
        return  r;
    }

    @Override
    public List<News> getAllNews(int type) throws Exception {
        List<News> list=new ArrayList<>();

        try
        {
            String sql="select * from carstore_news where cn_type=? order by cn_create_time desc limit 0,7 ";

            ResultSet rs=db.executeQuery(sql,type);

            while(rs.next())
            {
                News news = new News();
                news.setId(rs.getLong("cn_id"));
                news.setTitle(rs.getString("cn_title"));
                news.setContent(rs.getString("cn_content"));
                news.setCreateTime(rs.getDate("cn_create_time"));
                list.add(news);
            }
        }catch (Exception ex)
        {
            throw ex;
        }
        return  list;
    }

    @Override
    public int save(News news) throws Exception {
        int r=-1;
        try {
            String sql = " INSERT INTO carstore_news(cn_title,cn_content,"
                    + "cn_create_time,cn_type) values(?,?,?,1)";

            r=db.executeUpdate(sql,news.getTitle(),news.getContent(),news.getCreateTime());

        }catch (Exception ex)
        {
            throw ex;
        }
        return  r;
    }

    @Override
    public List<News> getAllNews() throws Exception {
        List<News> list=new ArrayList<>();

        try
        {
            String sql="select * from carstore_news";
            ResultSet rs=db.executeQuery(sql);

            while(rs.next())
            {
                News news = new News();
                news.setId(rs.getLong("cn_id"));
                news.setTitle(rs.getString("cn_title"));
                news.setContent(rs.getString("cn_content"));
                news.setCreateTime(rs.getDate("cn_create_time"));
                list.add(news);
            }
        }catch (Exception ex)
        {
            throw ex;
        }
        return  list;
    }

    @Override
    public News findById(long id) throws Exception {
        News news = null;
        try
        {
            String sql="select * from carstore_news where cn_id=? ";
            ResultSet rs=db.executeQuery(sql,id);
            if(rs.next())
            {
                news=new News();
                news.setId(rs.getLong("cn_id"));
                news.setTitle(rs.getString("cn_title"));
                news.setContent(rs.getString("cn_content"));
                news.setCreateTime(rs.getDate("c" +
                        "n_create_time"));

            }
        }catch (Exception ex)
        {
            throw ex;
        }
        return  news;
    }

    @Override
    public long getNewsRowCount() throws Exception {
        long lenth=0;
        try{
            String sql="select count(*) from carstore_news";
            ResultSet res=db.executeQuery(sql);
            lenth=res.getLong(1);
        }catch (Exception ex){
            throw ex;
        }
        return lenth;
    }
}
