<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: Hakob
  Date: 27.04.2023
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>New Author</title>
</head>
<body>
<a href="/author"> Back </a>
<h2>Add Author</h2>
<form action="/createAuthor" method="post">
    Name: <input name="name" type="text"><br><br>
    Surname: <input name="surname" type="text"><br><br>
    email: <input name="email" type="text"><br><br>
    age: <input name="age" type="text"><br><br>
    <input type="submit" value="Add"><br><br>
</form>
</body>
</html>
