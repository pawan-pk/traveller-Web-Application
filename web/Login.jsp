<%--
    Document   : Login
    Created on : Jul 30, 2018, 6:59:46 AM
    Author     : Pawan acer
--%>
<%@include file="MasterPage/Header.jsp" %>
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
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.js" type="text/javascript"></script>
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
  <div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
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
    </div>
  </div>
    </body>
</html>
