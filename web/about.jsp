<%-- 
    Document   : newjspabout
    Created on : Jul 26, 2018, 3:10:16 PM
    Author     : Pawan acer
--%>
<%@include file="MasterPage/Header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Traveller.com</title>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/hover-min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <style>
	     body
            {
                background-image: url('images/about.jpg');
                background-size:     cover;
                background-repeat:   no-repeat;
                background-position: top center; 
                background-attachment: fixed;
            }
            .heading
            {
                text-align: center;
                font-family: cursive;
                min-height: 60px;
                text-shadow:2px 3px 5px black;
                color:white;
                border-bottom: 5px white groove;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
        <div class="row">
                <div class="col-sm-12 heading">
                    <h1>Case Study of traveller.com</h1>
                </div>
            </div>
            
        <div class="row">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content" style="padding: 20px 30px 20px 30px;">
                                 <div class="row">
                                      <div class="col-sm-7">
                                          <h4><font style="font-weight: bold">Trainee’s Name: -</font> Pawan Kumar Kushwaha</h4>
                                      </div>
                                     <div class="col-sm-5">
                                         <h4><font style="font-weight: bold">Enrollment No: -</font> SPI/VT/2018/226</h4>
                                     </div>
                                 </div>
                                <div class="row">
                                      <div class="col-sm-7">
                                          <h4><font style="font-weight: bold">Client’s Name : -</font> </h4>
                                      </div>
                                     <div class="col-sm-5">
                                         <h4> </h4>
                                     </div>
                                 </div>
                                <div class="row">
                                      <div class="col-sm-7">
                                          <h4><font style="font-weight: bold">Project Mentor’s Name: -</font> Er.Akhilesh Kumar</h4>
                                      </div>
                                     <div class="col-sm-5">
                                         <h4> </h4>
                                     </div>
                                 </div>
                                 <div class="row">
                                      <div class="col-sm-7">
                                           <h4><font style="font-weight: bold">Project Coordinator’s Name: -</font> Akash dutt Pathak</h4>
                                      </div>
                                      <div class="col-sm-5">
                                          
                                      </div>
                                 </div>
                                <div class="row">
                                    <hr/>
                                    <h2>About us</h2>
                                    <br/>
                                    <div class="col-sm-12" style="font-size: 18px;">
                                        The project entitled traveller.com enables processes and activities of a travel and tourism agency. The purpose is to design a system using which one can perform all operations related to traveling and sight-seeing. In the present system a customer has to approach various agencies to find details of places and to book tickets. This often requires a lot of time and effort. A customer may not get the desired information from these offices and often the customer may be misguided. It is tedious for a customer to plan a particular journey and have it executed properly. The proposed system is a web based application and maintains a centralized repository of all related information. The system allows one to easily access the relevant information and make necessary travel arrangements. Users can decide about places they want to visit and make bookings online for travel and accommodation.
                                    </div>
                                </div>
                             </div>
                        </div>
            </div>
        </div>
    </body>
</html>
<%@include file="MasterPage/footer.jsp" %>