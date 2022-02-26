<%@ page import="model.User" %>
<%@ page import="util.UserDBUtil" %>
<%--
  Created by IntelliJ IDEA.
  User: RuwanaraT
  Date: 5/20/2021
  Time: 1:00 PM
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/userProfile.css">
    <title>Delete Account</title>

    <%
        String email1 = (String) session.getAttribute("email1");
        User user = UserDBUtil.getSingleUser(email1);
    %>
</head>
<body>
<%@ include file="/includes/header.jsp" %>
<div class = "container mt-5" style="background-color:  whitesmoke; width : 50%">
    <form action="deleteUser" method="post">
        <center> <h1 style="color: #001B48; font-weight: bold;"> My FixBid  </h1> </center>

        <img src = ../images/User/pp.png class = "ProPic">

        <br><br>

        <div class="row">
            <div class="col">
                <label for="one" class = "lbl">First Name</label>
            </div>
            <div class="col">
                <input type="text" class="form-control" id = "one" name = "one" class = "txtbx" value = "<%=user.getFName()%>">
            </div>
        </div> <br>

        <div class="row">
            <div class="col">
                <label for="two" class = "lbl">Last Name</label>
            </div>
            <div class="col">
                <input type="text" class="form-control" id = "two" name = "two" class = "txtbx" value="<%=user.getLName()%>">
            </div>
        </div> <br>


        <div class="row">
            <div class="col">
                <label for="three" class = "lbl">Address</label>
            </div>
            <div class="col">
                <input type="text" class="form-control" id = "three" name = "three" class = "txtbx" value="<%=user.getAddress()%>">
            </div>
        </div> <br>

        <div class="row">
            <div class="col">
                <label for="four" class = "lbl">Phone Number</label>
            </div>
            <div class="col">
                <input type="text" class="form-control" id = "four" name = "four" class = "txtbx" value="<%=user.getPhoneNumber()%>">
            </div>
        </div> <br>

        <div class="row">
            <div class="col">
                <label for="five" class = "lbl">E-mail</label>
            </div>
            <div class="col">
                <input type="email" class="form-control" id = "five" name = "five" class = "txtbx" value="<%=user.getEmail()%>">
            </div>
        </div> <br>

        <button type="submit" class="btn btn-primary" style="font-weight: bold; background-color: firebrick; position: relative; left: 35%">PERMANENTLY DELETE</button>
        <button class="btn btn-primary" style="background-color:mediumseagreen; font-weight: bold; position: relative; left:38%"> <a href="userProfile.jsp" style="color: white; text-decoration:none;"> NO </a> </button>

        <br> <br>
    </form>
</div>
<%@ include file="/includes/footer.jsp" %>
</body>
</html>
