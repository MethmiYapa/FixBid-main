<%--
  Created by IntelliJ IDEA.
  User: Sachintha
  Date: 16-Mar-21
  Time: 10:33 AM
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
    <title>Products</title>
</head>
<body>
<%@ include file="/includes/header.jsp" %>

<br><hr><h4>&nbsp; Pens</h4><br>
<div class="card-deck" style="margin-right: 10px;margin-left: 10px">
    <div class="card">
        <img class="card-img-top" src="../images/Products/pen1.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">fdgffdfgd</p>

            <h6 id="countdown"></h6><!-- Display the countdown timer in an element -->
        </div>
        <a href="#" class="btn btn-primary" style="width: 80%;margin-bottom: 15px;margin-left: auto; margin-right: auto;">Bid</a>
        <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
        </div>
    </div>
    <div class="card">
        <img class="card-img-top" src="../images/Products/pen2.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">xxxx</p>
        </div>
        <a href="#" class="btn btn-primary" style="width: 80%;margin-bottom: 15px;margin-left: auto; margin-right: auto;">Bid</a>
        <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
        </div>
    </div>
    <div class="card">
        <img class="card-img-top" src="../images/Products/pen6.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">xxxxxxxxx</p>
        </div>
        <a href="#" class="btn btn-primary" style="width: 80%;margin-bottom: 15px;margin-left: auto; margin-right: auto;">Bid</a>
        <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
        </div>
    </div>
    <div class="card">
        <img class="card-img-top" src="../images/Products/pen4.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">xxxxxxxx</p>
        </div>
        <a href="#" class="btn btn-primary" style="width: 80%;margin-bottom: 15px;margin-left: auto; margin-right: auto;">Bid</a>
        <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
        </div>
    </div>
    <div class="card">
        <img class="card-img-top" src="../images/Products/pen1.jpg" height="300" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">xxxxxxxxx</p>
        </div>
        <a href="#" class="btn btn-primary" style="width: 80%;margin-bottom: 15px;margin-left: auto; margin-right: auto;">Bid</a>
        <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
        </div>
    </div>
</div>

<br><hr><h4>&nbsp; Shoes</h4><br>
<div class="card-deck" style="margin-right: 10px;margin-left: 10px">
    <div class="card">
        <img class="card-img-top" src="../images/Products/af1.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        </div>
        <a href="#" class="btn btn-primary" style="width: 80%;margin-bottom: 15px;margin-left: auto; margin-right: auto;">Bid</a>
        <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
        </div>
    </div>
    <div class="card">
        <img class="card-img-top" src="../images/Products/converse.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
        </div>
        <a href="#" class="btn btn-primary" style="width: 80%;margin-bottom: 15px;margin-left: auto; margin-right: auto;">Bid</a>
        <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
        </div>
    </div>
    <div class="card">
        <img class="card-img-top" src="../images/Products/floral.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
        </div>
        <a href="#" class="btn btn-primary" style="width: 80%;margin-bottom: 15px;margin-left: auto; margin-right: auto;">Bid</a>
        <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
        </div>
    </div>
    <div class="card">
        <img class="card-img-top" src="../images/Products/nb.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        </div>
        <a href="#" class="btn btn-primary" style="width: 80%;margin-bottom: 15px;margin-left: auto; margin-right: auto;">Bid</a>
        <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
        </div>
    </div>
    <div class="card">
        <img class="card-img-top" src="../images/Products/timberland.jpg" height="300" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        </div>
        <a href="#" class="btn btn-primary" style="width: 80%;margin-bottom: 15px;margin-left: auto; margin-right: auto;">Bid</a>
        <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
        </div>
    </div>
</div>

<br><hr><h4>&nbsp;Watches</h4><br>
<div class="card-deck" style="margin-right: 10px;margin-left: 10px">
    <div class="card">
        <img class="card-img-top" src="../images/Products/watch1.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        </div>
        <a href="#" class="btn btn-primary" style="width: 80%;margin-bottom: 15px;margin-left: auto; margin-right: auto;">Bid</a>
        <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
        </div>
    </div>
    <div class="card">
        <img class="card-img-top" src="../images/Products/watch2.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
        </div>
        <a href="#" class="btn btn-primary" style="width: 80%;margin-bottom: 15px;margin-left: auto; margin-right: auto;">Bid</a>
        <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
        </div>
    </div>
    <div class="card">
        <img class="card-img-top" src="../images/Products/watch3.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
        </div>
        <a href="#" class="btn btn-primary" style="width: 80%;margin-bottom: 15px;margin-left: auto; margin-right: auto;">Bid</a>
        <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
        </div>
    </div>
    <div class="card">
        <img class="card-img-top" src="../images/Products/watch4.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        </div>
        <a href="#" class="btn btn-primary" style="width: 80%;margin-bottom: 15px;margin-left: auto; margin-right: auto;">Bid</a>
        <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
        </div>
    </div>
    <div class="card">
        <img class="card-img-top" src="../images/Products/watch5.jpg" height="300" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
        </div>
        <a href="#" class="btn btn-primary" style="width: 80%;margin-bottom: 15px;margin-left: auto; margin-right: auto;">Bid</a>
        <div class="card-footer">
            <small class="text-muted">Last updated 3 mins ago</small>
        </div>
    </div>
</div>



<%@ include file="/includes/footer.jsp" %>
</body>
</html>
