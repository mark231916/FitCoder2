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
    </style>
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
    user.setName(request.getParameter("name"));
    user.setEmail(request.getParameter("email"));
    user.setGoalWeight(goalWeight);
    user.setBMI();
    user.setIdealCalorie();
    System.out.println(request.getParameter("gender"));
    user.setActivitymultiplier(request.getParameter("activity"));
    user.setGender(request.getParameter("gender"));
%>
<div class="topnav">
    <a href="index.jsp">FitCoder</a>
    <div class="right">
        <p>Hello <%=(user.getUsername())%></p>
    </div>
</div>
<div id="wrapper">
    <form action="index.jsp" method="post">
        <label>Your BMI: <%=user.getBMI()%></label>
        <br>
        <label><b>Ideal Calorie Consumption</b></label>
        <input type="text" placeholder="Please enter your idea calorie consumption" name="calorie" required>
        <label><i>(Your ideal calorie consumption is <%=user.getIdealCalorie()%>)</i></label>
        <button type="submit">Finish</button>
    </form>
</div>
</body>
</html>
