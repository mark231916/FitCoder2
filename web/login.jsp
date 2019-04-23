<%--
  Created by IntelliJ IDEA.
  main.User: mark231916
  Date: 2019-04-18
  Time: 23:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>FitCoder</title>
</head>
<body>
<form name="loginForm" action="doLogin.jsp" method="post">
    <table>
        <tr>
            <td>Username</td>
            <td><input type="text" name="username"/></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="submit"/></td>
        </tr>
    </table>
</form>
</body>
</html>
