<%-- 
    Document   : gallery
    Created on : Jul 25, 2018, 7:06:51 AM
    Author     : Pawan acer
--%>
<%@include file="MasterPage/Header.jsp"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Traveller</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/hover-min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <style>
    .hide-bullets {
        list-style:none;
        margin-left: -40px;
        margin-top:20px;
    }

    .thumbnail {
        padding: 0;
    }

    .carousel-inner>.item>img, .carousel-inner>.item>a>img {
        width: 100%;
    }
        </style>
        <script>
              jQuery(document).ready(function($) {
 
        $('#myCarousel').carousel({
                interval: 5000
        });
 
        //Handles the carousel thumbnails
        $('[id^=carousel-selector-]').click(function () {
        var id_selector = $(this).attr("id");
        try {
            var id = /-(\d+)$/.exec(id_selector)[1];
            console.log(id_selector, id);
            jQuery('#myCarousel').carousel(parseInt(id));
        } catch (e) {
            console.log('Regex failed!', e);
        }
        });
        // When the carousel slides, auto update the text
        $('#myCarousel').on('slid.bs.carousel', function (e) {
                 var id = $('.item.active').data('slide-number');
                $('#carousel-text').html($('#slide-content-'+id).html());
        });
        });
        </script>
    </head>
    <body>
        <div class="container">
    <div id="main_area">
        <!-- Slider -->
        <div class="row">
            <div class="col-sm-6" id="slider-thumbs">
                <!-- Bottom switcher of slider -->
                <ul class="hide-bullets">
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-0">
                            <img src="images/pkk.jpg">
                        </a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-1"><img src="images/gallery1.jpg"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-2"><img src="images/gallery2.jpg"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-3"><img src="images/gallery3.jpg"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-4"><img src="images/gallery4.jpg"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-5"><img src="images/gallery5.jpg"></a>
                    </li>
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-6"><img src="images/gallery6.jpg"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-7"><img src="images/gallery7.jpg"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-8"><img src="images/gallery8.jpg"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-9"><img src="images/gallery9.jpg"></a>
                    </li>
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-10"><img src="images/gallery10.jpg"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-11"><img src="images/gallery11.jpg"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-12"><img src="images/gallery12.jpg"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-13"><img src="images/gallery13.jpg"></a>
                    </li>
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-14"><img src="images/gallery14.jpg"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-15"><img src="images/gallery15.jpg"></a>
                    </li>
                </ul>
            </div>
            <div class="col-sm-6">
                <div class="col-xs-12" id="slider">
                    <!-- Top part of the slider -->
                    <div class="row">
                        <div class="col-sm-12" id="carousel-bounding-box">
                            <div class="carousel slide" id="myCarousel">
                                <!-- Carousel items -->
                                <div class="carousel-inner">
                                    <div class="active item" data-slide-number="0">
                                        <img src="images/pkk_1.jpg"></div>

                                    <div class="item" data-slide-number="1">
                                        <img src="images/gallery1.jpg"></div>

                                    <div class="item" data-slide-number="2">
                                        <img src="images/gallery2.jpg"></div>

                                    <div class="item" data-slide-number="3">
                                        <img src="images/gallery3.jpg"></div>

                                    <div class="item" data-slide-number="4">
                                        <img src="images/gallery4.jpg"></div>

                                    <div class="item" data-slide-number="5">
                                        <img src="images/gallery5.jpg"></div>
                                    
                                    <div class="item" data-slide-number="6">
                                        <img src="images/gallery6.jpg"></div>
                                    
                                    <div class="item" data-slide-number="7">
                                        <img src="images/gallery7.jpg"></div>
                                    
                                    <div class="item" data-slide-number="8">
                                        <img src="images/gallery8.jpg"></div>
                                    
                                    <div class="item" data-slide-number="9">
                                        <img src="images/gallery9.jpg"></div>
                                    
                                    <div class="item" data-slide-number="10">
                                        <img src="images/gallery10.jpg"></div>
                                    
                                    <div class="item" data-slide-number="11">
                                        <img src="images/gallery11.jpg"></div>
                                    
                                    <div class="item" data-slide-number="12">
                                        <img src="images/gallery12.jpg"></div>

                                    <div class="item" data-slide-number="13">
                                        <img src="images/gallery13.jpg"></div>

                                    <div class="item" data-slide-number="14">
                                        <img src="images/gallery14.jpg"></div>

                                    <div class="item" data-slide-number="15">
                                        <img src="images/gallery15.jpg"></div>
                                </div>
                                <!-- Carousel nav -->
                                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </a>
                                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/Slider-->
        </div>

    </div>
</div>
    </body>
</html>
<%@include file="MasterPage/footer.jsp" %>
