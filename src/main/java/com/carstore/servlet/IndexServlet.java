package com.carstore.servlet;

import com.carstore.entity.News;
import com.carstore.entity.Product;
import com.carstore.service.Impl.NewsServiceImpl;
import com.carstore.service.Impl.ProductServiceImpl;
import com.carstore.service.NewsService;
import com.carstore.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "IndexServlet", value = "/IndexServlet")
public class IndexServlet extends HttpServlet {
    ProductService productService=new ProductServiceImpl();

    NewsService newsService=new NewsServiceImpl();
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
        String op=request.getParameter("op");
        try {

            if(op!=null&&op.equals("list")){
                List<Product> listProduct1=productService.getProducts2();
                request.setAttribute("listProduct1",listProduct1);
                request.getRequestDispatcher("product-list.jsp").forward(request,response);
            }else {
                /**
                 * 查询最近上新
                 */
                List<Product> listProduct1 = productService.getProducts2();
                request.setAttribute("listProduct1", listProduct1);

                /**
                 * 查询最新公告
                 */
                List<News> listNews1 = newsService.getAllNews(1);

                request.setAttribute("listNews1", listNews1);

                /**
                 * 查询新闻动态公告
                 */
                List<News> listNews2 = newsService.getAllNews(2);

                request.setAttribute("listNews2", listNews2);

                request.getRequestDispatcher("main.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
