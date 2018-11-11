<%--
  Created by IntelliJ IDEA.
  User: lsy
  Date: 2018/11/11
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>HOME</h1>
<shiro:user>
    <div style="display: inline-block" align="right"><a href="/user/logout.html">Logout</a></div>
</shiro:user>

<hr/>
<shiro:hasRole name="ROLE_ADMIN">
    <li class="user"><a href="${ctx}/admin/user">用户</a></li>
</shiro:hasRole>
<shiro:hasAnyRoles name="ROLE_ADMIN,ROLE_SERVICE">
    <li class="complaint"><a href="${ctx}/admin/complaint/list">服务</a></li>
</shiro:hasAnyRoles>
<shiro:hasRole name="ROLE_ADMIN">
    <li class="system"><a href="${ctx}/admin/repairType/index">系统设置</a></li>
</shiro:hasRole>
<shiro:guest>
    <p> 1、介绍Shiro的标签guest标签 ：验证当前用户是否为“访客”，即未认证（包含未记住）的用户。</p>
    <hr>
    <p>Hi there! Please <a href="login.jsp">Login</a> or <a href="signup.jsp">Signup</a> today!</p>
    <hr>
</shiro:guest>
<shiro:user>
<p>2、user标签 ：认证通过或已记住的用户。</p>
Welcome back John! Not John? Click <a href="login.jsp">here<a> to login.
    </shiro:user>
    <shiro:authenticated>
    <p>3、authenticated标签 ：已认证通过的用户。不包含已记住的用户，这是与user标签的区别所在。</p>
    <a href="updateAccount.jsp">Update your contact information</a>.
    </shiro:authenticated>
    <shiro:notAuthenticated>
    <p>4、notAuthenticated标签 ：未认证通过用户，与authenticated标签相对应。与guest标签的区别是，该标签包含已记住用户。 </p>
    Please <a href="login.jsp">login</a> in order to update your credit card information.
    </shiro:notAuthenticated>
    <p>5、principal 标签 ：输出当前用户信息，通常为登录帐号信息。</p>
    Hello, <shiro:principal/>, how are you today?
    <shiro:hasRole name="administrator">
    <p>6、hasRole标签 ：验证当前用户是否属于该角色。</p>
    <a href="admin.jsp">Administer the system</a>

    </shiro:hasRole>
    <shiro:lacksRole name="administrator">
    <p>7、lacksRole标签 ：与hasRole标签逻辑相反，当用户不属于该角色时验证通过。</p>
    Sorry, you are not allowed to administer the system.

    </shiro:lacksRole>
    <shiro:hasPermission name="user:create">
    <p>8、hasAnyRole标签 ：验证当前用户是否属于以下任意一个角色。 </p>
    <a href="createUser.jsp">Create a new User</a>

    </shiro:hasPermission>
    <shiro:hasPermission name="user:create">
    <p>9、hasPermission标签 ：验证当前用户是否拥有指定权限。</p>
    <a href="createUser.jsp">Create a new User</a>

    </shiro:hasPermission>
    <shiro:hasPermission name="user:create1">
    <p>10、lacksPermission标签 ：与hasPermission标签逻辑相反，当前用户没有制定权限时，验证通过。</p>
    <a href="createUser.jsp">Create a new User</a>
    </shiro:hasPermission>
    <%-- <shiro:hasAnyRoles name="developer, project manager, administrator">

     You are either a developer, project manager, or administrator.

     </shiro:lacksRole>--%>
</body>
</html>
