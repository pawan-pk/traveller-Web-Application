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
                        <h2 style="font-family: cursive;color: darkred;text-align: center;">All Notice</h2>
                        <table border="3" style="background: rgba(0,0,0,0.7);color: white;font-size: 22px;border: darkred;">
                            <tr>
                                <th>Notice</th>
                                <th>Notice Launch Date</th>
                                <th>Zone</th>
                                <th>Delete</th>
                            </tr>
                            <%
                            DBManager db=new DBManager();
                            String command="select * from notification";
                            ResultSet rs=db.GetBulksRecord(command);
                            while(rs.next())
                            {
                            %>
                            <tr>
                                <td><%=rs.getString("notice")%></td>
                                <td><%=rs.getString("ndt")%></td>
                                <td><%=rs.getString("zone")%></td>
                                <td><a href="deletenoti.jsp?notice=<%=rs.getString("notice")%>">Delete</a></td>
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
