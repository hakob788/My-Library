<%@ page import="com.example.myLibrary.model.User" %>
<%--
  Created by IntelliJ IDEA.
  User: Hakob
  Date: 27.04.2023
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
<% User user = (User) session.getAttribute("user"); %>
Welcome <%=user.getName()%> <%=user.getSurname()%>
<a href="/author">Author </a>|
<a href="/books"> Book </a>|
<a href="/createAuthor">Create Author</a>|
<a href="/createBook">Create Book</a>|
<a href="/logout">logout</a> <br>
</body>
</html>
