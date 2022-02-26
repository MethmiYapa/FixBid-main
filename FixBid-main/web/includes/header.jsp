<%--
  User: lonewol7f
  Date: 3/8/2021
  Time: 7:07 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container_top pt-2 pb-2">
    <div class="row" style="margin-right: inherit">
        <div class="col" style="text-align: right">
            <button class="btn bg-white mr-4"><i class='far fa-heart'></i>&nbsp;&nbsp;<a>Wishlist</a></button>
            <a href="${pageContext.request.contextPath}/jsp/login.jsp" style="text-decoration: inherit">
                <button class="btn btn-outline-info mr-4">Log in</button>
            </a>
            <a href="${pageContext.request.contextPath}/jsp/register.jsp">
                <button class="btn btn-info mr-1">Sign up</button>
            </a>
            <a href="${pageContext.request.contextPath}/jsp/cart.jsp">
            <button class="btn btn-outline-info mr-4">cart</button>
            </a>
        </div>
    </div>
</div>
<nav class="navbar navbar-expand-sm navbar-dark bg-blue py-3 sticky-top">
    <a href="${pageContext.request.contextPath}/index.jsp" class="navbar-brand">Home</a>
    <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarMenu">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item"><a href="${pageContext.request.contextPath}/jsp/product.jsp"
                                    class="nav-link">Products</a></li>
            <li class="nav-item"><a href="${pageContext.request.contextPath}/jsp/about.jsp" class="nav-link">About</a>
            </li>
            <li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
        </ul>
        <form class="form-inline">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>
