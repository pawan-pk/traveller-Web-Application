<%-- 
    Document   : notificationmgnt
    Created on : Aug 1, 2018, 11:46:08 PM
    Author     : Pawan acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="MyPack.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Traveller</title>
        <style>
            table th
            {
                padding: 5px;
            }
            table td
            {
                padding: 5px;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
        <div class="row">
            <%@include file="Left.jsp" %>
            <%@include file="Header.jsp" %>
            <div class="col-sm-9" style="background: #495ce3;min-height: 600px;float:right;">
                <div class="row">
                    <div class="col-sm-12 text-responsive">
                        <h2 style="font-family: cursive;color: darkred;text-align: center;">Enquiry Management</h2>
                        <table border="3" style="background: rgba(0,0,0,0.7);color: white;font-size: 22px;border: darkred;">
                            <tr>
                                <th>Name</th>
                                <th>Mobile No.</th>
                                <th>Email</th>
                                <th>Enquiry Date</th>
                                <th>Delete</th>
                            </tr>
                            <%
                            DBManager db=new DBManager();
                            String command="select * from enquiry";
                            ResultSet rs=db.GetBulksRecord(command);
                            while(rs.next())
                            {
                            %>
                            <tr>
                                <td><%=rs.getString("name")%></td>
                                <td><%=rs.getString("mobile")%></td>
                                <td><%=rs.getString("email")%></td>
                                <td><%=rs.getString("edt")%></td>
                                <td><a href="deleteenq.jsp?email=<%=rs.getString("email")%>">Delete</a></td>
                            </tr>
                            <%}%>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </body>
</html>
