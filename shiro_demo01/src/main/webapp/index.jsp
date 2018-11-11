<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<body>
<h2>Hello World!</h2>
<shiro:guest>
    Hi there! Please <a href="login.jsp">Login</a> or <a href="signup.jsp">Signup</a> today!
</shiro:guest>
<shiro:user>
Welcome back John! Not John? Click <a href="login.jsp">here<a> to login.
    </shiro:user>
    <shiro:authenticated>
    <a href="updateAccount.jsp">Update your contact information</a>.
    </shiro:authenticated>
    <shiro:notAuthenticated>
    Please <a href="login.jsp">login</a> in order to update your credit card information.
    </shiro:notAuthenticated>
</body>
</html>
