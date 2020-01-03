<%-- 
    Document   : DisplayRecords
    Created on : Jul 28, 2018, 9:31:30 PM
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
        <h1>Registered User</h1>
        <table border="1">
                <tr>
                    <th>User Name</th>
                    <th>Father's Name</th>
                    <th>Date of Birth</th>
                    <th>Gender</th>
                    <th>Mobile No.</th>
                    <th>Email Address</th>
                    <th>City</th>
                    <th>Address</th>
                    <th>Password</th>
                    <th>Pincode</th>
                    <th>Profile Picture</th>
                    <th>Registration Date</th>
                </tr>
                <%
                DBManager db=new DBManager();
                String command="select * from registration1";
                ResultSet rs=db.GetBulksRecord(command);
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
                    <td><%=rs.getString("passwd")%></td>
                    <td><%=rs.getString("pin")%></td>
                    <td><img src="profiles/<%=rs.getString("profile")%>" height="150px" width="150px"/></td>
                    <td><%=rs.getString("rdt")%></td>
                </tr>
                <%
                }
                 %>
        </table>

    </body>
</html>
