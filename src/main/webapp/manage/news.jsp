<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2022/6/22
  Time: 7:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
    <base href="<%=basePath%>"/>
    <title>后台管理</title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body>
<%@include file="header.jsp"%>
<div id="position" class="wrap">
    您现在的位置：<a href="index.jsp">carstore</a> &gt; 管理后台
</div>

<div id="main" class="wrap">
    <%@include file="left.jsp"%>
    <h2>新闻管理</h2>
    <div class="manage">
        <table class="list">
            <tr>
                <th>ID</th>
                <th>新闻标题</th>
                <th>新闻内容</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${requestScope.listNews1}" var="n1" varStatus="status">
                <tr>
                    <td class="first w4 c">${status.count}</td>
                    <td>${n1.title}</td>
                    <td><li style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap;width: 700px">${n1.content}</li></td>
                    <td class="w1 c"><a href="NewsServlet?op=toUpdate&newsid=${n1.id}">修改</a> <a href="NewsServlet?op=delete&newsid=${n1.id}">删除</a></td>
                </tr>
            </c:forEach>
            <c:forEach items="${requestScope.listNews2}" var="n1" varStatus="status">
                <tr>
                    <td class="first w4 c">${status.count+7}</td>
                    <td>${n1.title}</td>
                    <td><li style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap;width: 700px">${n1.content}</li></td>
                    <td class="w1 c"><a href="NewsServlet?op=toUpdate&newsid=${n1.id}">修改</a> <a href="NewsServlet?op=delete&newsid=${n1.id}">删除</a></td>
                </tr>
            </c:forEach>

        </table>
    </div>
</div>
<div class="clear"></div>
</div>
<div id="footer">
</div>
</body>
</html>
