<%@ page import="model.User" %>
<%@ page import="util.UserDBUtil" %>
<%--
  Created by IntelliJ IDEA.
  User: RuwanaraT
  Date: 4/22/2021
  Time: 11:28 PM
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/userProfile.css"
    <title>My FixBid</title>

    <%
        String email1 = (String) session.getAttribute("email1");
        User user = UserDBUtil.getSingleUser(email1);
    %>
</head>
<body>
<%@ include file="/includes/header.jsp" %>

<div class = "container mt-5" style="background-color:  whitesmoke; width : 50%">
    <form action="updateUser" method="post">
        <center> <h1 style="color: #001B48; font-weight: bold;"> My FixBid  </h1> </center>

        <!----- <div class="form-check">
               <input class="form-check-input" type="radio" name="tik" id="tik1" value="user" checked>
               <label class="form-check-label" for="tik1">
                 User Account
               </label>
             </div>
             <div class="form-check">
               <input class="form-check-input" type="radio" name="tik" id="tik2" value="vendor">
               <label class="form-check-label" for="tik2">
                 Vendor Account
               </label> --->

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

        <button class="btn btn-primary" style="background-color:brown; font-weight: bold; color: white;"> <a href="deleteUser.jsp" style="color: white; text-decoration:none;"> DELETE ACCOUNT </a> </button>

        <button class="btn btn-primary" style="background-color:mediumseagreen; font-weight: bold; position: relative; left:20%"> <a href="/jsp/logout" style="color: white; text-decoration:none;"> LOG OUT </a> </button>

        <button type="submit" class="btn btn-primary" style="background-color:#018abe; font-weight: bold; position: relative; left:55%;">EDIT</button> <br> <br>

    </form>
</div>

<%@ include file="/includes/footer.jsp" %>
</body>
</html>
