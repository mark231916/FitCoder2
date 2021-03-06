<%@ page import="main.User" %><%--
  Created by IntelliJ IDEA.
  User: mark231916
  Date: 2019-04-25
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>FitCoder</title>
    <link href='https://fonts.googleapis.com/css?family=Aldrich' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {font-family: Arial, Helvetica, sans-serif; margin: 0;}
        #wrapper {
            padding-left: 10%;
            padding-right: 10%;
            width:80%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .topnav {
            overflow: hidden;
            background-color: #e9e9e9;
            position: fixed;
            top: 0;
            width: 100%;
        }
        .topnav a {
            float: left;
            display: block;
            color: black;
            text-align: center;
            padding: 16px 16px;
            text-decoration: none;
            font-size: 30px;
            font-family: 'Aldrich';
        }
        .topnav a:hover {
            background-color: #ddd;
            color:black;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button {
            background-color: #4DB6AC;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            left: 50%;
            top: 50%;
        }
        .topnav .right {
            float: right;
            padding: 5px 10px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
            background-color: #4DB6AC;
            color: white;
            font-size: 17px;
            border: none;
        }
        button {
            background-color: #4DB6AC;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            left: 50%;
            top: 50%;
        }

        button:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
<jsp:useBean id="user" class="main.User" scope="session">

</jsp:useBean>

<div class="topnav">
    <a href="index.jsp">FitCoder</a>
    <div class="right">
        <p>Hello <%=(((User)session.getAttribute("curr")).getUsername())%></p>
    </div>
</div>

<%
    ((User)session.getAttribute("curr")).setCalorie(request.getParameter("date"), Integer.parseInt(request.getParameter("intake")), true);
    ((User)session.getAttribute("curr")).MakeUserFile();
    request.getRequestDispatcher("main.jsp").forward(request, response);
%>

<div id="wrapper">
    Date: <%=request.getParameter("date")%>
    Calorie: <%=request.getParameter("intake")%>
</div>

</body>
</html>
