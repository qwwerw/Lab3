<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 24.10.2017
  Time: 11:17
  Modified: [current date]
  Version: 2.0 (styled version)
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Вход в систему - Кафедра информатики УГГУ</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            color: #333;
        }
        .container {
            width: 400px;
            margin: 50px auto;
            background: white;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1 {
            color: #2c3e50;
            text-align: center;
            font-size: 24px;
            margin-bottom: 30px;
            border-bottom: 1px solid #eee;
            padding-bottom: 10px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #2c3e50;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #1a252f;
        }
        .register-link {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
        }
        .error-message {
            color: #e74c3c;
            text-align: center;
            margin-bottom: 20px;
            font-size: 14px;
        }
        .university-header {
            background-color: #2c3e50;
            color: white;
            padding: 10px 0;
            text-align: center;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
<div class="university-header">
    Кафедра информатики Уральского государственного горного университета
</div>

<div class="container">
    <h1>Вход в информационную систему</h1>

    <!-- Если произошла ошибка, покажем сообщение -->
    <c:if test="${param.error != null}">
        <div class="error-message">
            Ошибка авторизации. Проверьте имя пользователя и пароль.
        </div>
    </c:if>

    <form action="Login" method="post">
        <div class="form-group">
            <label for="name">Имя пользователя:</label>
            <input type="text" id="name" name="name" required>
        </div>

        <div class="form-group">
            <label for="pass">Пароль:</label>
            <input type="password" id="pass" name="pass" required>
        </div>

        <div class="form-group">
            <input type="submit" value="Войти">
        </div>
    </form>

    <div class="register-link">
        Впервые в системе? <a href="register.jsp">Зарегистрируйтесь!</a>
    </div>
</div>
</body>
</html>