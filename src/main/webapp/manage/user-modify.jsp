<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/6/14 0014
  Time: 9:21
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
    <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>

</head>
<body>
<%@include file="header.jsp"%>
<div id="position" class="wrap">
    当前位置:<a href="index.html">carStore</a> &gt; 管理后台
</div>
<div id="main" class="wrap">
    <%@include file="left.jsp"%>
    <div class="main">
        <h2>修改用户</h2>
        <div class="manage">
            <form action="UserServlet" method="post">
                <input type="hidden" name="op" value="doUpdate"/>
                <input type="hidden" name="userid" value="${requestScope.USERS.userId}"/>
                <table class="form">
                    <tr>
                        <td class="field">用户名：</td>
                        <td><input type="text" class="text" name="loginname"  value="${requestScope.USERS.loginname}" readonly="readonly" /></td>
                    </tr>
                    <tr>
                        <td class="field">姓名：</td>
                        <td><input type="text" class="text" name="username" value="${requestScope.USERS.userName}" /></td>
                    </tr>
                    <tr>
                        <td class="field">密码：</td>
                        <td><input type="text" class="text" name="password" value="${requestScope.USERS.password}" /></td>
                    </tr>
                    <tr>
                        <td class="field">性别：</td>
                        <td><input type="radio" name="sex" value="男" <c:if test="${requestScope.USERS.male=='男'}">checked</c:if> />男 <input type="radio" name="sex"  <c:if test="${requestScope.USERS.male=='女'}">checked</c:if> value="女" />女</td>
                    </tr>
                    <tr>
                        <td class="field">出生日期：</td>
                        <td>
                            <input name="birthday" class="Wdate" value="${requestScope.USERS.birthday}" type="text" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd'})">
                        </td>
                    </tr>
                    <tr>
                        <td class="field">邮箱地址：</td>
                        <td><input type="text" class="text" name="email" value="${requestScope.USERS.email}" /></td>
                    </tr>
                    <tr>
                        <td class="field">手机号码：</td>
                        <td><input type="text" class="text" name="mobile" value="${requestScope.USERS.mobile}" /></td>
                    </tr>
                    <tr>
                        <td class="field">送货地址：</td>
                        <td><input type="text" class="text" name="address" value="${requestScope.USERS.address}" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><label class="ui-blue"><input type="submit" name="submit" value="更新" /></label></td>
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
