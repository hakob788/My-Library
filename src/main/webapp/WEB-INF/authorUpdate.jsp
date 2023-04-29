<%@ page import="com.example.myLibrary.model.Author" %>
<%--
  Created by IntelliJ IDEA.
  User: Hakob
  Date: 27.04.2023
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
</head>
<%
    Author author = (Author) request.getAttribute("author");%>
<body>
<a href="/author"> Back </a><br>

<h2>Update Author</h2>
<form action="/updateAuthor" method="post">
    <input name="id" type="hidden" value="<%=author.getId()%>"><br>
    Name: <input name="name" type="text" value="<%=author.getName()%>"><br>
    Surname: <input name="surname" type="text" value="<%=author.getSurname()%>"><br><br>
    email: <input name="email" type="text" value="<%=author.getEmail()%>"><br><br>
    age: <input name="age" type="text" value="<%=author.getAge()%>"><br><br>
    <input type="submit" value="Update">
</form>
</body>
</html>
