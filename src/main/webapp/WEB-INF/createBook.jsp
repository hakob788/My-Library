<%@ page import="com.example.myLibrary.model.Author" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: Hakob
  Date: 27.04.2023
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Book</title>
</head>
<% List<Author> authors = (List<Author>) request.getAttribute("authors");%>
<body>
<a href="/books"> Back </a>
<h2>Add Book</h2>
<form action="/createBook" method="post">
    Title: <input name="title" type="text"><br>
    Description: <input name="description" type="text"><br>
    Price: <input name="price" type="text"><br>
    Author:
    <select name="author">
        <% for (Author author : authors) { %>
        <option value="<%=author.getId()%>"><%= author.getName() %>
        </option>
        <% }%>
    </select>
    <input type="submit" value="Add">
</form>
</body>
</html>