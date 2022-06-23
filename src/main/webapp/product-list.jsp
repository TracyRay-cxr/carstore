<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2022/6/19
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>首页</title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/index.css">
    <script type="text/javascript" src="scripts/function.js"></script>
</head>
<body>
<%@include file="header.jsp"%>
<div id="position" class="wrap">
    当前位置:<a href="index.jsp">carStore</a> &gt; <a href="product-list.jsp"></a>车辆
</div>
<div id="main" class="wrap">
    </div>
    <div class="main">
        <div class="product-list">
            <div class="recommend c">
                <div class="box">
                    <h3 id="rbtj">全部商品</h3>
                </div>
                <ul>
                    <c:forEach items="${requestScope.listProduct1}" var="p2">
                    <li>
                        <div class="item">
                            <div class="pic">
                                <a href="ProductServlet?op=detail&productid=${p2.id}"><img src=http://image.carstore.com/${p2.fileName} alt="" width="210px" height="210px"></a></div>
                            <div class="desc"><span>${p2.name}</span></div>
                        </div>
                    </li>
                    </c:forEach>
                    <li>
                        <div class="item">
                            <div class="pic">
                                <a href="product-view.jsp"><img src="images/product/2.jpg" alt="" width="210px" height="210px"></a></div>
                            <div class="desc"><span>BMW-m4x5</span></div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="pic">
                                <a href="product-view.jsp"><img src="images/product/3.jpg" alt="" width="210px" height="210px"></a></div>
                            <div class="desc"><span>Honda-CBR650R</span></div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="pic">
                                <a href="product-view.jsp"><img src="images/product/4.jpg" alt="" width="210px" height="210px"></a></div>
                            <div class="desc"><span>Suzuki-R</span></div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="pic">
                                <a href="product-view.jsp"><img src="images/product/5.jpg" alt="" width="210px" height="210px"></a></div>
                            <div class="desc"><span>Kawasaki-H2R</span></div>

                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="pic">
                                <a href="product-view.jsp"><img src="images/product/6.jpg" alt="" width="210px" height="210px"></a></div>
                            <div class="desc"><span>QJsai600</span></div>
                        </div>
                    </li>
                    <li>
                        <div class="item">
                            <div class="pic">
                                <a href="product-view.jsp"><img src="images/product/7.jpg" alt="" width="210px" height="210px"></a></div>
                            <div class="desc"><span>GJ500穿越版</span></div>

                        </div>

                    </li>
                    <li>
                        <div class="item">
                            <div class="pic">
                                <a href="product-view.jsp"><img src="images/product/8.jpg" alt="" width="210px" height="210px"></a></div>
                            <div class="desc"><span>BMW-S1000RR</span></div>

                        </div>

                    </li>

                </ul>
            </div>
            <div class="clear"></div>
            <div class="pager" style="width: 55%">
                <ul class="clearfix">
                    <li><a href="#">上一页</a></li>
                    <li class="current">1</li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">下一页</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div id="footer">
</div>
</body>
</html>

