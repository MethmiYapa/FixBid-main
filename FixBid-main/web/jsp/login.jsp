<%--
  Created by IntelliJ IDEA.
  User: RuwanaraT
  Date: 3/16/2021
  Time: 11:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/headerFooter.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>FixBid Login </title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>
<%@ include file="/includes/header.jsp" %>

<div class="container mt-5" style="width:25%;">
    <form action="loginSer" method="post">

        <center><h1> Login </h1></center>
        <br> <br>
        <hr>

        <br>

        <div class="form-group">

            <input type="email" class="form-control login" id="email1" name = "email1" aria-describedby="emailHelp"
                   placeholder="Enter Your E-mail Address" pattern="[a-zA-Z0-9.%+-]*{8}" required>

        </div>

        <div class="form-group">

            <input type="password" class="form-control login" id="password1" name="password1" placeholder="Enter Your Password"
                   required>
        </div>

        <div class="form-check">
            <input type="checkbox" class="form-check-input" id="check1" name="check1" value="admin">
            <label class="form-check-label" for="check1"> Admin </label>
            <small id="msg" class="form-text text-muted"> Check this for Admin Login Only </small><br>
        </div>

        <button type="submit" class="btn btn-primary"
                style="border-color: tomato; background-color: white; color: tomato; font-weight: bold; width: 100%; border: 4px tomato solid;" id="btn1" name="btn1">
            Login
        </button>

        <br><br>
        <div class="div1">
            <a href="forgetPassword.jsp" style="color:darkred; font-weight: bold; text-decoration: none"> Forgot Password </a>
        </div>

    </form>
</div>

<%@ include file="/includes/footer.jsp" %>
</body>
</html>
