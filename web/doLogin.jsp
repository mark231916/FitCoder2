<%--
  Created by IntelliJ IDEA.
  User: mark231916
  Date: 2019-04-18
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String username = request.getParameter("username");
    session.setAttribute("loginUser", username);
    request.getRequestDispatcher("login_success.jsp").forward(request, response);
%>

