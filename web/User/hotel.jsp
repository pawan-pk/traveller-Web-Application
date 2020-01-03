<%-- 
    Document   : buses
    Created on : Jul 28, 2018, 9:20:07 PM
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
            .footer
            {
                text-align: center;
                padding:10px; 
                min-height: 40px;
                color: white;
                background: rgba(0,0,0,0.8);
            }
        </style>
        <script>
            $('.carousel').carousel({
             interval: 2000
         });
         $('.carousel').carousel({
             pause:hover
            });
        </script>
    </head>
    <body>
        <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
        <img src="images/hotel_1.jpg" style="width:100%;height: 400px;" alt=""/>
    </div>
    <div class="item">
        <img src="images/hotel4.jpg" style="width:100%;height: 400px;" alt=""/>
    </div>
    <div class="item">
        <img src="images/Hotel2.jpg" style="width:100%;height: 400px;" alt=""/>
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
        </div>
            <div class="row">
                
                
                <div class="col-sm-3 hvr-bounce-in img-thumbnail img-rounded" style="background: grey;min-height: 300px; margin: 40px;">
                    <img src="images/hotel.jpg" class="img img-responsive img-center" style="height:200px;width:100%;" alt=""/>
                    <h3 class="text-responsive text-center text-success">Details : 11 Seater Maharaja Tempo Traveller</h3>
                    <h4 class="text-center">Offer : 10% of minimum 100KM travel.</h4>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-warning" name="cart_id">Add to Cart</button>
                    </div>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-success" name="book_id">Book Now <span class="glyphicon glyphicon glyphicon-hand-left hvr-buzz-out"></span></button>
                    </div>
                </div>
                <div class="col-sm-3 hvr-bounce-in img-thumbnail img-rounded" style="background: grey;min-height: 300px; margin: 40px;">
                    <img src="images/hotel1.jpg" class="img img-responsive img-center" style="height:200px;width:100%;" alt=""/>
                    <h3 class="text-responsive text-center text-success">Details : 12 Seater Maharaja Tempo Traveller</h3>
                    <h4 class="text-center">Offer : 15% of minimum 200KM travel.</h4>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-warning" name="cart_id">Add to Cart</button>
                    </div>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-success" name="book_id">Book Now <span class="glyphicon glyphicon glyphicon-hand-left hvr-buzz-out"></span></button>
                    </div>
                </div>
                <div class="col-sm-3 hvr-bounce-in img-thumbnail img-rounded" style="background: grey;min-height: 300px; margin: 40px;">
                    <img src="images/hotel13.jpg" class="img img-responsive img-center" style="height:200px;width:100%;" alt=""/>
                    <h3 class="text-responsive text-center text-success">Details : 9 Seater Maharaja Tempo Traveller</h3>
                    <h4 class="text-center">Offer : 5% of minimum 150KM travel.</h4>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-warning" name="cart_id">Add to Cart</button>
                    </div>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-success" name="book_id">Book Now <span class="glyphicon glyphicon glyphicon-hand-left hvr-buzz-out"></span></button>
                    </div>
                </div>
                <div class="col-sm-3 hvr-bounce-in img-thumbnail img-rounded" style="background: grey;min-height: 300px; margin: 40px;">
                    <img src="images/hotel14.jpg" class="img img-responsive img-center" style="height:200px;width:100%;" alt=""/>
                    <h3 class="text-responsive text-center text-success">Details : AC Cabs</h3>
                    <h4 class="text-center">Offer : 15% of minimum 10KM travel.</h4>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-warning" name="cart_id">Add to Cart</button>
                    </div>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-success" name="book_id">Book Now <span class="glyphicon glyphicon glyphicon-hand-left hvr-buzz-out"></span></button>
                    </div>
                </div>
                <div class="col-sm-3 hvr-bounce-in img-thumbnail img-rounded" style="background: grey;min-height: 300px; margin: 40px;">
                    <img src="images/hotel15.jpg" class="img img-responsive img-center" style="height:200px;width:100%;" alt=""/>
                    <h3 class="text-responsive text-center text-success">Details : AC Cabs</h3>
                    <h4 class="text-center">Offer : 10% of minimum 20KM travel.</h4>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-warning" name="cart_id">Add to Cart</button>
                    </div>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-success" name="book_id">Book Now <span class="glyphicon glyphicon glyphicon-hand-left hvr-buzz-out"></span></button>
                    </div>
                </div>
                <div class="col-sm-3 hvr-bounce-in img-thumbnail img-rounded" style="background: grey;min-height: 300px; margin: 40px;">
                    <img src="images/hotel16.jpg" class="img img-responsive img-center" style="height:200px;width:100%;" alt=""/>
                    <h3 class="text-responsive text-center text-success">Details : AC Cabs</h3>
                    <h4 class="text-center">Offer : 20% of minimum 50KM travel.</h4>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-warning" name="cart_id">Add to Cart</button>
                    </div>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-success" name="book_id">Book Now <span class="glyphicon glyphicon glyphicon-hand-left hvr-buzz-out"></span></button>
                    </div>
                </div>
                <div class="col-sm-3 hvr-bounce-in img-thumbnail img-rounded" style="background: grey;min-height: 300px; margin: 40px;">
                    <img src="images/hotel17.jpg" class="img img-responsive img-center" style="height:200px;width:100%;" alt=""/>
                    <h3 class="text-responsive text-center text-success">Details : OLA Cabs Services</h3>
                    <h4 class="text-center">Offer : 11% of minimum 10KM travel.</h4>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-warning" name="cart_id">Add to Cart</button>
                    </div>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-success" name="book_id">Book Now <span class="glyphicon glyphicon glyphicon-hand-left hvr-buzz-out"></span></button>
                    </div>
                </div>
                <div class="col-sm-3 hvr-bounce-in img-thumbnail img-rounded" style="background: grey;min-height: 300px; margin: 40px;">
                    <img src="images/hotel18.jpg" class="img img-responsive img-center" style="height:200px;width:100%;" alt=""/>
                    <h3 class="text-responsive text-center text-success">Details : UBER Cabs Services</h3>
                    <h4 class="text-center">Offer : 20% of minimum 60KM travel.</h4>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-warning" name="cart_id">Add to Cart</button>
                    </div>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-success" name="book_id">Book Now <span class="glyphicon glyphicon glyphicon-hand-left hvr-buzz-out"></span></button>
                    </div>
                </div>
                <div class="col-sm-3 hvr-bounce-in img-thumbnail img-rounded" style="background: grey;min-height: 300px; margin: 40px;">
                    <img src="images/hotel19.jpg" class="img img-responsive img-center" style="height:200px;width:100%;" alt=""/>
                    <h3 class="text-responsive text-center text-success">Details : OLA Cabs Services</h3>
                    <h4 class="text-center">Offer : 20% of minimum 60KM travel.</h4>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-warning" name="cart_id">Add to Cart</button>
                    </div>
                    <div class="col-sm-6 text-center">
                        <button class="btn btn-success" name="book_id">Book Now <span class="glyphicon glyphicon glyphicon-hand-left hvr-buzz-out"></span></button>
                    </div>
                </div>
                
            </div>
            <div class="row footer">
                copyright &COPY; 2018
            </div>
        </div>
    </body>
</html>
<%}%>