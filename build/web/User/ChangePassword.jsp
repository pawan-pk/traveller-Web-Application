<%-- 
    Document   : ChangePassword
    Created on : Jul 30, 2018, 12:28:18 PM
    Author     : Pawan acer
--%>
<%@include file="UserHeader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-6"></div>
                    <div class="col-sm-4">
                        <div class="modal-dialog" role="document">
                             <div class="modal-content">
                                 <form action="change.jsp" method="post">
                                 <div class="modal-header">
                                    <h4 class="modal-title" id="myModalLabel">Change Password</h4>
                                </div>
                                <div class="modal-body">
                                    <h3>Old Password</h3>
                                    <input type="text" name="txtold" class="form-control"/>
                                    <h3>New Password</h3>
                                    <input type="text" name="txtnew" class="form-control"/>
                                    <h3>Confirm Password</h3>
                                    <input type="text" name="txtconfirm" class="form-control"/>
                                </div>
                                 <div class="modal-footer">
                                      <button type="submit" class="btn btn-primary">Save changes</button>
                                 </div>
                                </form>
                             </div>
                        </div>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
            </div>
        </div>
    </body>
</html>
<%}%>
