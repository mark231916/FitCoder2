<%--
  Created by IntelliJ IDEA.
  User: mark231916
  Date: 2019-04-25
  Time: 02:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>FitCoder</title>
</head>
<body>
<jsp:useBean id="user" class="main.User" scope="session">

</jsp:useBean>
<%
    float goalWeight = Float.parseFloat(request.getParameter("goalWeight"));
    float weight = Float.parseFloat(request.getParameter("weight"));
    float height = Float.parseFloat(request.getParameter("height"));
    user.setWeight(weight);
    user.setHeight(height);
    user.setGoalWeight(goalWeight);

%>
</body>
</html>
