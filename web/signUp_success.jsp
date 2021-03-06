<%--
  Created by IntelliJ IDEA.
  main.User: mark231916
  Date: 2019-04-22
  Time: 23:45
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
        select {
            width: 100%;
            height: 24px;
            color: black;
            padding: 16px 20px;
            border: none;
            border-radius: 4px;
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
<jsp:useBean id="user" class="main.User" scope="session"/>
<div class="topnav">
    <a href="index.jsp">FitCoder</a>
    <div class="right">
        <p>Hello <%=(user.getUsername())%></p>
    </div>
</div>
<div id="wrapper">
    <form action="personal.jsp" method="post">
        <label><b>Email</b></label>
        <input type="text" placeholder="Please enter your email" name="email" required>

        <label><b>Name</b></label>
        <input type="text" placeholder="Please enter your name" name="name" required>

        <label><b>Weight</b></label>
        <input type="text" placeholder="Please enter your weight in kg" name="weight" required>

        <label><b>Height</b></label>
        <input type="text" placeholder="Please enter your height in m" name="height" required>

        <label><b>Goal Weight</b></label>
        <input type="text" placeholder="Please enter your goal weight in kg" name="goalWeight" required>

        <label><b>Age</b></label>
        <input type="text" placeholder="Please enter your age" name="age" required>

        <label><b>Gender</b></label>
        <br>
        <select id="gender" name="gender">
            <option value="0">Please select your gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select>
        <br>
        <label><b>Activity Level</b></label>
        <br>
        <select id="activity" name="activity">
            <option value="0">Please select your daily activity level</option>
            <option value="Very Light">Very Light</option>
            <option value="Light">Light</option>
            <option value="Moderate">Moderate</option>
            <option value="Heavy">Heavy</option>
            <option value="Very Heavy">Very Heavy</option>
        </select>

        <button type="submit">Finish</button>
    </form>
</div>
</body>
</html>