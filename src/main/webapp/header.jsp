<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/6/13 0013
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.carstore.entity.User" %>
<script type="text/javascript">

    function logout()
    {

        if(confirm("确定要注销吗？"))
        {
            location.href="UserServlet?op=logout";
        }

    }

</script>
<div id="header" class="wrap">
    <div id="logo"><img src="images/logo.gif" /></div>
    <%
        User user=(User)session.getAttribute("USERS");
        if(user==null){
    %>
    <div class="help"><a href="login.jsp">登录</a><a href="register.jsp">注册</a><a href="guestbook.jsp">留言</a></div>
   <%}else {%>
    <div class="help">用户：<%=user.getUserName()%><a href="#" onclick="logout()">注销</a><a href="guestbook.jsp">留言</a></div>
    <%}%>

</div>
<div class="parentchileNav">
    <div id="childNav">
        <div class="wrap">
            <ul class="clearfix">
                <li class="first"><a href="#">PICKUP</a></li>
                <li><a href="#">SUV</a></li>
                <li><a href="#">COUPE</a></li>
                <li><a href="#">CONVERTIBLE</a></li>
                <li><a href="#">SEDAN</a></li>
                <li><a href="#">SUPER CAR</a></li>
                <li><a href="#">MINICAR</a></li>
                <li class="last"><a href="manage/index.jsp">manage</a></li>
            </ul>
        </div>
    </div>
</div>
