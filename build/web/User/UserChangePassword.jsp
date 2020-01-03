<%-- 
    Document   : UserChangePassword
    Created on : Jul 25, 2018, 7:17:53 AM
    Author     : Pawan acer
--%>
<%@include file="UserHeader.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
    </head>
    <body>
        <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12" style="background-image: url('images/CUBA.jpg');min-height: 400px;background-size: 100% 100%;">
                <div class="col-sm-12" style="min-height:400px;background: rgba(15,.35,.45,0.54); ">
                <div class="col-sm-6"></div>
                <div class="col-sm-4 panel panel-body" style="background: white; margin-top: 4%;">
                    <form action="change.jsp" method="post">
                    <h1 class="text-responsive text-center text-danger">Change Password</h1>
                    Old Password
                    <input type="password" name="txtold" class="form-control"/>
                    New Password
                    <input type="password" name="txtnew" class="form-control"/>
                    Confirm Password
                    <input type="password" name="txtconfirm" class="form-control"/><br/>
                    <input type="submit" class="btn btn-warning" value="Change password"/>
                    </form>
                </div>
                <div class="col-sm-2"></div>
            </div>
            </div>
        </div>
        </div>
        <%
        }
        %>
    </body>
</html>
