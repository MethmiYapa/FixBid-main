<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Feedback" %>
<%@ page import="util.FeedbackDBUtil" %>
<%@ page import="model.Admin" %>
<%@ page import="util.AdminDBUtil" %>
<%@ page import="model.User" %>
<%@ page import="util.UserDBUtil" %>
<%--
  User: lonewol7f
  Date: 3/16/2021
  Time: 8:47 PM
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="${pageContext.request.contextPath}/js/admin.js"></script>
    <title>Dashboard</title>
    <%
        Admin admin = AdminDBUtil.getSingleAdmin((String) session.getAttribute("email"));
    %>
</head>
<body>
<%--Vertical navigation bar start--%>
<div class="vertical-nav bg-white" id="sidebar">
    <div class="py-4 px-3 mb-4 bg-light">
        <div class="media d-flex align-items-center"><img
                src="<%=admin.getProfilePic() %>" alt="..." width="65"
                class="mr-3 rounded-circle img-thumbnail shadow-sm">
            <div class="media-body">
                <h4 class="m-0"><%=admin.getFirstName() + " " + admin.getLastName() %>
                </h4>
            </div>
        </div>
    </div>

    <p class="text-gray font-weight-bold text-uppercase px-3 small pb-4 mb-0">Main</p>

    <ul class="nav flex-column bg-white mb-0">
        <li class="nav-item">
            <a href="#" onclick="dashboard()" class="nav-link text-dark font-italic bg-light">
                <i class="fas fa-tachometer-alt mr-3 text-primary fa-fw"></i>
                Dashboard
            </a>
        </li>
        <li class="nav-item">
            <a href="#" onclick="users()" class="nav-link text-dark font-italic bg-light">
                <i class="fa fa-users mr-3 text-primary fa-fw"></i>
                Users
            </a>
        </li>
        <li class="nav-item">
            <a href="#" onclick="feedBack()" class="nav-link text-dark font-italic bg-light">
                <i class="fa fa-comments mr-3 text-primary fa-fw"></i>
                Feedback
            </a>
        </li>
    </ul>

    <p class="text-gray font-weight-bold text-uppercase px-3 small py-4 mb-0">Reports</p>

    <ul class="nav flex-column bg-white mb-0">
        <li class="nav-item">
            <a href="#" class="nav-link text-dark font-italic bg-light">
                <i class="fa fa-area-chart mr-3 text-primary fa-fw"></i>
                Area charts
            </a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link text-dark font-italic bg-light">
                <i class="fa fa-bar-chart mr-3 text-primary fa-fw"></i>
                Bar charts
            </a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link text-dark font-italic bg-light">
                <i class="fa fa-pie-chart mr-3 text-primary fa-fw"></i>
                Pie charts
            </a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link text-dark font-italic bg-light">
                <i class="fa fa-line-chart mr-3 text-primary fa-fw"></i>
                Line charts
            </a>
        </li>
    </ul>

    <p class="text-gray font-weight-bold text-uppercase px-3 small py-4 mb-0">Utility</p>

    <ul class="nav flex-column bg-white mb-0">
        <li class="nav-item">
            <a href="#" onclick="profile()" class="nav-link text-dark font-italic bg-light">
                <i class="fas fa-user mr-3 text-primary fa-fw"></i>
                Profile
            </a>
        </li>
        <li class="nav-item">
            <a href="logout" class="nav-link text-dark font-italic bg-light">
                <i class="fas fa-sign-out-alt mr-3 text-primary fa-fw"></i>
                Log Out
            </a>
        </li>
    </ul>
