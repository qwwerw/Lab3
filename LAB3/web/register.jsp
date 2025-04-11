<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<h2>Registration Form</h2>
<form action="register" method="post">
    Enter name: <input type="text" name="name" required><br>
    Enter password: <input type="password" name="pass" required><br>
    Enter email: <input type="email" name="mail" required><br>
    <input type="submit" value="Register"><br>

    You are already registered? Please, <a href="index.jsp">Sign in!</a>

</form>

<!-- Если произошла ошибка, покажем сообщение -->
<c:if test="${param.error != null}">
    <div style="color: red;">${param.error}</div>
</c:if>

</body>
</html>
