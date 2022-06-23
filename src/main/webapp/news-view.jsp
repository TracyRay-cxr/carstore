<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/6/14 0014
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>首页</title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <script type="text/javascript" src="scripts/function.js"></script>
</head>
<body>
<%@include file="header.jsp"%>

<div id="position" class="wrap">
    <a href="index.jsp">carStore</a> &gt; 阅读新闻
</div>
<div id="main" class="wrap">
    <%@include file="left.jsp"%>
    <div id="news" class="right-main">
        <h1>${requestScope.news.title}</h1>
        <div class="content">
            ${requestScope.news.content}
        </div>
    </div>
    <div class="clear"></div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>
