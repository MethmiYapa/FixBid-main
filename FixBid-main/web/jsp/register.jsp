<%--
  Created by IntelliJ IDEA.
  User: RuwanaraT
  Date: 3/15/2021
  Time: 11:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>FixBid Registration</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/headerFooter.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/FixBid_Registration.css">
    <script src="${pageContext.request.contextPath}/js/register.js"></script>
    <title> FixBid Registration </title>
</head>
<body>
<%@ include file="/includes/header.jsp" %>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>


<div class="container mt-5" style="background-color: whitesmoke; width : 50%">

    <form action="registerSer" method="post" onsubmit="return checkPassword()">

        <center><h1> FixBid Registration </h1></center>
        <hr>
        <label for = "FName"> Account Type </label>

        <div class="row">
            <div class="col">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="Radios" id="UAcc" value="user" checked>
                    <label class="form-check-label" for="UAcc">
                        User Account
                    </label>
                </div>

            </div>
            <div class="col">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="Radios" id="VAcc" value="vendor">
                    <label class="form-check-label" for="VAcc">
                        Vendor Account
                    </label>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <label for="FName"> First Name </label>
                <input type="text" name="FName" id="FName" class="form-control" placeholder="Enter Your First Name"
                       required>
            </div>
            <div class="col">
                <label for="LName"> Last Name </label>
                <input type="text" name="LName" id="LName" class="form-control" placeholder="Enter Your Last Name"
                       required>
            </div>
        </div>

        <div class="form-group">
            <label for="address"> Home Address </label>
            <textarea class="form-control" name="address" id="address" rows="3"
                      placeholder="Enter Your Home Address " required></textarea>
        </div>

        <div class="row">
            <div class="col">
                <label for="phoneNumber"> Mobile Number </label>
                <input type="text" name="phoneNumber" id="phoneNumber" class="form-control" placeholder="Enter Your Mobile Number" required>
            </div>
            <div class="col">
                <label for="email"> E-mail </label>
                <input type="email" name="email" id="email" class="form-control" placeholder="Enter Your E-mail Address"
                       pattern="[a-zA-Z0-9.%+-]*{8}" required>
            </div>
        </div>

        <div class="form-group">
            <label for="password"> Password </label>
            <input type="password" name="password" class="form-control" id="password" placeholder="Enter Your Password"
                   required>
        </div>

        <div class="form-group">
            <label for="RePassword"> Re-Enter Password </label>
            <input type="password" name="RePassword" class="form-control" id="RePassword"
                   placeholder="Enter Your Password Again" required>
        </div>

        <div class="form-check">
            <input type="checkbox" class="form-check-input" name="terms" id="terms" required onclick = "enableButton()">
            <label class="form-check-label" for="terms"> Accept Privacy & Policy Terms </label>
        </div>

        <br>

        <button type="submit" class="btn btn-primary" id="reg_submit" style="background-color:#02457A;">Submit</button>

        <button type="reset" class="btn btn-primary" id="reg_cancel" style="background-color:tomato;">Cancel</button>

    </form>

</div>
<%@ include file="/includes/footer.jsp" %>
</body>
</html>
