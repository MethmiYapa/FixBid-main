<%@ page import="java.util.ArrayList" %>
<%@ page import="util.ProductDBUtil" %>
<%@ page import="model.Product" %>
<%--
  Created by IntelliJ IDEA.
  User: Sachintha
  Date: 24-May-21
  Time: 10:16 AM
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
    <script src="../js/product.js"></script>
    <title>All Products</title>

    <%
        ArrayList<Product> products = ProductDBUtil.listProduct();

    %>
</head>
<body>
<%@ include file="/includes/header.jsp" %>



<!--Start of table-->
<br><br>
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th scope="col">#pid</th>
        <th scope="col">Product Name</th>
        <th scope="col">Expiry Date</th>
        <th scope="col">Start Price</th>
        <th scope="col">Product Type</th>
        <th scope="col">Action</th>

    </tr>
    </thead>
    <tbody>
    <%
        for (Product p : products) {%>
        <form action ="handleProduct" method="post">
            <input type = "hidden" name="pid" value="<%=p.getPid() %>">
            <tr scope="row">
                <td><%=p.getPid() %></td>
                <td><%=p.getpName() %></td>
                <td><%=p.getExpDate()%></td>
                <td><%=p.getStartPrice()%></td>
                <td><%=p.getProductType()%></td>
                <td>
                    <input type="submit" name="btn" value="Edit">
                    <input type="submit" name="btn" value="Delete">

                </td>
            </tr>
        </form>
        <% }

        %>




    </tbody>
</table>


<!--End of table-->
<%@ include file="/includes/footer.jsp" %>
</body>
</html>
