<%-- 
    Document   : registration.jsp
    Created on : Jul 26, 2018, 3:24:30 PM
    Author     : Pawan acer
--%>
<%@page import="MyPack.CaptchaGenerator"%>
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
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <style>
            body
            {
                background-image: url('images/reg.jpg');
                background-size:     cover;
                background-repeat:   no-repeat;
                background-position: bottom center; 
                background-attachment: fixed;
            }
            .time
            {
                margin: 15px 0px 0px -15px;
                color:  whitesmoke;
                padding: 10px;
            }
            #time
            {
                 font-family: cursiv;
                 font-size: 30px;
                 text-align: center;
                 text-shadow: 0px 0px 10px blueviolet;
            }
            #date 
            {
                font-family: 'Eczar', serif;
                font-size: 20px;
                text-align: center;
                text-shadow: 0px 0px 10px blue;
            }
            .footer
            {
                min-height: 40px;
                background: black;
                color: white;
                text-align: center;
                font-size: 14px;
            }
        </style>
        <script>
            window.setInterval(ut, 1000);

            function ut() {
            var d = new Date();
            document.getElementById("time").innerHTML = d.toLocaleTimeString();
            document.getElementById("date").innerHTML = d.toLocaleDateString();
            }
       </script>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-2">
     <div class="time">
     <p id="time"></p>
     <p id="date"></p>
     </div>
                </div>
                <div class="col-sm-10">
  <div class="modal-dialog modal-lg hvr-curl-top-left">
      <div class="modal-content" style="padding: 20px;">
          <h2 style="margin-top: 0px;font-family: cursive;color: blueviolet; text-align: center;font-weight: bold;">Registration Form</h2>
          <hr style="margin-bottom: 0px;"/>
          <form action="register" method="post" enctype="multipart/form-data">
        <div class="row">
            <div class="col-sm-6">
                <h4>Name</h4>
                <input type="text" placeholder="Full Name" name="name" class="form-control focus input-group-lg" required="true"/>
                <h4>Father's Name</h4>
                <input type="text" placeholder="Father's Name" name="fname" class="form-control focus" required="true"/>
                <h4>Date of Birth</h4>
                <input type="date" name="dob" class="form-control focus input-group-lg" required="true"/>
                <div class="row">
                    <div class="col-sm-3">
                <h4>
                    Gender  :
                </h4>
                    </div>
                    <div class="col-sm-3">
                        <h4><input type="radio" name="gender" class="focus" style="height:15px;width:15px;" value="Male" />&nbsp;Male</h4>
                    </div>
                    <div class="col-sm-3">
                        <h4><input type="radio" name="gender" class="focus" style="height:15px;width:15px;" value="Female" />&nbsp;Female</h4>
                    </div>   
                    <div class="col-sm-3"></div>
                </div>
                <h4>Mobile No </h4>
                    <input type="number" name="mobile" value="" class="form-control focus" placeholder="Mobile Number" required="true"/>
                    <h4>Email Address</h4>
                    <input type="email" name="email" value="" class="form-control focus" placeholder="Email Address" required="true"/>
                    <h4>Profile Picture</h4>
                    <input type="file" name="pic" class="form-control focus" required="true"/>
            </div>
            <div class="col-sm-6">
                <h4>Select City</h4>
                <select class="form-control focus" name="city" required="true">
                    <option selected="selected">-Select City-</option>
                    <option>Lucknow</option>
                    <option>Gorakhpur</option>
                    <option>Kushinagar</option>
                    <option>Varanasi</option>
                    <option>Mirzapur</option>
                    <option>Delhi</option>
                    <option>Kanpur</option>
                    <option>Jaunpur</option>
                    <option>Allahabad</option>
                    <option>Ghazipur</option>
                    <option>Deoriya</option>
                    <option>Sultanpur</option>
                    <option>Bareli</option>
                    <option>Rai Bareli</option>
                    <option>Gonda</option>
                </select>
                <h4>
                Address :
                </h4>
                <textarea name="address" name="address" rows="3" class="form-control focus" cols="20" placeholder="Address Here..."></textarea>
            <h4>Create a password:</h4> 
            <input type="password" name="pass" placeholder="Enter password" class="form-control focus" required="true"/>
             <h4>Confirm password:</h4> 
            <input type="password" name="cpass" placeholder="Enter Confirm password" class="form-control focus" required="true"/>
            <h4>Pin Code : </h4>
                    <input type="number" name="pin" placeholder="Pin Code" class="form-control focus" required="true"/>
                    <%
                        CaptchaGenerator cg=new CaptchaGenerator();
                        String code=cg.GetCaptchaCode();
                    %>
                    <h4>
                        Enter Captcha Code:<span style="font-size: 22px;text-align:right; "><%=code%></span>
                    </h4>
                    <input type="hidden" name="mCaptcha" value="<%=code%>"/>
                    <input type="text" name="captcha" class="form-control focus" placeholder="Enter Above Captcha"/>
            </div>
        </div>
            <div class="row">
                <div class="col-sm-6">
                </div>
                <div class="col-sm-6">
                    <h5 style="text-align: center;">
                    <input type="checkbox" name="info" value="ON" style="height:15px;width:15px;" required="true"/>
                    Check all entry is correct.
                    </h5>
                    <input type="submit" style="float: right;margin: 20px 10px 0px 0px;" class="btn-success btn" value="Register" />
                     <input type="reset" style="float: right;margin: 20px 40px 0px 0px;" class="btn-warning btn" value="Clear" />
                </div>
            </div>
        </form>
    </div>
  </div>
            </div>
                <div class="col-sm-12 footer">
                    copyright &copy; 2018
                </div>
            </div>
        </div>
    </body>
</html>
