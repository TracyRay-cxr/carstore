<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/6/14 0014
  Time: 8:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="scripts/function-manage.js"></script>
    <script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>

</head>
<body>
<%@include file="header.jsp"%>
<div id="position" class="wrap">
   当前位置:<a href="manage/index.jsp">carstore</a> &gt; 管理后台
</div>
<div id="main" class="wrap">
    <%@include file="left.jsp"%>
    <div class="main">
        <h2>新增用户</h2>
        <div class="manage">
            <form action="UserServlet" method="post" onsubmit="return validateUserForm()" >
                <input type="hidden" name="op" value="save"/>
                <table class="form">
                    <tr>
                        <td class="field">用户名：</td>
                        <td><input type="text" class="text" id="loginname" name="loginname" value="" onblur="checkloginname()" />
                        <span style="color:#e0771c" id="loginnametips"></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="field">姓名：</td>
                        <td><input type="text" class="text" name="username" id="username" value="" onblur="checkUsername()"  />
                            <span style="color:#e0771c" id="usernametips"></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="field">密码：</td>
                        <td><input type="text" class="text" name="password"  id="password" value="" onblur="checkpassword()"  />
                            <span style="color:#e0771c" id="passwordtips"></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="field">性别：</td>
                        <td><input type="radio" name="sex" value="男" checked="checked" />男 <input type="radio" name="sex" value="女" />女</td>
                    </tr>
                    <tr>
                        <td class="field">出生日期：</td>
                        <td>
                            <input onblur="checkbirthday()" id="birthday"  name="birthday" class="Wdate" type="date" onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd'})">
                            <span style="color:#e0771c" id="birthdaytips"></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="field">邮箱地址：</td>
                        <td><input type="text" class="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td class="field">手机号码：</td>
                        <td><input type="text" class="text" name="mobile" value="" /></td>
                    </tr>
                    <tr>
                        <td class="field">送货地址：</td>
                        <td><input type="text" class="text" name="address" value="" /></td>
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
