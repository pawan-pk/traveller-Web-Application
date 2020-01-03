<%-- 
    Document   : enquiry
    Created on : Jul 27, 2018, 5:27:29 PM
    Author     : Pawan acer
--%>
<%@include file="MasterPage/Header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body
            {
                background: #cadbea;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3558.69430293491!2d80.94821511463536!3d26.88145188314106!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399957cc00000043%3A0xe946d5cb9b782188!2sSoftpro+India+Computer+Technologies+Pvt+Ltd!5e0!3m2!1sen!2sin!4v1532654349970" width="600" class="img img-responsive" frameborder="0" style="border:2px solid red;min-height: 450px;" allowfullscreen></iframe>
                </div>
                <div class="col-sm-5">
                    <form action="Encode.jsp" method="post" class="form-horizontal">
                        <h2 class="text-responsive" style="font-size: 42px;font-family: times new romen;text-align: center;color: #330099;">Enquiry</h2>
                        <hr/>
                        <label>Name</label>
                        <input type="text" name="txtname" class="form-control focus" placeholder="Enter Your Name" required="true"/>
                        <br/>
                        <label>Mobile No.</label>
                        <input type="number" name="txtmo" class="form-control focus" placeholder="Enter Your Mobile No." required="true" />
                        <br/>
                        <label>Email ID</label>
                        <input type="email" name="txtemail" class="form-control focus" placeholder="Enter Your Email Address" required="true"/>
                        <br/>
                        <input type="submit" class="form-control btn btn-primary" value="Save Records"/>
                        <br/><br/>
                    </form>
                </div>
                <div class="col-sm-1"></div>
            </div>
        </div>
    </body>
</html>
<%@include file="MasterPage/footer.jsp" %>