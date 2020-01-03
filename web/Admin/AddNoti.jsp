<%-- 
    Document   : AddNoti
    Created on : Jul 31, 2018, 7:01:16 PM
    Author     : Pawan acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="MyPack.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notification</title>
        <style>
            body
            {
                background: #aaa;
            }
            form label
            {
                color:skyblue;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
        <div class="row">
            <%@include file="Left.jsp" %>
            <%@include file="Header.jsp" %>
            <div class="col-sm-9"  style="background-image: url(noti.jpg);background-size: 100%;float:right;">
                <div class="row">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8"  style="background:rgba(0,0,0,0.7);font-size: 18px;">
                        <br/><br/>
                        <h1 class="text-responsive text-primary text-center" style="font-family: Algerian;color: darkred;">Add Notification</h1>
                        <form action="noticode.jsp" method="post" class="form form-horizontal">
                            <label>Select Zone</label>
                            <select class="form-control" name="zone">
                                <option>-- Select Zone --</option>
                                <option>General Zone</option>
                                <option>User Zone</option>
                                <option>Both (General Zone and User Zone)</option>
                            </select>
                            <br/>
                            <label>Notification</label>
                            <textarea name="notice" placeholder="Write Here Notification" class="form-control" rows="5"></textarea>
                            <br/>
                            <input type="reset" class="btn btn-warning"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="btn btn-primary" value="Add Notification"/>
                            <br/><br/>
                        </form>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
            </div>
        </div>
        </div>
    </body>
</html>
