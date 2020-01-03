<%-- 
    Document   : index
    Created on : Jul 25, 2018, 7:06:48 PM
    Author     : Pawan acer
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPack.DBManager"%>
<%@include file="MasterPage/Header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Traveller</title>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/hover-min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <style>
            .main
            {
                min-height: 355px;
                background-image: url('images/banner1.jpg');
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-position: top,center;
                font-size: 18px;
                color: white;
                padding-top: 20px;
                margin: 0px;
            }
            .main input
            {
                min-width: 120px;
                border: 1px solid green;
            }
            .s-left
            {
                min-height: 180px;
                filter:grayscale(70%);
            }
            .s-center
            {
                min-height: 180px;
            }
            .s-right
            {
                min-height: 180px;
                filter:grayscale(70%);
            }
            .image
            {
                margin-top: 20px;
            }
            .content
            {
                min-height: 430px;
                color:darkblue;
                padding: 30px;
                font-size: 20px;
                font-family: times new romen;
            }
            .content h2
            {
                color:#000033;
                 margin-top: 10px;
                 font-family: Algerian;
            }
            .img img
            {
                margin-top: 20px;
            }
             #div1 
             {
                transform: translateY(33%);
            }
            .time
            {
                margin: 15px 0px 0px -15px;
                color:  whitesmoke;
                padding: 10px;
            }
            #time
            {
                 font-family: cursiv;
                 font-size: 30px;
                 text-align: center;
                 text-shadow: 0px 0px 10px blueviolet;
            }
            #date 
            {
                font-family: 'Eczar', serif;
                font-size: 20px;
                text-align: center;
                text-shadow: 0px 0px 10px blue;
            }
            .notification
            {
                font-size: 20px;
                color:#cc0000;
                margin-top: -20px;
                color: whitesmoke;
                font-family: cursive;
            }
            .notification h3
            {
                color: white;
                font-weight: bold;
                text-align: center;
                font-family: times new romen;
                background: #330099;
                margin: 5px;
            }
            #pToggle
            {
                cursor:pointer;
            }
            #SignUp
            {
                display: none;
            }
            .searchicon
            {
                color: grey;
                font-size: 22px;
            }
            .searchicon:hover
            {
                color: darkgreen;
                cursor: pointer;
                text-shadow: 1px 3px 8px grey;
            }
            .noti
            {
                background: #330099;
            }
            .new
            {
                min-height: 300px;
                border: 2px solid #f0c663;
            }
            .whats_new
            {
                margin: 10px;
                text-align: center;
                font-size: 18px;
                background: #f0c663;
                margin-top: 0px;
            }
        </style>
        <script>
            window.setInterval(ut, 1000);
            function ut() {
            var d = new Date();
            document.getElementById("time").innerHTML = d.toLocaleTimeString();
            document.getElementById("date").innerHTML = d.toLocaleDateString();
            }
        </script>
    </head>
    <body style="background: #cadbea;">
        <div class="container-fluid">
           <div class="row">
                <div class="col-sm-12 main">
                    <div class="row notification">
                        <div class="col-sm-2 noti">
                    <h3>Notification</h3>
                        </div>
                        <div class="col-sm-10" style="background: rgba(0,0,0,0.5);">
                            <marquee onmouseover="stop()" onmouseout="start()" scrollamount="12">The project entitled traveller.com enables processes and activities of a travel and tourism agency. The purpose is to design a system using which one can perform all operations related to traveling and sight-seeing. In the present system a customer has to approach various agencies to find details of places and to book tickets. This often requires a lot of time and effort. A customer may not get the desired information from these offices and often the customer may be misguided. It is tedious for a customer to plan a particular journey and have it executed properly.The proposed system is a web based application and maintains a centralized repository of all related information.The system allows one to easily access the relevant information and make necessary travel arrangements.Users can decide about places they want to visit and make bookings online for travel and accommodation.</marquee>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-3">
                        </div>
                        <div class="col-sm-6" style="background: rgba(135,159,187,0.7);border-radius: 10px;text-align: center;margin-top: 50px;box-shadow: 2px 3px 20px navy;">
                            <h3 style="color: #000066;font-family: times new romen;font-weight: bold;">Search Your Favourite Places</h3>
                            <form action="#" method="post">
                                <div class="input-group">
                                    <input type="text" class="form-control focus input-lg" style="border-right: none;background-color: #eeeeee;">
                                    <span class="input-group-addon" style="border: 1px solid green;border-left: none;"><span class="glyphicon glyphicon-search searchicon"></span></span>
                                </div>
                            </form>
                            <h5>We wish you have a happy Journey.</h5>
                        </div>
                        <div class="col-sm-3"></div>
                    </div>
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="time">
                                <p id="time"></p>
                                 <p id="date"></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row image">
                <div class="col-sm-4 s-left">
                    <img src="images/img14.jpg" class="img-thumbnail" id="slideleft" alt=""/>
                </div>
                <div class="col-sm-4 s-center">
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
    <li data-target="#carousel-example-generic" data-slide-to="5"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
        <img src="images/img1.jpg" alt=""/>
      <div class="carousel-caption">
        
      </div>
    </div>
    <div class="item">
      <img src="images/img2.jpg" alt=""/>
      <div class="carousel-caption">
        
      </div>
    </div>
    <div class="item">
        <img src="images/img6.jpg" alt=""/>
      <div class="carousel-caption">
        
      </div>
    </div>
      <div class="item">
          <img src="images/img7.jpg" alt=""/>
         <div class="carousel-caption">
        
         </div>
      </div>
      <div class="item">
              <img src="images/img11.jpg" alt=""/>
          <div class="carousel-caption">
        
         </div>
      </div>
      <div class="item">
                  <img src="images/img14.jpg" alt=""/>
         <div class="carousel-caption">
        
         </div>
      </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
                </div>
                <div class="col-sm-4 s-right">
                    <img src="images/img6.jpg" class="img-thumbnail" alt=""/>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 new">
                    <div class="row whats_new">What's New</div>
                    <div class="col-sm-12">
                        <marquee direction="up" onmouseover="stop()" onmouseout="start()">
                        <ul style="min-height: 240px;">
                            <%
                            DBManager db=new DBManager();
                            String command="select * from notification";
                            ResultSet rs=db.GetBulksRecord(command);
                            while(rs.next())
                            {
                                String x=rs.getString("zone");
                                    if(x.equals("General Zone")||x.equals("Both (General Zone and User Zone)"))
                                    {
                            %>
                            <li style="font-size: 18px;list-style: circle;"><%=rs.getString("notice")%> <span class="text-danger"> <%=rs.getString("ndt")%></span></li>
                            <%
                                }
                            }
                            %>
                        </ul>
                        </marquee>
                    </diV>
                </div>
                <div class="col-sm-6 offer"></div>
            </div>
                <div class="col-sm-12 hvr-bounce-in" style="min-height:70px;color:yellowgreen;font-family: algerian;font-size: 50px;padding-top: 10px;text-align: center;"><u>Top 5 Most Famous Places</u></div>
            <div class="row">
                <div class="col-sm-6 content">
                    <h2>1. Annapurana Adventure : NEPAL</h2>
                    After a series of devastating earthquakes and aftershocks, Nepal’s tourist industry is on the rise again. Though hundreds of thousands have been left homeless, and daily life is not fully back to normal, the country’s historic landmarks are slowly being restored. Trekking routes are reopening and the resilient Nepali people are finding their feet. Thoughtfully spent tourist dollars will go a long way here; choosing independent homestays and grass roots tour companies ensures money ends up in local pockets. With varied landscapes – from the Himalayas to jungles inhabited by tigers, elephants and rhinos – Nepal should be your first choice for travel in 2017.
                </div>
                <div class="col-sm-6 img">
                    <img src="images/Annapurna.jpg" title="1. Annapurana Adventure" alt="1. Annapurana Adventure" class="img-responsive img-thumbnail hvr-bounce-in"/>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 img">
                    <img src="images/Colombia.jpg" title="2. COLOMBIA" alt="2. COLOMBIA" class="img-responsive img-thumbnail hvr-bounce-in">
                </div>
                <div class="col-sm-6 content">
                    <h2>2. COLOMBIA</h2>
                    Tourism in Colombia is gathering pace. More and more travellers are realising the country’s past reputation for crime and drugs is far from the reality on the ground – and the endlessly welcoming locals will make sure you feel this way too. Go now and you’ll quickly discover what the fuss is about: head to cities such as innovative, buzzing Medellín or enchanting Cartagena, explore the country’s lush coffee growing region, trek to the jungle-strewn ruins of the Lost City, or find a slice of paradise on bone-white beaches lapped by the Caribbean sea.
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 content">
                    <h2>3. CUBA</h2>
                    Travellers have been saying “now is the time to visit” Cuba for years, but with the re-establishment of US–Cuban relations last year, the statement holds more weight than ever today. The resulting increase in tourism, investment and consumer culture is set to cause radical changes on the island. Already, exciting new bars, restaurants and art centres like the Fabrica de Arte Cubano have started springing up in Havana, but old Havana and the rural gems beyond the capital still remain in their former state for the time being. Now really is the time to go.
                </div>
                <div class="col-sm-6 img">
                    <img src="images/CUBA.jpg" title="3. CUBA" alt="3. CUBA" class="img-responsive img-thumbnail hvr-bounce-in"/>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 img">
                    <img src="images/JORDAN.jpg" title="4. JORDAN" alt="4. JORDAN" class="img-responsive img-thumbnail hvr-bounce-in">
                </div>
                <div class="col-sm-6 content">
                    <h2>4. JORDAN</h2>
                    <p style="font-size:19px;">There’s a strong case to be made for Jordan as the Middle East’s most remarkable destination. The red pillars of Petra, an ancient city carved into the desert mountains, is the image that comes to mind for most. But the country’s wonders also include beaches and coral reefs on the Red Sea, mountains, fertile hills and the lowest place on Earth: the Dead Sea – not to mention the Martian landscape of Wadi Rum, beloved by Hollywood location scouts. While its neighbours have been troubled by serious security concerns, Jordan has remained safe, and a recent relaxation in visa rules as well as the launch of the Jordan Pass have made it much easier to visit. What’s more, you probably won’t have to share most of its unmissable sights with anyone else.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 content">
                    <h2>5. ALBANIA</h2>
                    While nearby Greece and Croatia are well established on the tourist trail, Albania remains something of a mystery to most. But those who go will find fascinating UNESCO World Heritage sites such as the ancient Greek city of Butrint, pristine beaches on the Ionian coast, gorgeous mountain lakes, Ottoman architecture, and friendly locals to point you in the right direction for discovery. Make the trip before the rest of the world realises what they’re missing.
                </div>
                <div class="col-sm-6 img">
                    <img src="images/ALBANIA.jpg" title="5. ALBANIA" alt="5. ALBANIA" class="img-responsive img-thumbnail hvr-bounce-in"/>
                </div>
            </div>
        </div>
    </body>
</html>
<%@include file="MasterPage/footer.jsp" %>
