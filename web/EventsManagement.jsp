<%-- 
    Document   : EventsManagement
    Created on : Jul 26, 2018, 6:57:39 AM
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
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <style>
			body
            {
                background-image: url('images/about.jpg');
                background-size:     cover;
                background-repeat:   no-repeat;
                background-position: top center; 
                background-attachment: fixed;
            }
            .mang
            {
                min-height: 400px;
                margin-top: 70px;
            }
            .mangmenu
            {
                background-color: #333333;
                font-size: 18px;
                font-weight: bold;
                font-family: times new romen;
            }
        </style>
        <script>
            

        </script>
    </head>
    <body>
        <div class="container-fluid">
      <!-- The justified navigation menu is meant for single line per list item.
           Multiple lines will require custom code not provided by Bootstrap. -->
      <div class="masthead">
        <h3 class="text-muted">Project name</h3>
        <nav>
          <ul class="nav nav-justified mangmenu">
            <li class="active"><a href="#">Buses</a></li>
            <li><a href="#">Cabs</a></li>
            <li><a href="#">Hotels</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
        </nav>
      </div>
      <!-- Jumbotron -->
      <div class="jumbotron">
          
      </div>
        </div>
    </body>
</html>
<%@include file="MasterPage/footer.jsp" %>
