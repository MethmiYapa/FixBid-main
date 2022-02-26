<%--
  Created by IntelliJ IDEA.
  User: Methmini
  Date: 3/20/2021
  Time: 11:40 PM
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
    <title>SHOPPING CART</title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>
<body>
<%@ include file="/includes/header.jsp" %>

<center><h1> SHOPPING CART </h1></center>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container">
    <table id="cart" class="table table-hover table-condensed">

        <tr>
            <th style="width:50%">Product</th>
            <th style="width:10%">Price</th>
            <th style="width:8%">Quantity</th>
            <th style="width:22%" class="text-center">Subtotal</th>
            <th style="width:10%"></th>
        </tr>
        <tr>
            <td data-th="Product">
                <div class="row">
                    <div class="col-sm-2 hidden-xs"><img src="../images/Products/watch2.jpg" alt="..." class="img-responsive"/></div>
                    <div class="col-sm-10">
                        <h4 class="nomargin">watch 1</h4>
                    </div>
                </div>
            </td>
            <td data-th="Price">Rs:1000</td>
            <td data-th="Quantity">
                <input type="number" class="form-control text-center" value="2">
            </td>
            <td data-th="Subtotal" class="text-center">Rs:2000</td>

        </tr>
        <tr>
            <td data-th="Product">
                <div class="row">
                    <div class="col-sm-2 hidden-xs"><img src="../images/Products/pen1.jpg" alt="..." class="img-responsive"/></div>
                    <div class="col-sm-10">
                        <h4 class="nomargin">Pen 1</h4>
                    </div>
                </div>
            </td>
            <td data-th="Price">Rs:100</td>
            <td data-th="Quantity">
                <input type="number" class="form-control text-center" value="1">
            </td>
            <td data-th="Subtotal" class="text-center">Rs:100</td>

        </tr>
        </tr>
        <tr>
            <td data-th="Product">
                <div class="row">
                    <div class="col-sm-2 hidden-xs"><img src="../images/Products/timberland.jpg"  alt="..." class="img-responsive"/></div>
                    <div class="col-sm-10">
                        <h4 class="nomargin">shoe 1</h4>
                    </div>
                </div>
            </td>
            <td data-th="Price">Rs:2000</td>
            <td data-th="Quantity">
                <input type="number" class="form-control text-center" value="2">
            </td>
            <td data-th="Subtotal" class="text-center">Rs:4000</td>
        </tr>

        <tfoot>
        <tr>
        <td>
            <a href="#" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
            <td colspan="2" class="hidden-xs"></td>
            <td><a href="checkout.jsp">checkout</a>
                <onclick="document.forms[0].action = 'checkout.jsp'; return true;" />
            </td>
        </tr>
        </tfoot>
    </table>
</div>
<%@ include file="/includes/footer.jsp" %>
</body>
</html>