<%--
  Created by IntelliJ IDEA.
  main.User: mark231916
  Date: 4/17/2019
  Time: 3:37 PM
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


    .topnav .login-container {
      float: right;
    }

    /* Full-width input fields */
    input[type=text], input[type=password] {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
    }


    #wrapper {
      width: 100%;
      height: 100%;
      display: flex;
      align-items: center;
      justify-content: center;
      background: url(/img/gym.jpg);
      color: rgb(0, 0, 0);
    }

    .topnav .login-container button {
      float: right;
      padding: 22px 20px;
      margin-top: 0px;
      margin-right: 0px;
      margin-bottom: 0px;
      background-color: #4DB6AC;
      color: white;
      font-size: 17px;
      border: none;
      cursor: pointer;
    }
    /* Set a style for all buttons */
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

    /* Extra styles for the cancel button */
    .cancelbtn {
      width: auto;
      padding: 10px 18px;
      background-color: #f44336;
    }

    /* Center the image and position the close button */
    .imgcontainer {
      text-align: center;
      margin: 24px 0 12px 0;
      position: relative;
    }

    .imgcontainer a {
        color: black;
        text-align: center;
        padding: 16px 16px;
        text-decoration: none;
        font-size: 30px;
        font-family: 'Aldrich';
    }

    img.avatar {
      width: 40%;
      border-radius: 50%;
    }

    .container {
      padding: 16px;
    }

    span.psw {
      float: right;
      padding-top: 16px;
    }
    .img-background{
      background-image: url(img/gym.jpg);
      background-color: #cccccc;
      height: 500px;
      background-position: center;
      background-repeat: no-repeat;
      background-size: cover;
      position: relative;
    }

    /* The Modal (background) */
    .modal {
      display: none; /* Hidden by default */
      position: fixed; /* Stay in place */
      z-index: 1; /* Sit on top */
      left: 0;
      top: 0;
      width: 100%; /* Full width */
      height: 100%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      background-color: rgb(0,0,0); /* Fallback color */
      background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
      padding-top: 60px;
    }

    /* Modal Content/Box */
    .modal-content {
      background-color: #fefefe;
      margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
      border: 1px solid #888;
      width: 50%; /* Could be more or less, depending on screen size */
    }

    /* The Close Button (x) */
    .close {
      position: absolute;
      right: 25px;
      top: 0;
      color: #000;
      font-size: 35px;
      font-weight: bold;
    }

    .close:hover,
    .close:focus {
      color: red;
      cursor: pointer;
    }

    /* Add Zoom Animation */
    .animate {
      -webkit-animation: animatezoom 0.6s;
      animation: animatezoom 0.6s
    }

    @-webkit-keyframes animatezoom {
      from {-webkit-transform: scale(0)}
      to {-webkit-transform: scale(1)}
    }

    @keyframes animatezoom {
      from {transform: scale(0)}
      to {transform: scale(1)}
    }

    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
      span.psw {
        display: block;
        float: none;
      }
      .cancelbtn {
        width: 100%;
      }
    }

  </style>
</head>
<body>

<div class="topnav">
  <a href="index.jsp">FitCoder</a>
  <div class="login-container">
    <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
  </div>
</div>

<div id="wrapper">
  <p>Project Description: </p>
</div>

<div id="id01" class="modal">

  <form class="modal-content animate" action="doLogin.jsp" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
        <a href="index.jsp">FitCoder</a>
    </div>

    <div class="container">
      <label><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="username" required>

      <label><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>

      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw"> Don't have an account? <a href="signUp.jsp">Signup</a></span>
    </div>
  </form>
</div>

<script>
  // Get the modal
  var modal = document.getElementById('id01');

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
</script>

</body>
</html>