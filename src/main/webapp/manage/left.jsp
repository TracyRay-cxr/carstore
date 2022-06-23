<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/6/14 0014
  Time: 8:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="menu-mng" class="lefter">
    <div class="box">
        <dl>
            <dt>用户管理</dt>
            <dd><em><a href="manage/user-add.jsp">新增</a></em><a href="UserServlet?op=managerShowList">用户管理</a></dd>
            <dt>车辆信息</dt>
            <dd><em><a href="productClass-add.html">新增</a></em><a href="productClass.html">分类管理</a></dd>
            <dd><em><a href="manage/product-add.jsp">新增</a></em><a href="ProductServlet?op=list">车辆管理</a></dd>
            <dt>订单管理</dt>
            <dd><a href="manage/order.jsp">订单管理</a></dd>
            <dt>留言管理</dt>
            <dd><a href="guestbook.html">留言管理</a></dd>
            <dt>新闻管理</dt>
            <dd><em><a href="manage/news-add.jsp">新增</a></em><a href="NewsServlet?op=list">新闻管理</a></dd>
        </dl>
    </div>
</div>