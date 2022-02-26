<%--
  User: lonewol7f
  Date: 3/8/2021
  Time: 7:12 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<footer style="background-color: #16151a;">
    <div class="container-fluid mt-5">
        <div class="card">
            <div class="row mb-4 ">
                <div class="col-md-4 col-sm-11 col-xs-11">
                    <div class="footer-text pull-left">
                        <div class="d-flex">
                            <!-- <h1 class="font-weight-bold mr-1 px-3" style="color:#16151a; background-color:#957bda"> F </h1> -->
                            <h1 style="color: #02457A;letter-spacing: 2pc;font-weight: bold;">FIXBID</h1>
                        </div>
                        <p class="card-text">Since 2021</p>
                        <div class="social mt-2 mb-3"><i class="fa fa-facebook-official fa-lg"></i> <i
                                class="fa fa-instagram fa-lg"></i> <i class="fa fa-twitter fa-lg"></i> <i
                                class="fa fa-linkedin-square fa-lg"></i> <i class="fa fa-facebook"></i></div>
                    </div>
                </div>
                <div class="col-md-2 col-sm-1 col-xs-1 mb-2"></div>
                <div class="col-md-2 col-sm-4 col-xs-4">
                    <h5 class="heading">Services</h5>
                    <ul>
                        <li>IT Consulting</li>
                        <li>Development</li>
                        <li>Cloud</li>
                        <li>DevOps & Support</li>
                    </ul>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-4">
                    <h5 class="heading">Industries</h5>
                    <ul class="card-text">
                        <li>Finance</li>
                        <li>Public Sector</li>
                        <li>Smart Office</li>
                        <li>Retail</li>
                    </ul>
                </div>
                <div class="col-md-2 col-sm-4 col-xs-4">
                    <h5 class="heading">Company</h5>
                    <ul class="card-text">
                        <li>About Us</li>
                        <li>Contact</li>
                        <li><a style="color: inherit;text-decoration: none" href="${pageContext.request.contextPath}/jsp/register.jsp">Join Us</a></li>
                        <li><a style="color: inherit;text-decoration: none" href="${pageContext.request.contextPath}/jsp/feedback.jsp">Feedback</a></li>
                    </ul>
                </div>
            </div>
            <div class="divider mb-4"></div>
            <div class="row" style="font-size:10px;">
                <div class="col-md-4 col-sm-4 col-xs-4">
                    <div class="pull-left">
                        <p><i class="fa fa-copyright"></i> 2021 FixBid</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-4">
                    <div class="pull-left">
                        <p><i class="fa fa-phone"></i>&nbsp;&nbsp;+94 77 123 1234</p>
                    </div>
                    <div class="pull-right">
                        <p><i class="fa fa-envelope-o"></i>&nbsp;&nbsp;support@fixbid.com</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-4">
                    <div class="pull-right mr-4 d-flex policy">
                        <div>Terms of Use</div>
                        <div>Privacy Policy</div>
                        <div>Cookie Policy</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>

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

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
