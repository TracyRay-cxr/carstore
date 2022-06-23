package com.carstore.servlet;

import com.carstore.entity.User;
import com.carstore.service.Impl.UserServiceImpl;
import com.carstore.service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * 用户模块servlet
 */
@WebServlet(name = "UserServlet", value = "/UserServlet")
public class UserServlet extends HttpServlet {
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
        switch (op){
            case "login":
                login(request,response);
                break;
            case "reg":
                regiest(request,response);
                break;
            case"logout":
                logout(request,response);
                break;
            case"managerShowList":
                managerShowList(request,response);
                break;
            case"save":
                save(request,response);
                break;
            case"toUpdate":
                toUpdate(request,response);
                break;
            case"doUpdate":
                doUpdate(request,response);
                break;
            case"delete":
                delete(request,response);
                break;
            case"checkloginname":
                checkloginname(request,response);
                break;
        }

    }

    UserService userService=new UserServiceImpl();

    /**
     * 检查登录用户名
     * @param request
     * @param response
     */
    public void checkloginname(HttpServletRequest request,HttpServletResponse response){
        response.setContentType("text/html;charset=utf-8");
        try{
            String content=null;
            String loginname=request.getParameter("loginname");
            User user=userService.findByLoginname(loginname);
            if(user==null){
                content="{\"state\":\"OK\"}";
            }else
            {
                content="{\"state\":\"ERROR\"}";
            }
            response.getWriter().write(content);
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }

    /**
     * 用户登录
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void login(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        String name=request.getParameter("username");
        String password=request.getParameter("password");
        try{
            User user=userService.login(name,password);
            if (user==null){

                request.setAttribute("ERROR","用户名或密码错误");
                request.getRequestDispatcher("login.jsp").forward(request,response);
            }
            else{
                request.getSession().setAttribute("USERS",user);
                response.sendRedirect("index.jsp");

            }
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }

    /**
     * 注销
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void logout(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        request.getSession().removeAttribute("USERS");
        response.sendRedirect("index.jsp");
    }

    /**
     * 注册
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void regiest(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        try{
            SimpleDateFormat sf=new SimpleDateFormat("yyyy-mm-dd");
            User user=new User();
            user.setLoginname(request.getParameter("loginname"));
            user.setUserName(request.getParameter("username"));
            user.setPassword(request.getParameter("password"));
            user.setAddress(request.getParameter("address"));
            user.setMale(request.getParameter("sex"));
            String birthday=request.getParameter("birthday");
            user.setEmail(request.getParameter("email"));
            if (!birthday.equals("")){
                user.setBirthday(sf.parse(birthday));

            }
            user.setMobile(request.getParameter("mobile"));
            int r=userService.manageSave(user);
            response.sendRedirect("login.jsp");
        }catch (Exception ex){
            ex.printStackTrace();
        }

    }

    /**
     * 后台-显示所有用户列表
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void managerShowList(HttpServletRequest request,HttpServletResponse response)throws  ServletException, IOException{
        try{
            List<User> list=userService.getUsers();
            request.setAttribute("listUser",list);
            request.getRequestDispatcher("manage/user.jsp").forward(request,response);
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }

    /**
     * 保存用户
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void save(HttpServletRequest request,HttpServletResponse response)throws  ServletException, IOException{
        try{
            SimpleDateFormat sf=new SimpleDateFormat("yyyy-mm-dd");
            User user=new User();
            user.setLoginname(request.getParameter("loginname"));
            user.setUserName(request.getParameter("username"));
            user.setPassword(request.getParameter("password"));
            user.setAddress(request.getParameter("address"));
            user.setMale(request.getParameter("sex"));
            String birthday=request.getParameter("birthday");
            user.setEmail(request.getParameter("email"));
            if (!birthday.equals("")){
                user.setBirthday(sf.parse(birthday));

            }
            user.setMobile(request.getParameter("mobile"));
            int r=userService.manageSave(user);
            response.sendRedirect("UserServlet?op=managerShowList");
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }

    /**
     * 后台-用户请求修改
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void toUpdate(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        try{
            String userid=request.getParameter("userid");
            User user=userService.findById(userid);
            request.setAttribute("USERS",user);
            request.getRequestDispatcher("manage/user-modify.jsp").forward(request,response);
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }

    /**
     * 后台-处理用户修改
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void doUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            SimpleDateFormat sf=new SimpleDateFormat("yyyy-mm-dd");
            User user=new User();
            user.setLoginname(request.getParameter("loginname"));
            user.setUserName(request.getParameter("username"));
            user.setPassword(request.getParameter("password"));
            user.setAddress(request.getParameter("address"));
            user.setMale(request.getParameter("sex"));
            user.setBirthday(sf.parse(request.getParameter("birthday")));
            user.setMobile(request.getParameter("mobile"));
            String userid=request.getParameter("userid");
            int r=userService.update(user,userid);
            response.sendRedirect("UserServlet?op=managerShowList");


        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 后台-删除用户
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void delete(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        try{
            String userid=request.getParameter("userid");
            int r=userService.delete(userid);
            response.sendRedirect("UserServlet?op=managerShowList");
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }
}
