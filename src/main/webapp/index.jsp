<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Protect you bike</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom Google Web Font -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic'
          rel='stylesheet' type='text/css'>

    <!-- Add custom CSS here -->
    <link href="css/custom.css" rel="stylesheet">
    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/custom.js"></script>

</head>

<body>

<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">Protect Your Bike</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#" class="scroll-link" data-id="home">Home</a></li>
            <li><a href="#" class="scroll-link" data-id="about">About Us</a></li>
            <li><a href="#" class="scroll-link" data-id="services">Services</a></li>
            <li><a href="#" class="scroll-link" data-id="contact">Infographics</a></li>
            <li><a style="cursor:pointer;" id="loginpopup">Login / Signup</a></li>
            <%
                if (!("".equals(request.getSession().getAttribute("sessionId")) ||
                        request.getSession().getAttribute("sessionId") == null)) {%>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Welcome
                    <strong><%=request.getSession().getAttribute("name") %>
                    </strong> <b
                            class="caret"></b></a>
                <ul class="dropdown-menu">


                    <li><a href="user.jsp">My Account</a></li>

                    <li class="divider"></li>

                        <form name="submitForm" method="POST" action="/logout">
                        <input type="hidden" name="param1" value="param1Value">
                        <a href="javascript:document.submitForm.submit()">Logout</a>

                    </form>

                    <%
                        }
                    %>


                </ul>
            </li>
        </ul>
        <!--
        <form class="navbar-form navbar-right" role="search">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
          </div>
          <button type="submit" class="btn btn-default">Submit</button>
        </form>
        -->
    </div>
    <!-- /.navbar-collapse -->
</nav>
<!-- Code for Login / Signup Popup -->
<!-- Modal Log in -->
<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
    <div class="modal-dialog" style="margin-top: 150px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel1">Login to Landing</h4>
            </div>
            <%--start LOGIN form--%>
            <form action="/login" method="post">
                <div class="modal-body" id="login_details">
                    <span> Already have an account? </span> </br></br>
                    *<span style="font-weight:bold;">Your Email</span><br/>
                    <input type="text" placeholder="example@gmail.com" name="login_email"/><br/></br>
                    *<span style="font-weight:bold;">Password</span><br/>
                    <input type="password" placeholder="Password" name="login_password"/><br/>
                </div>
                <div class="modal-footer">
                    <input style="float: left" type="submit" class="btn btn-success" value="Log In"/>
                    <span class="fp-link"> <a href="#">Forgot Password?</a></span>
                    </br></br>
                    <span> Not a member yet?</span>
                    <span id="signup-link" style="cursor:pointer;" class="text-info">Sign Up!</span>
                </div>
            </form>
            <%--end LOIN form--%>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!--Modal Login Ends -->
<!-- Modal Sign-up Starts -->
<div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
    <div class="modal-dialog" style="margin-top: 100px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel2">Sign Up to protect your bike</h4>
            </div>
            <form action="/registration" method="post">
                <div class="modal-body" id="signup_details">
                    <span>Full Name</span>
                    <input type="text" placeholder="Full Name" name="register_name"/> </br></br>
                    *<span>Email</span>
                    <input type="text" placeholder="example@gmail.com" name="register_email"/></br></br>

                    *<span>Password</span>
                    <input type="password" id="pass" placeholder="Password" name="register_password"/></br></br>

                    <script type="text/javascript" src="js/check_pass.js"></script>

                    *<span>Password Re-Type</span>
                    <input type="password" onkeyup="checkPass(); return false;" id="re_pass"
                           placeholder="Re-type Password" name="re_register_password"/>

                </div>
                <div class="modal-footer">
                    <input style="float: left" type="submit" class="btn btn-success" value="Sign Me Up"/>
                    <span>&nbsp;&nbsp;&nbsp; Already a member? </span><span id="login-link" class="text-info"
                                                                            style="cursor:pointer;">  Login now  </span>
                </div>
            </form>
            <%--end registration form--%>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!-- Modal Sign up ends! -->
<!-- End code for Login / Signup Popup -->

<div class="intro-header" id="home">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="img/img1.jpg" alt="First Image">

                <div class="carousel-caption">
                    First Image
                </div>
            </div>
            <div class="item">
                <img src="img/img2.jpg" alt="Second Image">

                <div class="carousel-caption">
                    Second Image
                </div>
            </div>
            <div class="item">
                <img src="img/img3.jpg" alt="Third Image">

                <div class="carousel-caption">
                    Third Image
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>

    <!-- /.container -->

</div>
<!-- /.intro-header -->

<div class="content-section-a" id="about">

    <div class="container">

        <div class="row">
            <div class="col-lg-5 col-sm-6">
                <div class="clearfix"></div>
                <h2 class="section-heading">About Us
                    <p class="lead"><a href="#">Protect-Your-Bike</a> is the service that protects your bike with small
                        GPS
                        chipset embedded into various bicycle accessories and the application providing GPS-monitoring
                        and notifications. GPS is connected to a global cellular network. The GPS-device attaches to
                        your bike and the application alerts you if the unusual movement of you bicycle is observed.
                    </p>
            </div>
            <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                <img class="img-responsive" src="img/ipad.png" alt="">
            </div>
        </div>

    </div>
    <!-- /.container -->

</div>
<!-- /.content-section-a -->

<div class="content-section-b" id="services">

    <div class="container">

        <div class="row">
            <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                <h2 class="section-heading">Services
                    <p class="lead">
                        <a href="#">Portable, practical and clever GPS-device</a><br>
                        <a href="#">Stationary mode</a><br>
                        <a href="#">Notifications</a><br>
                        <a href="#">Tracking</a><br>
                    </p>
            </div>
            <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                <img class="img-responsive" src="img/doge.png" alt="">
            </div>
        </div>

    </div>
    <!-- /.container -->

</div>
<!-- /.content-section-b -->

<div class="content-section-a" id="contact">

    <div class="container">
        <script id="infogram_0_stolen-bikes-per-year" src="//e.infogr.am/js/embed.js" type="text/javascript"></script>
        <div style="width:100%;border-top:1px solid #acacac;padding-top:3px;font-family:Arial;font-size:10px;text-align:center;">
            <a target="_blank" href="//infogr.am/stolen-bikes-per-year" style="color:#acacac;text-decoration:none;">Stolen
                bikes per year</a> | <a style="color:#acacac;text-decoration:none;" href="//infogr.am" target="_blank">Create
            Infographics</a></div>

    </div>
    <!-- /.container -->

</div>
<!-- /.content-section-a -->

<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <ul class="list-inline">
                    <li><a href="#home">Home</a>
                    </li>
                    <li class="footer-menu-divider">&sdot;</li>
                    <li><a href="#about">About</a>
                    </li>
                    <li class="footer-menu-divider">&sdot;</li>
                    <li><a href="#services">Services</a>
                    </li>
                    <li class="footer-menu-divider">&sdot;</li>
                    <li><a href="#contact">Infographics</a>
                    </li>
                </ul>
                <p class="copyright text-muted small">Copyright &copy; Protect Your Bike 2014. All Rights Reserved</p>
            </div>
        </div>
    </div>
</footer>

</body>

</html>
