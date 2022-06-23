<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/6/14 0014
  Time: 15:10
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
<a href="index.jsp">carStore</a> &gt; <a href="IndexServlet?op=list">物品列表</a> &gt;
</div>
<div id="main" class="wrap">
    <%@include file="left.jsp"%>
    <div id="product" class="main">
        <h1>${requestScope.product.name}</h1>
        <div class="infos">
            <div class="thumb"><img src="http://image.carstore.com/${requestScope.product.fileName}" /></div>
            <div class="buy">
                <p>商城价：<span class="price">￥${requestScope.product.price}</span></p>
                <p>库　存：有货</p>
                <p>本地经销商</p>
                <p>暂无降价</p>
            </div>
            <div class="clear"></div>
        </div>
        <div class="introduce">
            <h2><strong>商品详情</strong></h2>
            <div class="text">
               ${requestScope.product.description}
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>
