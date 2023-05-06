<%--
  Created by IntelliJ IDEA.
  User: Hakob
  Date: 27.04.2023
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Library</title>
</head>
<body>
<h1> Log in</h1><br>
<%
    if (session.getAttribute("user") != null) {
        response.sendRedirect("/home");
    }
    String message = (String) session.getAttribute("message");
%>
<% if (message != null) {%>
<span style="color: blue"><%="*" + message %></span><br>
<%
        session.removeAttribute("message");
    }%>
<form action="/login" method="post">
    Email: <input name="email" type="text"><br/>
    Password: <input name="password" type="password"><br/>
    <input type="submit" value="login">
</form>
<a href="/register.jsp">Register</a>
<br/>

</body>
</html>
