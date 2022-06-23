<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/6/13 0013
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div id="main" class="wrap">
    <%@include file="left.jsp"%>
    <div class="main">
        <div class="price-off">
            <h2>近期上新</h2>
            <ul class="product clearfix">
                <c:forEach items="${requestScope.listProduct1}" var="p1">
                    <li>
                        <dl>
                            <dt><a href="ProductServlet?op=detail&productid=${p1.id}" target="_blank"><img src="http://image.carstore.com/${p1.fileName}" /></a></dt>
                            <dd class="title"><a href="ProductServlet?op=detail&productid=${p1.id}" target="_blank">${p1.name}</a></dd>
                            <dd class="price">￥${p1.price}</dd>
                        </dl>
                    </li>
                </c:forEach>

            </ul>
        </div>
        <div class="side">
            <div class="news-list">
                <h4>最新公告</h4>
                <ul>
                    <c:forEach items="${requestScope.listNews1}" var="n1">
                        <li style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap;width: 210px"><a href="NewsServlet?op=detail&newsid=${n1.id}" target="_blank"><em><strong>${n1.title}</strong></em></a></li>
                    </c:forEach>
                </ul>
            </div>
            <div class="spacer"></div>
            <div class="news-list">
                <h4>新闻动态</h4>
                <ul>
                    <c:forEach items="${requestScope.listNews2}" var="n1">
                        <li style="overflow: hidden;text-overflow: ellipsis;white-space: nowrap;width: 210px"><a href="NewsServlet?op=detail&newsid=${n1.id}" target="_blank"><em><strong>${n1.title}</strong></em></a></li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="spacer clear"></div>

    </div>
    <div class="clear"></div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>
