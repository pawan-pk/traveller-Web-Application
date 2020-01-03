<%-- 
    Document   : discussion
    Created on : Aug 1, 2018, 1:21:56 PM
    Author     : Pawan acer
--%>
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
                background-image: url(images/CUBA.jpg);
            }
        </style>
    </head>
    <body>
        <form action="d.jsp" method="post">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12" style="background: rgba(0,0,0,0.6);color: white;font-size: 22px;padding: 20px;border-radius: 25px;">
                    <div class="col-sm-10">
                        <input type="text" name="txtques" class="form-control" style="height: 60px;font-size: 20px;" placeholder="Type Question..."/>
                    </div>
                    <div class="col-sm-2">
                        <input type="submit" value="POST" class="btn btn-primary" style="color: white;font-size: 22px;"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12" style="font-size: 27px;font-family: cursive;background: rgba(0,250,250,0.5);">
                    <table>
                        <tr>
                            <td>Q.1 Where is Taj Mahal ?</td>
                            <td><a href="#">Reply</a></td>
                            <td><a href="#">View</a></td>
                        </tr>
                    </table>
                    
                    
                </div>
            </div>
        </div>
        </form>
    </body>
</html>
<%}%>
