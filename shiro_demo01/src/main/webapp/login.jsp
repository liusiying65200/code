<%--
  Created by IntelliJ IDEA.
  User: lsy
  Date: 2018/11/11
  Time: 12:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <title>login</title>
</head>
<body>
    <h1>登陆页面</h1>
<form action="/login" method="post" >
    <input type="text" name="username" placeholder="用户名">
    <hr/>
    <input type="password" placeholder="密码">
    <button type="submit">Login</button>&nbsp;&nbsp;<button type="reset">Reset</button>
</form>
<form name="shiro">
    Hello, <shiro:principal/>, how are you today?
</form>
</body>
</html>
