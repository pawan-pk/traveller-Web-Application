<%-- 
    Document   : logout
    Created on : Jul 30, 2018, 12:37:14 PM
    Author     : Pawan acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../Login.jsp'",1500);
            }
        </script>
    </head>
    <body onload="logout()">
    <center>
        <img src="images/wait.gif" alt="" style="margin-top: 200px;"/>
    </center>
    </body>
</html>
