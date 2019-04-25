<%@ page import="main.User" %><%--
  Created by IntelliJ IDEA.
  main.User: mark231916
  Date: 2019-04-18
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="user" class="main.User" scope="session"/>
<%
    String username = request.getParameter("username");
    String psw = request.getParameter("psw");
    user.setUsername(username);
    user.setPassword(psw);
    user.initUser();

    session.setAttribute("loginUser", username);
    request.getRequestDispatcher("login_success.jsp").forward(request, response);
%>

