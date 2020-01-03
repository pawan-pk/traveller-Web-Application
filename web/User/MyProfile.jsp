<%-- 
    Document   : MyProfile
    Created on : Jul 25, 2018, 8:00:41 AM
    Author     : Pawan acer
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPack.DBManager"%>
<%@include file="UserHeader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body
            {
                background-image: url('images/pack.jpg');
                background-repeat: no-repeat;
                background-size: 100%;
                background-attachment: fixed;
            }
            .back
            {
                background-color: rgba(0,0,0,.5);
            }
            form h4
            {
                color:red;
                font-weight: bold;
            }
            .formcon
            {
                background: rgba(0,0,0,0.7);
            }
            .footer
            {
                text-align: center;
                padding:10px; 
                min-height: 40px;
                color: white;
                background: rgba(0,0,0,0.8);
            }
        </style>
    </head>
    <body>
        <div class="container-fluid back">
        <div class="row">
            <div class="col-sm-12">
                <div class="col-sm-4" style="margin-top: 100px;">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3067.5202595565615!2d80.94821511463536!3d26.88145188314106!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399957cc00000043%3A0xe946d5cb9b782188!2sSoftpro+India+Computer+Technologies+Pvt+Ltd!5e1!3m2!1sen!2sin!4v1532723692444" class="img img-responsive" frameborder="0" style="min-height: 300px;width: 100%;border:5px solid white;" allowfullscreen></iframe>
                </div>
                <div class="col-sm-7">
                    <div class="col-sm-12">
                        <div class="col-sm-4">
                            <center><img src="../profiles/<%=rs.getString("profile")%>" title="<%=rs.getString("name")%>" class="img img-responsive img-circle img-thumbnail" style="height: 100px;width: 100px;"/></center>
                            <br/>
                            <a href="UserChangePassword.jsp" class="btn btn-warning btn-lg"><span class="glyphicon glyphicon glyphicon-pencil" style="color:darkblue;"> Change Password</span></a>
                        </div>
                        <div class="col-sm-8 formcon">
                            <form action="#" method="post" class="form-horizontal form-control-static">
                                <h4>Name</h4>
                                <input type="text" class="form-control" value="<%=rs.getString("name")%>" readonly="true"/>
                                <h4>Father's Name</h4>
                                <input type="text" class="form-control" value="<%=rs.getString("fname")%>" readonly="true"/>
                                <h4>Email Address</h4>
                                <input type="text" class="form-control" value="<%=rs.getString("email")%>" readonly="true"/>
                                <h4>Date of Birth</h4>
                                <input type="text" class="form-control" value="<%=rs.getString("dob")%>" readonly="true"/>
                                <h4>Mobile No</h4>
                                <input type="text" class="form-control" value="<%=rs.getString("mobile")%>" readonly="true"/>
                                <h4>Gender</h4>
                                <input type="text" class="form-control" value="<%=rs.getString("gender")%>" readonly="true"/>
                                <h4>City</h4>
                                <input type="text" class="form-control" value="<%=rs.getString("city")%>" readonly="true"/>
                                <h4>Address</h4>
                                <textarea rows="4" readonly="true" class="form form-control"><%=rs.getString("address")%></textarea>
                                <br/>
                                <input type="submit" class="form-control btn btn-success" value="Update Profile"/>
                            </form>
                        </div>
                        <%
                         }
                          %>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>
        </div>
            <div class="row footer">
                copyright &COPY; 2018
            </div>
        </div>
    </body>
</html>
