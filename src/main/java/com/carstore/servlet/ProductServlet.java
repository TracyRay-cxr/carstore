package com.carstore.servlet;

import com.carstore.entity.Product;
import com.carstore.service.Impl.ProductServiceImpl;
import com.carstore.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/ProductServlet")
@MultipartConfig
public class ProductServlet extends HttpServlet {

    ProductService productService=new ProductServiceImpl();



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
        switch (op)
        {
            case "list":
                list(request,response);
                break;
            case "save":
                save(request,response);
                break;
            case "toUpdate":
                toUpdate(request,response);
                break;
            case "doUpdate":
                doUpdate(request,response);
                break;
            case "delete":
                delete(request,response);
                break;
            case "detail":
                detail(request,response);
                break;
        }
    }

    /**
     * 货品详情
     * @param request
     * @param response
     */
    private void detail(HttpServletRequest request, HttpServletResponse response) {

        String productid=request.getParameter("productid");
        try {
            Product product=productService.findById(productid);
            request.setAttribute("product",product);
            request.getRequestDispatcher("product-view.jsp").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 处理更新货品信息
     * @param request
     * @param response
     */
    private void doUpdate(HttpServletRequest request, HttpServletResponse response) {

        Product product=new Product();
        product.setName(request.getParameter("epname"));
        product.setCategoryId(Long.parseLong(request.getParameter("epcid")));
        product.setFileName(request.getParameter("filename"));
        product.setPrice(Float.parseFloat(request.getParameter("price")));
        product.setStock(Long.parseLong(request.getParameter("stock")));
        product.setDescription(request.getParameter("description"));
        product.setCategoryId(1L);
        product.setId(Long.parseLong(request.getParameter("productid")));

        try {
            int r=productService.update(product);
            request.getRequestDispatcher("ProductServlet?op=list").forward(request,response);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    /**
     * 请求更新货品
     * @param request
     * @param response
     */
    private void toUpdate(HttpServletRequest request, HttpServletResponse response) {
        String productid=request.getParameter("productid");
        try {
            Product product=productService.findById(productid);
            request.setAttribute("product",product);
            request.getRequestDispatcher("manage/product-modify.jsp").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 删除货品信息
     * @param request
     * @param response
     */
    private void delete(HttpServletRequest request, HttpServletResponse response) {

        String productid=request.getParameter("productid");

        try {
            int r=productService.delete(productid);
            request.getRequestDispatcher("ProductServlet?op=list").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    /**
     * 保存货品信息
     * @param request
     * @param response
     */
    private void save(HttpServletRequest request, HttpServletResponse response) {
        try {
            // 存储路径
            String savePath = "F:\\dev\\JavaWEB\\img";
            // 上传单个文件
            // Servlet3.0将multipart/form-data的POST请求封装成Part，通过Part对上传的文件进行操作。
            Part part = request.getPart("filename");
            // 通过表单file控件(<input type="file" name="file">)的名字直接获取Part对象
            // Servlet3没有提供直接获取文件名的方法,需要从请求头中解析出来
            // 获取请求头，请求头的格式：form-data; name="file"; filename="snmp4j--api.zip"
            String header = part.getHeader("content-disposition");
            // 获取文件名
            String fileName = getFileName(header);
            // 把文件写到指定路径
            part.write(savePath + File.separator + fileName);




            Product product=new Product();
            product.setName(request.getParameter("cpname"));
            product.setCategoryId(Long.parseLong(request.getParameter("cpcid")));
            product.setFileName(fileName);
            product.setPrice(Float.parseFloat(request.getParameter("price")));
            product.setStock(Long.parseLong(request.getParameter("stock")));
            product.setDescription(request.getParameter("description"));
            product.setCategoryId(1L);

            int r=productService.save(product);


            request.getRequestDispatcher("ProductServlet?op=list").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }



    }

    private void list(HttpServletRequest request, HttpServletResponse response) {

        try {
            List<Product> list=productService.getProducts();
            request.setAttribute("list",list);
            request.getRequestDispatcher("manage/product.jsp").forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public String getFileName(String header) {
        /**
         * String[] tempArr1 =
         * header.split(";");代码执行完之后，在不同的浏览器下，tempArr1数组里面的内容稍有区别
         * 火狐或者google浏览器下：
         * tempArr1={form-data,name="file",filename="snmp4j--api.zip"}
         * IE浏览器下：tempArr1={form-data,name="file",filename="E:\snmp4j--api.zip"}
         */
        String[] tempArr1 = header.split(";");
        /**
         * 火狐或者google浏览器下：tempArr2={filename,"snmp4j--api.zip"}
         * IE浏览器下：tempArr2={filename,"E:\snmp4j--api.zip"}
         */
        String[] tempArr2 = tempArr1[2].split("=");
        // 获取文件名，兼容各种浏览器的写法
        String fileName = tempArr2[1].substring(
                tempArr2[1].lastIndexOf("\\") + 1).replaceAll("\"", "");
        return fileName;
    }
}
