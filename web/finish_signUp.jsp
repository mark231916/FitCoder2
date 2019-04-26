<%--
  Created by IntelliJ IDEA.
  User: mark231916
  Date: 2019-04-25
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@page import="org.apache.commons.beanutils.*" %>
<%@ page import="main.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="user" class="main.User" scope="session">

</jsp:useBean>
<%
    user.setIdealCalorie(Integer.parseInt(request.getParameter("calorie")));
    session.setAttribute("curr", user);
    request.getRequestDispatcher("main.jsp").forward(request, response);
%>

</body>
</html>
