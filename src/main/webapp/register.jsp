<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2022/6/21
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <script type="text/javascript" src="scripts/function.js"></script>
    <link rel="stylesheet" href="css/login.css">
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
</head>
<body>
<%@include file="header.jsp"%>
<div class="tit"><span>注册</span></div>
<div class="register">
    <div class="formlogin">
        <div class="inputbox">
            <div>
                <div class="registertitle">
                    <span>账号注册</span>
                    <a href="login.jsp"><span>已有账号，去登录 ></span></a>
                </div>
                <div class="info">
                    <form id="regForm" method="post" action="UserServlet" onsubmit="return checkForm(this);">
                        <input type="hidden" name="op" value="reg"/>
                        <div><input class="text" type="text" name="loginname" onfocus="FocusItem(this)" onblur="CheckItem(this);"  value placeholder="用户名" maxlength="20"/><span></span></div>
                        <div class="enter"></div>
                        <div><input class="text" type="password" id="password" name="password" onfocus="FocusItem(this)" onblur="CheckItem(this);" placeholder="密码" maxlength="20" /><span></span></div>
                        <div class="enter"></div>
                        <div><input class="text" type="text" name="username" onfocus="FocusItem(this)" onblur="CheckItem(this);" value placeholder="昵称" maxlength="20"/><span></span></div>
                        <div class="enter"></div>
                        <div ><input class="text" type="text" name="email" onfocus="FocusItem(this)" onblur="CheckItem(this);" value placeholder="你的邮箱" maxlength="20"/><span></span></div>
                        <div class="enter"></div>
                        <div><input class="text" type="text" name="mobile" onfocus="FocusItem(this)" onblur="CheckItem(this);" value placeholder="你的手机号" maxlength="20"/><span></span></div>
                        <div class="enter"></div>
                        <div><input class="text" type="date" name="birthday" onfocus="FocusItem(this)" onblur="CheckItem(this);" value placeholder="你的生日" maxlength="20"/><span></span></div>

                    <div class="final">
                        <input  type="submit" name="submit" value="注册" />
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
