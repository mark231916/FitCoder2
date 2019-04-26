<%@ page import="main.User" %><%--
  Created by IntelliJ IDEA.
  User: mark231916
  Date: 2019-04-25
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%
    Gson gsonObj = new Gson();
    Map<Object,Object> map = null;
    List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();

    map = new HashMap<Object,Object>(); map.put("label", "FY07"); map.put("y", 188); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "FY08"); map.put("y", 213); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "FY09"); map.put("y", 213); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "FY10"); map.put("y", 219); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "FY11"); map.put("y", 207); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "FY12"); map.put("y", 167); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "FY13"); map.put("y", 136); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "FY14"); map.put("y", 152); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "FY15"); map.put("y", 129); list.add(map);
    map = new HashMap<Object,Object>(); map.put("label", "FY16"); map.put("y", 155); list.add(map);

    String dataPoints = gsonObj.toJson(list);
%>
<html>
<head>
    <title>FitCoder</title>
    <link href='https://fonts.googleapis.com/css?family=Aldrich' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script type="text/javascript">
        window.onload = function() {

            var chart = new CanvasJS.Chart("chartContainer", {
                theme: "light2",
                title: {
                    text: "Iron Ore Production in India"
                },
                axisX: {
                    title: "Fiscal Year"
                },
                axisY: {
                    title: "Production ( in million tonnes )"
                },
                data: [{
                    type: "line",
                    yValueFormatString: "#,##0mn tonnes",
                    dataPoints : <%=dataPoints%>
                }]
            });
            chart.render();

        }
    </script>

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $( function() {
            $( "#datepicker" ).datepicker();
        } );
    </script>
    <style>
        .chart {
            background: white;
            border-left: none;
            border-bottom: none;
            padding-left: 5%;
            padding-right: 5%;
            width: 80%;
            height: 80%;
            padding-top: 5%;
            align-items: center;
        }
        body {font-family: Arial, Helvetica, sans-serif; margin: 0;}
        #wrapper {
            padding-left: 5%;
            padding-right: 5%;
            padding-top: 0;
            width:90%;
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
        form {
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            width: 50%;
            left: 50%;
            top: 50%;
        }

        button:hover {
            opacity: 0.8;
        }
        table {
            border-collapse: collapse;
            padding-right: 20px;
            margin-right: 10px;
            width: 100%;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {background-color:#f5f5f5;}
        .content {
            padding-left: 5%;
            padding-right: 5%;
            width: 80%;
            height: 80%;
            padding-top: 5%;
            align-items: center;
        }
    </style>
</head>
<body>
<jsp:useBean id="currUser" class="main.User" scope="session">

</jsp:useBean>
<jsp:useBean id="user" class="main.User" scope="session">

</jsp:useBean>
<div class="topnav">
    <a href="index.jsp">FitCoder</a>
    <div class="right">
        <p>Hello <%=(((User)(session.getAttribute("curr"))).getUsername())%></p>
    </div>
</div>

<div id="chartContainer" style="padding-top:5%; height: 80%; width: 80%; padding-left: 5%; padding-right: 5%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

<div id="wrapper">

    <table>
        <tr>
            <th>Your Information</th>
            <th> </th>
        </tr>
        <tr>
            <th>Name</th>
            <td><%=(((User)(session.getAttribute("curr"))).getName())%></td>
        </tr>
        <tr>
            <th>Age</th>
            <td><%=(((User)(session.getAttribute("curr"))).getAge())%></td>
        </tr>
        <tr>
            <th>Height</th>
            <td><%=(((User)(session.getAttribute("curr"))).getHeight())%>m</td>
        </tr>
        <tr>
            <th>Weight</th>
            <td><%=(((User)(session.getAttribute("curr"))).getWeight())%>kg</td>
        </tr>
        <tr>
            <th>Goal Weight</th>
            <td><%=(((User)(session.getAttribute("curr"))).getGoalWeight())%>kg</td>
        </tr>
        <tr>
            <th>Ideal Calorie Intake</th>
            <td><%=(((User)(session.getAttribute("curr"))).getIdealCalorie())%>Cal</td>
        </tr>
    </table>
    <form action="addCalorie.jsp" method="post">
        <label><b>Please choose date:</b></label>
        <input type="text" id="datepicker" name="date">
        <label><b>Please enter your calorie intake: </b></label>
        <input type="text" placeholder="Calorie intake" name="intake" required>
        <button type="submit">Add your daily calorie intake</button>
    </form>

</div>

</body>
</html>
