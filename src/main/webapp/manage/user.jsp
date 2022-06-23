<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/6/14 0014
  Time: 8:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
    <base href="<%=basePath%>"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>后台管理</title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <script type="text/javascript" src="scripts/function-manage.js"></script>
</head>
<body>
<%@include file="header.jsp" %>
<div id="position" class="wrap">
   当前位置:<a href="index.jsp">carStore</a> &gt; 管理后台
</div>
<div id="main" class="wrap">
    <%@include file="left.jsp" %>
    <div class="main">
        <h2>用户管理</h2>
        <div class="manage">
            <table class="list">
                <tr>
                    <th>ID</th>
                    <th>用户名</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>Email</th>
                    <th>手机</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${requestScope.listUser}" var="u" varStatus="i">
                <tr>
                    <td class="first w4 c">${i.index+1}</td>
                    <td class="w1 c">${u.loginname}</td>
                    <td class="w1 c">${u.userName}</td>
                    <td class="w2 c">${u.male}</td>
                    <td>${u.email}</td>
                    <td class="w4 c">${u.mobile}</td>
                    <td class="w1 c"><a href="UserServlet?op=toUpdate&userid=${u.userId}">修改</a> <a href="javascript:delUser(${u.userId});">删除</a></td>
                </tr>
                </c:forEach>

            </table>
        </div>
    </div>
    <div class="clear"></div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>
