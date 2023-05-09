<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><%--
  Created by IntelliJ IDEA.
  User: Hakob
  Date: 27.04.2023
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <title>Library</title>
    <link rel="stylesheet" href="/css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
          integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
</head>
<body>
<%
    if (session.getAttribute("user") != null) {
        response.sendRedirect("/home");
    }
    String message = (String) session.getAttribute("message");
%>
<div class="main-block" style="min-height: 300px">
    <h1>Log in</h1>
    <hr>
    <% if (message != null) {%>
    <span style="color: red"><%="*" + message %></span><br>
    <%
            session.removeAttribute("message");
        }
    %>
    <form action="/login" method="post">
        <label id="icon" for="email"><i class="fas fa-envelope"></i></label>
        <input type="text" name="email" id="email" placeholder="Email" required/>
        <label id="icon" for="password"><i class="fas fa-unlock-alt"></i></label>
        <input type="password" name="password" id="password" placeholder="Password" required/>
        <hr>
        <div class="btn-block">
            <button type="submit">Log in</button>
            <a href="/register.jsp">
                <button type="button">Register</button>
            </a>
        </div>
    </form>
</div>
</body>
</html>
