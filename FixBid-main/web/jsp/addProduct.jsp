<%--
  Created by IntelliJ IDEA.
  User: Sachintha
  Date: 22-May-21
  Time: 12:04 PM
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



<!--start of form-->

<center>
<form action="addedProduct" method="post" class="form-horizontal">
    <fieldset>

        <!-- Form Name -->
        <legend>ADD A PRODUCT</legend>


        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name">PRODUCT NAME</label>
            <div class="col-md-4">
                <input id="product_name" name="product_name" placeholder="PRODUCT NAME" class="form-control input-md" required="" type="text">
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="expiry_date">Bid Expiry Date</label>
            <div class="col-md-4">
                <input id="expiry_date" name="expiry_date" placeholder="DD/MM/YYYY" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="start_price">START PRICE(USD $)</label>
            <div class="col-md-4">
                <input id="start_price" name="start_price" placeholder="Enter a USD value(Ex:10)" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Textarea -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_description">PRODUCT DESCRIPTION</label>
            <div class="col-md-4">
                <textarea class="form-control" id="product_description" name="product_description"></textarea>
            </div>
        </div>

        <!-- Select Basic -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_type">PRODUCT TYPE</label>
            <div class="col-md-4">
                <select id="product_type" name="product_type" class="form-control">
                    <option selected value="Watch">Watch</option>
                    <option value="Shoes">Shoes</option>
                    <option value="Pens">Pens</option>
                </select>
            </div>
        </div>


        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="vendor_id">VENDOR ID</label>
            <div class="col-md-4">
                <input id="vendor_id" name="vendor_id" placeholder="VENDOR ID" class="form-control input-md" required="" type="text">

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
