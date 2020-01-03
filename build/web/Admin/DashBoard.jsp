<%-- 
    Document   : DaskBoard
    Created on : Jul 30, 2018, 8:04:56 AM
    Author     : Pawan acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin DashBoard</title>
        <style>
            .box
            {
                background: yellowgreen;
                box-shadow: 0px 0px 0px green;
                height: 260px;
                border: 5px solid white;
                border-radius: 10%;
                font-size: 34px;
                padding: 80px;
                text-align: center; 
                font-family: times new romen;
            }
            .box:hover
            {
                background: green;
                box-shadow: 0px 0px 50px black inset;
                color: white;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
        <div class="row">
            <%@include file="Left.jsp" %>
            <%@include file="Header.jsp" %>
            <div class="col-sm-9" style="float:right;">
                <div class="row">
                    <a href="DashBoard.jsp"><div class="col-sm-3 box">Admin DashBoard</div></a>
                    <a href="AddItems.jsp"><div class="col-sm-3 box">Add Bus and Cabs</div></a>
                    <a href="AddNoti.jsp"><div class="col-sm-3 box">Add Notification</div></a>
                    <a href="notificationmgnt.jsp"><div class="col-sm-3 box">Notification Management</div></a>
                </div>
                <div class="row">
                    <a href="enquirymgnt.jsp"><div class="col-sm-3 box">Enquiry Management</div></a>
                    <a href="CustomerManegement.jsp"><div class="col-sm-3 box">Customer Management</div></a>
                    <a href="bills.jsp"><div class="col-sm-3 box">Bill<br/>Management</div></a>
                    <a href="../User/logout.jsp"><div class="col-sm-3 box">Admin<br/>Logout</div></a>
                </div>
            </div>
        </div>
        </div>
    </body>
</html>
