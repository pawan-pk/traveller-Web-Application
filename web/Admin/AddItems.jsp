<%-- 
    Document   : AddItems
    Created on : Jul 30, 2018, 7:48:46 PM
    Author     : Pawan acer
--%>

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
                <h2 class="text-responsive text-primary text-center" style="font-family: Algerian;">Add Bus or Cabs</h2>
                <form class="form form-horizontal" action="../AddVan" enctype="multipart/form-data" method="post">
                            <label>Select Van</label>
                            <select class="form-control" name="vantype">
                                <option>-- Select Van --</option>
                                <option>Buses</option>
                                <option>Cabs</option>
                                <option>Flight</option>
                            </select>
                            <br/>
                            <label>Details</label>
                            <input type="text" name="details" placeholder="Enter Here details About..." class="form-control focus"/>
                            <label>Offers</label>
                            <input type="text" name="offer" placeholder="Write Offer Here..(Ex. 10% Ru. off for Minimum 200 KM)" class="form-control focus"/>
                            <label>Select Image</label>
                            <input type="file" name="pic" class="form-control focus"/>
                            <br/><br/>
                            <input type="reset" class="btn btn-warning"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="btn btn-primary" value="Add"/>
                            <br/><br/>
                        </form>
            </div>
        </div>
        </div>
    </body>
</html>
