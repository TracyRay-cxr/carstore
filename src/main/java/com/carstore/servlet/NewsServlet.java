package com.carstore.servlet;

import com.carstore.entity.News;
import com.carstore.entity.User;
import com.carstore.service.Impl.NewsServiceImpl;
import com.carstore.service.NewsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet(name = "NewsServlet", value = "/NewsServlet")

public class NewsServlet extends HttpServlet {

    NewsService newsService = new NewsServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        String op = request.getParameter("op");
        switch (op) {
            case "detail":
                detail(request, response);
                break;
            case "add":
                add(request,response);
                break;
            case"list":
                list(request,response);
                break;
            case"toUpdate":
                toUpdate(request,response);
                break;
            case"delete":
                delete(request,response);
                break;
            case"doUpdate":
                doUpdate(request,response);
                break;
        }
    }

    private void doUpdate(HttpServletRequest request, HttpServletResponse response) {
        try{
            SimpleDateFormat sf=new SimpleDateFormat("yyyy-mm-dd");
            News news=new News();
            news.setId(Long.valueOf(request.getParameter("newsid")));
            news.setTitle(request.getParameter("title"));
            news.setContent(request.getParameter("content"));
            news.setCreateTime(sf.parse(request.getParameter("createtime")));
            int r=newsService.update(news);
            response.sendRedirect("NewsServlet?op=list");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        try{
            String newsid=request.getParameter("newsid");
            int r=newsService.delete(Long.valueOf(newsid));
            response.sendRedirect("NewsServlet?op=list");
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }

    private void toUpdate(HttpServletRequest request, HttpServletResponse response) {
        try{
            String newsid=request.getParameter("newsid");
            News news=newsService.findById(Long.parseLong(newsid));
            request.setAttribute("NEWS",news);
            request.getRequestDispatcher("manage/news-modify.jsp").forward(request,response);
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }

    private void list(HttpServletRequest request, HttpServletResponse response) {
        /**
         * 查询最新公告
         */
        List<News> listNews1= null;
        List<News> listNews2=null;
        try {

            listNews1 = newsService.getAllNews(1);

            request.setAttribute("listNews1",listNews1);

            /**
             * 查询新闻动态公告
             */
           listNews2=newsService.getAllNews(2);

            request.setAttribute("listNews2",listNews2);

            request.getRequestDispatcher("manage/news.jsp").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private void add(HttpServletRequest request, HttpServletResponse response) {
        News news=new News();
        try{
            news.setContent( request.getParameter("content"));
            news.setTitle( request.getParameter("title"));
            news.setCreateTime(new Date());
            newsService.save(news);
            response.sendRedirect("NewsServlet?op=list");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    private void detail(HttpServletRequest request, HttpServletResponse response) {

        String newsid = request.getParameter("newsid");


        News news = null;
        try {
            news = newsService.findById(Long.parseLong(newsid));
            request.setAttribute("news", news);
            request.getRequestDispatcher("news-view.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
