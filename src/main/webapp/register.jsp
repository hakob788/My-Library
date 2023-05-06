<%--
  Created by IntelliJ IDEA.
  User: Hakob
  Date: 27.04.2023
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register Page</title>
</head>
<body>
<%
    if (session.getAttribute("user") != null) {
        response.sendRedirect("/home");
    }
%>
Register:
<form action="/register" method="post">
    Name: <input name="name" type="text"><br/>
    Surname: <input name="surname" type="text"><br/>
    Email: <input name="email" type="text"><br/>
    Password: <input name="password" type="password"><br/>
    Position:
    <select name="userType">
        <option value="ADMIN">ADMIN</option>
        <option value="USER">USER</option>
    </select>
    <input type="submit" value="register">
</form>
<a href="/">Back</a>
</body>
</html>
