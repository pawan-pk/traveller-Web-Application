<%-- 
    Document   : CustomerManegement
    Created on : Aug 1, 2018, 10:16:29 AM
    Author     : Pawan acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="MyPack.DBManager"%>
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
            <%@include file="Left.jsp" %>
            <%@include file="Header.jsp" %>
            <div class="col-sm-9" style="float:right;">
        <div class="row">
            <div class="col-sm-12">
                <h1>Customer Management</h1>
                <table border="3">
                    <tr style="background: orangered;color: white;font-size: 15px;">
                        <th>User Name</th>
                        <th>Father's Name</th>
                        <th>Date of Birth</th>
                        <th>Gender</th>
                        <th>Mobile No.</th>
                        <th>Email Address</th>
                        <th>City</th>
                        <th>Address</th>
                        <th>Pincode</th>
                        <th>Profile Picture</th>
                        <th>Registration Date</th>
                        <th>Delete</th>
                    </tr>
                    <%
                    String command="select * from registration1";
                    DBManager dm=new DBManager();
                    ResultSet rs=dm.GetBulksRecord(command);
                    while(rs.next())
                    {
                    %>
                    <tr>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("fname")%></td>
                        <td><%=rs.getString("dob")%></td>
                        <td><%=rs.getString("gender")%></td>
                        <td><%=rs.getString("mobile")%></td>
                        <td><%=rs.getString("email")%></td>
                        <td><%=rs.getString("city")%></td>
                        <td><%=rs.getString("address")%></td>
                        <td><%=rs.getString("pin")%></td>
                        <td><img src="../profiles/<%=rs.getString("profile")%>" height="100px" width="100px"/></td>
                        <td><%=rs.getString("rdt")%></td>
                        <td><a href="delete.jsp?user=<%=rs.getString("email")%>">Delete</a></td>
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
