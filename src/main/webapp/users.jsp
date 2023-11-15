<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Пользователи</title>
    <link rel="stylesheet" href="styles/users.css">
    <link rel="icon" href="/img/logo.png" type="image/x-icon">
    <link rel="shortcut icon" href="/img/logo.png" type="image/x-icon">
</head>
<body>
    <div style="text-align: center">
        <h1>Список пользователей</h1>
        <table style="margin: auto">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Login</th>
                <th>Password</th>
            </tr>
            <c:forEach items="${users}" var="user">
            <tr onclick="window.location.href='http://localhost:8000/users/${user.id}'" style="cursor: pointer;">
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.login}</td>
                <td>${user.password}</td>
            </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
