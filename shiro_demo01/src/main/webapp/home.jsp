<%--
  Created by IntelliJ IDEA.
  User: lsy
  Date: 2018/11/11
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<shiro:hasRole name="administrator">
    <a href="admin.jsp">Administer the system</a>
</shiro:hasRole>
<shiro:lacksRole name="administrator">
    Sorry, you are not allowed to administer the system.
</shiro:lacksRole>
<shiro:hasAnyRoles name="developer, project manager, administrator">
    You are either a developer, project manager, or administrator.
</shiro:hasAnyRoles>
<shiro:hasPermission name="user:create">
    <a href="createUser.jsp">Create a new User</a>
</shiro:hasPermission>
<shiro:lacksPermission name="user:create">
    <a href="createUser.jsp">Create a new User</a>
</shiro:lacksPermission>
<shiro:hasRole name="ROLE_ADMIN">
    <li class="user"><a href="${ctx}/admin/user">用户</a></li>
</shiro:hasRole>
<shiro:hasAnyRoles name="ROLE_ADMIN,ROLE_SERVICE">
    <li class="complaint"><a href="${ctx}/admin/complaint/list">服务</a></li>
</shiro:hasAnyRoles>
<shiro:hasRole name="ROLE_ADMIN">
    <li class="system"><a href="${ctx}/admin/repairType/index">系统设置</a></li>
</shiro:hasRole>
</body>
</html>
