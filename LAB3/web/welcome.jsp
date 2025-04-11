<%--
  Created by IntelliJ IDEA.
  User: student
  Date: [current date]
  Version: 2.0 (styled version)
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Добро пожаловать - Кафедра информатики УГГУ</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            color: #333;
        }
        .container {
            width: 600px;
            margin: 50px auto;
            background: white;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }
        h1 {
            color: #2c3e50;
            font-size: 28px;
            margin-bottom: 30px;
            padding-bottom: 15px;
            border-bottom: 1px solid #eee;
        }
        .welcome-message {
            font-size: 18px;
            line-height: 1.6;
            margin-bottom: 30px;
        }
        .user-actions {
            margin-top: 30px;
        }
        .action-button {
            display: inline-block;
            background-color: #2c3e50;
            color: white;
            text-decoration: none;
            padding: 12px 25px;
            border-radius: 4px;
            margin: 0 10px;
            transition: background-color 0.3s;
        }
        .action-button:hover {
            background-color: #1a252f;
        }
        .university-header {
            background-color: #2c3e50;
            color: white;
            padding: 15px 0;
            text-align: center;
            margin-bottom: 30px;
        }
        .university-footer {
            background-color: #2c3e50;
            color: white;
            padding: 15px 0;
            text-align: center;
            margin-top: 50px;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="university-header">
        Кафедра информатики Уральского государственного горного университета
    </div>
    
    <div class="container">
        <h1>Добро пожаловать в информационную систему!</h1>
        
        <div class="welcome-message">
            <p>Вы успешно вошли в систему кафедры информатики.</p>
            <p>Теперь вам доступны все возможности вашей учетной записи.</p>
        </div>
        
        <div class="user-actions">
            <a href="profile.jsp" class="action-button">Мой профиль</a>
            <a href="courses.jsp" class="action-button">Учебные курсы</a>
            <a href="logout" class="action-button">Выход</a>
        </div>
    </div>
    
    <div class="university-footer">
        &copy; 2025 Кафедра информатики УГГУ. Все права защищены.
    </div>
</body>
</html>