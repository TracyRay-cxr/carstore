<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/6/14 0014
  Time: 11:10
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
<%@include file="header.jsp"%>
<div id="position" class="wrap">
    您现在的位置：<a href="index.jsp">carstore</a> &gt; 管理后台
</div>
<div id="main" class="wrap">
    <%@include file="left.jsp"%>
    <div class="main">
        <h2>商品管理</h2>
        <div class="manage">
            <table class="list">
                <tr>
                    <th>ID</th>
                    <th>商品名称</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${requestScope.list}" varStatus="i" var="p">
                    <tr>
                        <td class="first w4 c">${i.index+1}</td>
                        <td class="thumb"><img src="http://image.carstore.com/${p.fileName}" /><a href="ProductServlet?op=detail&productid=${p.id}">${p.name}</a></td>
                        <td class="w1 c"><a href="ProductServlet?op=toUpdate&productid=${p.id}">修改</a> <a href="javascript:Delete(${p.id});">删除</a></td>
                    </tr>
                </c:forEach>


            </table>
        </div>
    </div>
    <div class="clear"></div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>
