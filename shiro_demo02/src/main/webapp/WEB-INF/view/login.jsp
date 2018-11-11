<%--
  Created by IntelliJ IDEA.
  User: lsy
  Date: 2018/11/11
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<hr>
<h1>登陆页面</h1>
<form action="/user/login.html" method="post">
    <input type="text" name="username" placeholder="username"/>
    <hr>
    <input type="password" name="passwd" placeholder="password"/>
    <hr>
    <button type="submit">Login</button>&nbsp;&nbsp;<button type="reset">Reset</button>
</form>
</body>
</html>
