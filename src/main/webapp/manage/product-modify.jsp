<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/6/14 0014
  Time: 14:31
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
        <h2>修改车辆</h2>
        <div class="manage">
            <form action="ProductServlet" method="post">
                <input type="hidden" name="op" value="doUpdate"/>
                <input type="hidden" name="productid" value="${requestScope.product.id}"/>

                <table class="form">
                    <tr>
                        <td class="field">车辆名称：</td>
                        <td><input type="text" class="text" name="epname" value="${requestScope.product.name}" /></td>
                    </tr>
                    <tr>
                        <td class="field">所属分类：</td>
                        <td>
                            <select name="epcid">
                                <option value="1">PICKUP</option>
                                <option value="2" <c:if test="${requestScope.product.categoryId=='2'}">selected</c:if> >SUPER CAR</option>
                                <option value="3" <c:if test="${requestScope.product.categoryId=='3'}">selected</c:if> >CONVERTIBLE</option>
                                <option value="4">SUV</option>
                                <option value="5" <c:if test="${requestScope.product.categoryId=='5'}">selected</c:if> >SEDAN</option>
                                <option value="6" <c:if test="${requestScope.product.categoryId=='6'}">selected</c:if> >COUPE</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="field">车辆图片：</td>
                        <td><input type="file" class="text" name="filename" /></td>
                    </tr>
                    <tr>
                        <td class="field">车辆价格：</td>
                        <td><input type="text" class="text tiny" name="price" value="${requestScope.product.price}" /> 元</td>
                    </tr>

                    <tr>
                        <td class="field">库存：</td>
                        <td><input type="text" class="text tiny" name="stock" value="${requestScope.product.stock}"  /></td>
                    </tr>
                    <tr>
                        <td class="field">描述：</td>
                        <td>
                            <textarea rows="10" cols="20" name="description">${requestScope.product.description}</textarea>

                        </td>
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
<%@include file="footer.jsp"%>
</body>
</html>

