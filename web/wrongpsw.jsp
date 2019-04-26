<%--
  Created by IntelliJ IDEA.
  User: mark231916
  Date: 2019-04-26
  Time: 04:26
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
            width:100%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            background: url(/img/gym.jpg);
            color: rgb(0,0,0);
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
            width: 50%;
            left: 50%;
            top: 50%;
        }
    </style>
</head>
<body>
<div class="topnav">
    <a href="index.jsp">FitCoder</a>
</div>

<div id="wrapper">
    <button onclick="window.location.href = 'index.jsp';">Wrong password. Please try again.</button>
</div>


</body>
</html>
