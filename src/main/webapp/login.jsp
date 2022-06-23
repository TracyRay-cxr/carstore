<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/6/13 0013
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录</title>
    <link type="text/css" rel="stylesheet" href="css/login.css" />
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <script type="text/javascript" src="scripts/function.js"></script>
</head>
<body>
<%@include file="header.jsp"%>
<div id="register" class="wrap">
    <div class="clear"></div>
    <div class="tit"><span>登录</span></div>
    <div class="login">
        <div class="formlogin">
            <div class="inputbox">
                <div>
                    <div class="type-tab">
                        <a href=""><span class="active">密码登录</span></a>
                        <a href=""><span class="massage">短信登录</span></a>
                    </div>
                    <form id="loginForm" method="post" action="UserServlet" onsubmit="return checkForm(this)">
                        <input type="hidden" name="op" value="login"/>
                    <div>
                        <div class="username">
                            <input class="text" type="text" name="username" onfocus="FocusItem(this)" onblur="CheckItem(this);" maxlength="20" />
                            <span class="status">  <label style="color:red;font-size:18px;">${requestScope.ERROR}</label></span>
                        </div>
                        <div class="textfix"></div>
                    </div>
                    <div>
                        <input class="text" type="password" id="passWord" name="password" onfocus="FocusItem(this)" onblur="CheckItem(this);" maxlength="20" />
                        <span class="status"></span>
                    </div>
                    <div class="textfix"></div>
                    <div class="remember">
                        <label>
                            <label class="remember active">
                                <input type="checkbox">
                            </label>

                            记住我

                            <span>非私人设备勿选</span>
                            <a href="#">忘记密码？</a>
                            <a href="#">无法验证?</a>
                        </label>

                    </div>

                    <div class="btn-box">
                      <input class="btn btn-login" type="submit" name="submit" value="登录" />
                      <input class="btn btn-reg" type="button"  onclick="doReg()" value="注册"/>
                    </div>
                    <div class="sns">
                        <a href="#" class="btn weixin">微信账号登录</a>
                        <a href="#" class="btn qq">QQ账号登录</a>
                        <a href="#" class="btn weibo">微博账号登录</a>
                        <a href="index.jsp" class="return">返回首页</a>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>
<div id="footer">

</div>
</body>
</html>
