<%--
  Created by IntelliJ IDEA.
  main.User: mark231916
  Date: 2019-04-18
  Time: 23:31
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
            width: 100%;
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
            color: black;
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

        </style>
</head>
<body>
<div class="topnav">
    <a href="index.jsp">FitCoder</a>
    <div class="right">
        <p>Hello <%=(session.getAttribute("loginUser"))%></p>
    </div>
</div>


</body>
</html>
