<%-- 
    Document   : Left
    Created on : Jul 30, 2018, 8:11:30 PM
    Author     : Pawan acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/hover-min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery.js" type="text/javascript"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <style>
            ul li
            {
                background: #f0f0f0;
                border-radius: 20px 20px 20px 20px;
                font-family: times new romen;
                margin: 5px;
                padding:0px 10px 0px 10px;
                box-shadow: 0px 20px 50px lightsteelblue inset;
                padding: 8px;
            }
            ul li:hover
            {
                background: #cdcdcd;
                box-shadow: 0px 20px 50px steelblue inset;
                text-decoration: none;
            }
            ul a:hover
            {
                text-decoration: none;
                color: darkblue;
            }
        </style>
    </head>
    <body>
        <div class="col-sm-3">
            <div class="row" style="min-height: 100px;border: 2px solid green;background: #bbe0f3;">
                <div class="col-sm-5" style="min-height: 100px">
                    <img src="images/adminji.png" alt="Admin" class="img-responsive img-thumbnail">
                </div>
                <div class="col-sm-7">
                    <div class="row">
                        <div class="col-sm-12">
                            <br/>
                            <a href="../User/logout.jsp"><button class="btn-danger form-control"><span class="glyphicon glyphicon-log-out" style="color:red;padding:0px 15px 0px 0px;"></span>Logout</button></a>
                        </div>
                        <div class="col-sm-12">
                            <h2 style="text-align: center;color: navy;font-weight: bold;">Admin</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12" style="border:2px solid green;border-top: none;padding: 0px; background-image: url(images/left.jpg); background-size:100% 100%; ">
                <ul style="list-style-type: none;font-size: 32px;background: rgba(0,0,0,0.5);padding: 10px 0px 10px 0px;">
                    <a href="DashBoard.jsp"><li>Dash Board</li></a>
                    <a href="AddItems.jsp"><li>Add Cabs/Bus</li></a>
                    <a href="AddNoti.jsp"><li>Add Notification</li></a>
                    <a href="notificationmgnt.jsp"><li>Notification Management</li></a>
                    <a href="enquirymgnt.jsp"><li>Enquiry Management</li></a>
                    <a href="CustomerManegement.jsp"><li>Customer Management</li></a>
                    <a href="bills.jsp"><li>Bill Management</li></a>
                </ul>
            </div>
            </div>
        </div>
    </body>
</html>
