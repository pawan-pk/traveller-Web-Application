<%-- 
    Document   : Header
    Created on : Jul 25, 2018, 6:52:53 AM
    Author     : Pawan acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/hover-min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <style>
            body
            {
                margin-bottom: 0px;
            }
            .top
            {
                background-image: url('images/header.png');
            }
            .topl
            {
                min-height: 70px;
            }
            .topr
            {
                min-height: 70px;
                font-family: cursive;
                text-shadow:3px 2px 3px black;
                font-size:40px;
                color: blueviolet;
                margin-top: 15px;
            }
            .head
            {
                font-family: cursive;
            }
            #SignUp
            {
                display: none;
            }
        </style>
        <script>
            $(document).ready(function(){
$("#pToggle").click(function(){
var eye=$("#pToggle").text();
//alert(eye);
if(eye===" ")
{
$("#inputPassword").prop("type","text");
$("#pToggle").html("<span class='glyphicon glyphicon-eye-close'></span>");
}
else
{
$("#inputPassword").prop("type","password");
$("#pToggle").html("<span class='glyphicon glyphicon-eye-open'> </span>");
}
});
            });
        </script>
    </head>
    <body>
        <div class="container-fluid">
         <div class="row top">
                <div class="col-sm-3 topl">
                    <img src="images/logo.png" style="height: 90px;" class="img-responsive" alt=""/>
                </div>
                <div class="col-sm-9 topr text-responsive">
                    Traveller.com
                </div>
            </div>
        <div class="row" style="margin-bottom: -20px;">
                 <nav class="navbar navbar-default" style="background-image: url('images/nav-primary.png');font-size: 16px;">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
        <a href="index.jsp" class="navbar-brand head">Traveller</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="about.jsp">About us <span class="sr-only">(current)</span></a></li>
        <li><a href="registration.jsp">Registration</a></li>
        <li><a href="enquiry.jsp">Enquiry</a></li>
        <li><a href="gallery.jsp">Gallery</a></li>
        <li><a data-toggle="modal" data-target="#myModal" style="cursor:pointer;">Login</a></li>
        
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
            <input type="text" class="form-control search" style="color: buttontext;background-color: lightgrey;box-shadow: 1px 2px 3px grey inset;"placeholder="Search">
        </div>
        <button type="submit" class="btn btn-success">Submit</button>
      </form>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
                </div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="padding-right: 0px;">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
        <div id="SignIn">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h2 class="modal-title" id="myModalLabel" style="text-align: center;font-weight: bold;font-family: cursive;color: darkblue;text-shadow:2px 2px 3px darkslategrey;">Login Form</h2>
      </div>
      <div class="modal-body">
          <form action="LoginCode.jsp" method="post">
        <div class="form-group">
              <label for="inputEmail">Email address</label>
        <input type="email" name="txtuser" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
      </div>
<br/>
<div class="form-group">
  <label class="control-label">Password</label>
  <div class="input-group">
	<input type="password" name="txtpass" id="inputPassword" class="form-control" placeholder="Password" required aria-describedby="pToggle"/>
	<span id="pToggle" class="input-group-addon" aria-hidden="true"><span class="glyphicon glyphicon-eye-open"> </span></span>
  </div>
</div>
      <div class="checkbox">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
          </form>
      </div>
        <div class="row">
            <div class="col-sm-8" style="margin:0px 0px 30px 30px;"><a href="forgetpasswod.html">Forget Password ?</a></div>
            <div class="col-sm-2" style="margin-bottom: 30px;text-align: right;"><a href="loginhelp.html">Help ?</a></div>
        </div>
      <div class="modal-footer">
        <form action="registration.jsp" method="post">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Registration Now</button>
        </form>
      </div>
        </div>
        </div>
        </div>
    </div>
  </div>
    </body>
</html>
