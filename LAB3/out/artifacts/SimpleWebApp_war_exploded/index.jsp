<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 24.10.2017
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="Login" method="post">
    Enter name: <input type="text" name="name"><br>
    Enter password: <input type="password" name="pass"><br>
    <input type="submit" value="login"><br>

    New in? Please, <a href="register.jsp">Sign up!</a>

</form>

<!-- Если произошла ошибка, покажем сообщение -->
<c:if test="${param.error != null}">
    <div style="color: red;">${param.error}</div>
</c:if>

</body>
</html>
