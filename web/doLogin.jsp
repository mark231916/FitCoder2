<%@ page import="main.User" %>
<%@ page import="main.SignInAndDataCall" %>
<%@ page import="java.text.ParseException" %><%--
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
    SignInAndDataCall sign = new SignInAndDataCall();
    User test = null;
    try {
        test = sign.SignIn(username, psw);
    } catch (ParseException e) {
        e.printStackTrace();
    }
    if (test != null) {
        session.setAttribute("curr", test);
        request.getRequestDispatcher("main.jsp").forward(request, response);
    }
    else {
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

%>

