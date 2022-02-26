<%@ page import="util.ProductDBUtil" %>
<%@ page import="model.Product" %><%--
  Created by IntelliJ IDEA.
  User: Sachintha
  Date: 26-May-21
  Time: 12:23 AM
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
    <title>Products</title>
</head>
<body>
<%@ include file="/includes/header.jsp" %>

<!--have to connect the session here-->
<%
    int pid = (Integer) session.getAttribute("pid");
//    int convertedPid = Integer.parseInt(pid);
    Product product = ProductDBUtil.selectOneProduct(pid);
%>
<!--start of form-->

<center>
    <form action="updateProduct" method="post" class="form-horizontal">
        <fieldset>

            <!-- Form Name -->
            <legend>UPDATE A PRODUCT</legend>

            <!--Product ID cannot change-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="prodID">PRODUCT ID</label>
                <div class="col-md-4">
                    <input id="prodID" name="prodID" placeholder="PRODUCT NAME" class="form-control input-md" required="" type="text" value="<%=product.getPid()%>" disabled>
                    <input type="hidden" name="pid" value="<%=product.getPid()%>" >
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="nameEdit">UPDATE PRODUCT NAME</label>
                <div class="col-md-4">
                    <input id="nameEdit" name="nameEdit" placeholder="PRODUCT NAME" class="form-control input-md" required="" type="text" value="<%=product.getpName()%>">
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="dateEdit">Update Bid Expiry Date</label>
                <div class="col-md-4">
                    <input id="dateEdit" name="dateEdit" placeholder="DD/MM/YYYY" class="form-control input-md" required="" type="text" value="<%=product.getExpDate()%>">

                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="priceEdit">UPDATE START PRICE(USD $)</label>
                <div class="col-md-4">
                    <input id="priceEdit" name="priceEdit" placeholder="Enter a USD value(Ex:10)" class="form-control input-md" required="" type="text" value="<%=product.getStartPrice()%>" disabled>

                </div>
            </div>

            <!-- Textarea -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="descriptionEdit">UPDATE PRODUCT DESCRIPTION</label>
                <div class="col-md-4">
                    <textarea class="form-control" id="descriptionEdit" name="descriptionEdit" value="<%=product.getDescription()%>"></textarea>
                </div>
            </div>


            <!-- Button -->
            <div class="form-group">
                <div class="col-md-4">
                    <button id="submitbutton" name="submitbutton" class="btn btn-primary">Submit Product</button>
                </div>
            </div>

        </fieldset>
    </form>
</center>


<!--end of form-->

<%@ include file="/includes/footer.jsp" %>
</body>
</html>

