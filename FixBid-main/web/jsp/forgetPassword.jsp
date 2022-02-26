<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 5/27/2021
  Time: 3:01 PM
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
    <title>FixBid - Reset Password</title>
</head>
<body>
<%@ include file="/includes/header.jsp" %>
<div class = "container mt-5" style="background-color:  whitesmoke; width : 35%; height : 50%">

    <form action="forgetPassword" method="post">

        <center> <h1 style="font-weight: bold"> Reset Password </h1> </center>

            <br><br>

            <div class="form-group">
                <label for="em" style="font-weight: bold"> User Email Address </label>
                <input type="email" name="em" id="em" class="form-control" placeholder="Enter Your E-mail Address" pattern="[a-zA-Z0-9.%+-]*{8}" required>

            </div>

            <div class="form-group">
                <label for="repass" style="font-weight: bold"> New Password  </label>
                <input type="text" name="repass" id="repass" class="form-control" placeholder="Enter Your New Password" required>

            </div>

            <br>

        <center> <button type="submit" class="btn btn-primary" id="res_submit" style="font-weight: bold"> Reset </button> </center>

    </form>

</div>
<%@ include file="/includes/footer.jsp" %>
</body>
</html>
