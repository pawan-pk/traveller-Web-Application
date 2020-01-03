<%-- 
    Document   : Support
    Created on : Jul 28, 2018, 2:51:46 AM
    Author     : Pawan acer
--%>
<%@include file="UserHeader.jsp" %>
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
            .main
            {
                background: url('images/support.jpg');
                background-size: 100%;
                background-attachment: fixed;
            }
            .form
            {
                background: rgba(0,0,0,0.7);
            }
            .footer
            {
                min-height: 40px;
                padding: 10px;
                text-align: center;
                background: rgba(0,0,0,0.8);
                color: white;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row main">
                <div class="col-sm-4"></div>
                <div class="col-sm-6 form">
                    <h2 style="color:blue;font-weight: bold;">Support</h2>
                    <form action="feed.jsp" method="post" class="form-horizontal form-control-static">
                        <h3></h3>
                        <input type="text" name="txtname" class="form form-control" placeholder="Enter Title"/>
                        <br/>
                        <textarea rows="5" name="txtmsg" class="form-control input-lg" placeholder="Enter Your Massege Here..."></textarea>
                        <div class="row">
                        <div class="col-sm-6"></div>
                        <div class="col-sm-6">
                            <br/>
                            <input type="submit" class="form form-control input-lg btn btn-success"/>
                        </div>
                        </div>
                    </form>
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-12 footer">
                    copyright &copy; 2018
                </div>
            </div>
        </div>
    </body>
</html>
<%}%>