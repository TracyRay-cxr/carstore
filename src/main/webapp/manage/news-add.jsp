<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2022/6/22
  Time: 7:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <div class="main">
        <h2>添加新闻</h2>
        <div class="manage">
            <form action="NewsServlet" method="post">
                <input type="hidden" name="op" value="add"/>
                <table class="form">
                    <tr>
                        <td class="field">新闻标题：</td>
                        <td><input type="text" class="text" name="title" value="" /></td>
                    </tr>
                    <tr>
                        <td class="field">新闻内容：</td>
                        <td><textarea name="content"></textarea></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><label class="ui-blue"><input type="submit" name="submit" value="添加" /></label></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <div class="clear"></div>
</div>
<div id="footer">

</div>
</body>
</html>