</div>
<!-- End vertical navbar -->
<div class="page-content p-5">
    <div id="dashboard-div">
        <h1>Dashboard</h1>
        <div class="row">
            <div class="col-sm-6">
                <div class="card" style="background-color: royalblue; border: none">
                    <div class="card-body" style="padding-bottom: 30px; padding-top: 30px; color: white">
                        <h6>Total Income</h6>
                        <h3>$579,000</h3>
                        <sub>saved 25%</sub>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card" style="background-color: lightskyblue; border: none">
                    <div class="card-body" style="padding-bottom: 30px; padding-top: 30px; color: white">
                        <h6>Total Expences</h6>
                        <h3>$79,000</h3>
                        <sub>saved 25%</sub>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 20px">
            <div class="col-sm-6">
                <div class="card" style="background-color: rgba(109,19,154,0.55); border: none">
                    <div class="card-body" style="padding-bottom: 30px; padding-top: 30px; color: white">
                        <h6>Cash on Hand</h6>
                        <h3>$92,000</h3>
                        <sub>saved 25%</sub>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card" style="background-color: rgba(19,154,21,0.55); border: none">
                    <div class="card-body" style="padding-bottom: 30px; padding-top: 30px; color: white">
                        <h6>Net Pofit Margin</h6>
                        <h3>$179,000</h3>
                        <sub>saved 65%</sub>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="users-div" style="display: none">
        <h1>Users</h1>
        TO BE IMPLEMENTED
        <table class="table table-hover">
            <thead>
            <tr>
                <th scope="col">User ID</th>
                <th scope="col">First Name</th>
                <th scope="col">Last Name</th>
                <th scope="col">Email</th>
                <th scope="col">Account Type</th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
            <%
                ArrayList<User> users = UserDBUtil.listUser();

                for (User user : users) {
            %>
            <tr>
                <th scope="row"><%=user.getUID() %>
                </th>
                <td><%=user.getFName() %>
                </td>
                <td><%=user.getLName() %>
                </td>
                <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;"><%=user.getEmail() %>
                </td>
                <td><%=user.getAccType() %>
                </td>
                <td>
                    <form method="POST" action="delUser">
                        <input type="hidden" name="uMail" value="<%=user.getEmail()%>"/>
                        <button type="submit" value="<%=user.getEmail() %>" class="btn btn-danger">
                            <i class="fas fa-trash"></i>
                        </button>
                    </form>
                </td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>
    <div id="feedback-div" style="display: none">
        <h1 class="mb-5">Feedback</h1>
        <h3>Content</h3>
        <hr>
        <p class="mb-1"><i class="far fa-link text-muted fa-fw"></i>&nbsp;&nbsp;<a
                class="text-primary font-italic text-monospace" href="#fb_all" style="text-decoration: inherit">All
            feedbacks</a>
        </p>
        <p class="mb-1"><i class="far fa-link text-muted fa-fw"></i>&nbsp;&nbsp;<a
                class="text-primary font-italic text-monospace" href="#fb_suggest" style="text-decoration: inherit">Suggestions</a>
        </p>
        <p class="mb-1"><i class="far fa-link text-muted fa-fw"></i>&nbsp;&nbsp;<a
                class="text-primary font-italic text-monospace" href="#fb_complain" style="text-decoration: inherit">Complains</a>
        </p>

        <hr>
        <br>
        <div id="fb_all">
            <h3>All Feedbacks</h3><br>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">Feedback ID</th>
                    <th scope="col">Email</th>
                    <th scope="col">Feedback Type</th>
                    <th scope="col">Comment</th>
                    <th scope="col">Submitted</th>
                    <th scope="col"></th>
                </tr>
                </thead>
                <tbody>
                <%
                    ArrayList<Feedback> arrayList = FeedbackDBUtil.allFeedback();

                    for (Feedback feedback : arrayList) {
                %>
                <tr>
                    <th scope="row"><%=feedback.getFeedbackID() %>
                    </th>
                    <td><%=feedback.getEmail() %>
                    </td>
                    <td><%=feedback.getType() %>
                    </td>
                    <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;"><%=feedback.getComment() %>
                    </td>
                    <td><%=feedback.getCreated() %>
                    </td>
                    <td>
                        <form method="POST" action="deleteFeedback">
                            <input type="hidden" name="feedbackID" value="<%=feedback.getFeedbackID()%>"/>
                            <button type="submit" value="<%=feedback.getFeedbackID()%>" class="btn btn-danger">
                                <i class="fas fa-trash"></i>
                            </button>
                        </form>
                    </td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>

        </div>
        <div id="fb_suggest">
            <h3>Suggestions</h3><br>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">Feedback ID</th>
                    <th scope="col">Email</th>
                    <th scope="col">Comment</th>
                    <th scope="col">Submitted</th>
                    <th scope="col"></th>
                </tr>
                </thead>
                <tbody>
                <%
                    arrayList = FeedbackDBUtil.suggestFeedback();

                    for (Feedback feedback : arrayList) {
                %>
                <tr>
                    <th scope="row"><%=feedback.getFeedbackID() %>
                    </th>
                    <td><%=feedback.getEmail() %>
                    </td>
                    <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;"><%=feedback.getComment() %>
                    </td>
                    <td><%=feedback.getCreated() %>
                    </td>
                    <td>
                        <form method="POST" action="deleteFeedback">
                            <input type="hidden" name="feedbackID" value="<%=feedback.getFeedbackID()%>"/>
                            <button type="submit" value="<%=feedback.getFeedbackID()%>" class="btn btn-danger">
                                <i class="fas fa-trash"></i>
                            </button>
                        </form>
                    </td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>

        </div>
        <div id="fb_complain">
            <h3>Complains</h3><br>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">Feedback ID</th>
                    <th scope="col">Email</th>
                    <th scope="col">Comment</th>
                    <th scope="col">Submitted</th>
                    <th scope="col"></th>
                </tr>
                </thead>
                <tbody>
                <%
                    arrayList = FeedbackDBUtil.complainFeedback();

                    for (Feedback feedback : arrayList) {
                %>
                <tr>
                    <th scope="row"><%=feedback.getFeedbackID() %>
                    </th>
                    <td><%=feedback.getEmail() %>
                    </td>
                    <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;"><%=feedback.getComment() %>
                    </td>
                    <td><%=feedback.getCreated() %>
                    </td>
                    <td>
                        <form method="POST" action="deleteFeedback">
                            <input type="hidden" name="feedbackID" value="<%=feedback.getFeedbackID()%>"/>
                            <button type="submit" value="<%=feedback.getFeedbackID()%>" class="btn btn-danger">
                                <i class="fas fa-trash"></i>
                            </button>
                        </form>
                    </td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>

        </div>
    </div>
    <div id="profile-div" style="display: none">
        <div class="container">
            <div class="row gutters">
                <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                    <div class="card h-100">
                        <div class="card-body">
                            <div class="account-settings">
                                <div class="user-profile">
                                    <div class="user-avatar">
                                        <img class="img-thumbnail" style="border: 0"
                                             src="<%=admin.getProfilePic() %>"
                                             alt="Admin">
                                    </div>
                                    <div style="text-align: center; margin-top: 30px">
                                        <h5><%=admin.getFirstName() + " " + admin.getLastName() %>
                                        </h5>
                                        <h6><%=admin.getEmail() %>
                                        </h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                    <div class="card h-100">
                        <div class="card-body">
                            <form action="updateAdmin" method="post">
                                <div class="row gutters">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <h6 class="mb-2 text-primary">Personal Details</h6>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label for="firstName">First Name</label>
                                            <input type="text" class="form-control" name="firstName" id="firstName"
                                                   value="<%=admin.getFirstName() %>">
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label for="lastName">Last Name</label>
                                            <input type="text" class="form-control" name="lastName" id="lastName"
                                                   value="<%=admin.getLastName() %>">
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="email" class="form-control" name="email" id="email"
                                                   value="<%=admin.getEmail() %>" disabled>
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label for="phoneNo">Phone Number</label>
                                            <input type="text" class="form-control" id="phoneNo" name="phoneNo"
                                                   value="<%=admin.getPhoneNo() %>">
                                        </div>
                                    </div>
                                </div>
                                <div class="row gutters">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <h6 class="mt-3 mb-2 text-primary">Address</h6>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label for="street">Street</label>
                                            <input type="text" class="form-control" name="street" id="street"
                                                   value="<%=admin.getStreet() %>">
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label for="city">City</label>
                                            <input type="text" class="form-control" name="city" id="city"
                                                   value="<%=admin.getCity() %>">
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label for="state">State/Province</label>
                                            <input type="text" class="form-control" name="state" id="state"
                                                   value="<%=admin.getState() %>">
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label for="zip">Zip Code</label>
                                            <input type="text" class="form-control" name="zip" id="zip"
                                                   value="<%=admin.getZip() %>">
                                        </div>
                                    </div>
                                    <input type="hidden" id="adminId" name="adminId" value="<%=admin.getAdminId() %>">
                                </div>
                                <div class="row gutters">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="text-right">
                                            <button type="submit" id="update" name="update" class="btn btn-primary">
                                                Update
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="btt" id="back-to-top">
        <a href="#"><i class="far fa-chevron-up"></i></a>
    </div>
    <script>
        //Get the button
        const mybutton = document.getElementById("back-to-top");

        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                mybutton.style.display = "block";
            } else {
                mybutton.style.display = "none";
            }
        }
    </script>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>
