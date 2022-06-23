<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/6/14 0014
  Time: 8:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="header" class="wrap">
    <div id="logo"><img src="images/logo.gif" /></div>
    <div class="help"><a href="index.jsp">返回前台页面</a></div>
    <div id="childNav">
        <div class="navbar">
            <ul class="clearfix1">
                <li><a href="index.jsp">首页</a></li>
                <li><a href="UserServlet?op=managerShowList">用户</a></li>
                <li><a href="ProductServlet?op=list">商品</a></li>
                <li><a href="order.jsp">订单</a></li>
                <li><a href="NewsServlet?op=list">新闻</a></li>
            </ul>
        </div>
    </div>
</div>