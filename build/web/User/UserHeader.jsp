<%--
    Document   : UserHeader
    Created on : Jul 27, 2018, 5:43:36 PM
    Author     : Pawan acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="MyPack.DBManager"%>
<%
String email=session.getAttribute("user").toString();
DBManager db=new DBManager();
String command="select * from registration1 where email='"+email+"'";
ResultSet rs=db.GetBulksRecord(command);
if(rs.next())
{
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Traveller.com</title>
        <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/hover-min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery.js" type="text/javascript"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <style>
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
            .menu
            {
                padding-top: 10px;
                border-top: 1px solid white;
                background: yellowgreen;//rgba(94,122,147,0.3);
                box-shadow: 0px -10px 25px green inset;
            }
            .logo
            {
                filter: grayscale(70%);
                height: 50px;
                margin-top: -10px;
                
            }
            .logo:hover
            {
                filter: grayscale(0%);
                transition-delay: .1s;
            }
            .menucontainer
            {
                min-height: 80px;
                text-align: center;
            }
            .logoback:hover
            {
                background-color: rgba(0,51,204,0.3);
            }
            .social img
            {
                height: 40px;
                float: right;
            }
            .social
            {
                width:300px;
            }
            .icon
            {
                float: left;
                margin-left: 5px;
                padding-left: 10px;
            }
            .icon img
            {
                margin-left: 31px;
                margin-right: 31px;
            }
        </style>
        
    </head>
    <body>
        <div class="container-fluid">
         <div class="row top">
                <div class="col-sm-3 topl">
                    <img src="images/logo.png" style="height: 90px;" class="img-responsive" alt=""/>
                </div>
                <div class="col-sm-4 topr">
                    Traveller.com
                </div>
             <div class="col-sm-1"><img src="../profiles/<%=rs.getString("profile")%>" title="<%=rs.getString("name")%>" class="img img-responsive img-rounded"/></div>
             <div class="col-xs-4">
                 <div class="row">
                     <div class="col-sm-12">
                         <h4 class="text-responsive">Hi ! <%=rs.getString("name")%> &nbsp;&nbsp;&nbsp;<a href="logout.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-log-out" style="color:darkred;"> Logout</span></a></h4>
                     </div>
                 </div>
             </div>
            </div>
            <div class="row menu">
                <div class="icon">
                <nav class="navbar navbar-default">
                     <div class="container-fluid logoback">
                         <div class="navbar-header menucontainer">
                         <a class="navbar-brand" href="Dashboard.jsp">
                             <img alt="Brand" src="images/Home.png" class="img img-responsive hvr-bounce-in logo">
                             Home
                         </a>
                       </div>
                     </div>
                </nav>
                </div>
                <div class="icon">
                <nav class="navbar navbar-default">
                     <div class="container-fluid logoback">
                         <div class="navbar-header menucontainer">
                         <a class="navbar-brand" href="buses.jsp">
                             <img alt="Brand" src="images/bus.png" class="img img-responsive hvr-bounce-in logo">
                             Buses
                         </a>
                       </div>
                     </div>
                </nav>
                </div>
                <div class="icon">
                <nav class="navbar navbar-default">
                     <div class="container-fluid logoback">
                         <div class="navbar-header menucontainer">
                         <a class="navbar-brand" href="cabs.jsp">
                             <img alt="Brand" src="images/Cabs.png" class="img img-responsive hvr-bounce-in logo">
                             Cabs
                         </a>
                       </div>
                     </div>
                </nav>
                </div>
                <div class="icon">
                <nav class="navbar navbar-default">
                     <div class="container-fluid logoback">
                         <div class="navbar-header menucontainer">
                         <a class="navbar-brand" href="hotel.jsp">
                             <img alt="Brand" src="images/hotel.jpg" class="img img-responsive hvr-bounce-in logo">
                             Hotel
                         </a>
                       </div>
                     </div>
                </nav>
                </div>
                <div class="icon">
                <nav class="navbar navbar-default">
                     <div class="container-fluid logoback">
                         <div class="navbar-header menucontainer">
                         <a class="navbar-brand" href="bills.jsp">
                             <img alt="Brand" src="images/bill.png" class="img img-responsive hvr-bounce-in logo">
                             My Bills
                         </a>
                       </div>
                     </div>
                </nav>
                </div>
                <div class="icon">
                <nav class="navbar navbar-default">
                     <div class="container-fluid logoback">
                         <div class="navbar-header menucontainer">
                         <a class="navbar-brand" href="Support.jsp">
                             <img alt="Brand" src="images/Support.png" class="img img-responsive hvr-bounce-in logo">
                             Support
                         </a>
                       </div>
                     </div>
                </nav>
                </div>
                <div class="icon">
                <nav class="navbar navbar-default">
                     <div class="container-fluid logoback">
                         <div class="navbar-header menucontainer">
                         <a class="navbar-brand" href="MyProfile.jsp">
                             <img alt="Brand" src="images/setting.png" class="img img-responsive hvr-bounce-in logo">
                             Profile Setting
                         </a>
                       </div>
                     </div>
                </nav>
                </div>
            </div>
    </div>
    </body>
</html>
