<%@ page import="main.User" %><%--
  Created by IntelliJ IDEA.
  User: mark231916
  Date: 2019-04-23
  Time: 01:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>FitCoder</title>
</head>
<body>
<jsp:useBean id="user" class="main.User" scope="session"/>
<%
    String username = request.getParameter("username");
    String psw = request.getParameter("psw");
    System.out.println(username);
    System.out.println(psw);
    user.setUsername(username);
    user.setPassword(psw);
    request.getRequestDispatcher("login_success.jsp").forward(request, response);
%>
</body>
</html>