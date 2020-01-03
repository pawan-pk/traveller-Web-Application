<%-- 
    Document   : profileSetting
    Created on : Jul 28, 2018, 9:23:19 PM
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
            body
            {
                background-image: url('images/Welcome.jpg');
                background-attachment: fixed;
                background-repeat: no-repeat;
                background-size: 100% 100%;
            }
            .transfer
            {
                font-size: 11px;
                border-top: 1px solid lightgrey;
                border-bottom: 1px solid lightgrey;
               background: white;
               padding: 10px;
               color: red;
               margin: 0px -20px 0px -20px;
            }
            .right
            {
                margin-left: 5px;
            }
            .new
            {
                min-height: 300px;
                border: 2px solid #f0c663;
                margin-top: 310px;
                background: rgba(0,250,250,0.7);
            }
            .whats_new
            {
                margin-left: -15px;
                margin-bottom: 10px;
                text-align: center;
                font-size: 18px;
                background: #f0c663;
                margin-top: 0px;
            }
        </style>
        <!--Start of Zendesk Chat Script-->
<script type="text/javascript">
window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute("charset","utf-8");
$.src="https://v2.zopim.com/?5tqOPUy87w1OHnkVgaBbLt54aJqCLz2N";z.t=+new Date;$.
type="text/javascript";e.parentNode.insertBefore($,e)})(document,"script");
</script>
<!--End of Zendesk Chat Script-->
    </head>
    <body>
        <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12"><br/>
                <h2 class="text-responsive" style="background: rgba(0,255,255,0.8);box-shadow: 0px 0px 20px #0066cc;border-radius: 50%;text-align: center;color: #ff3333;font-weight: bold;">Plan Your Holiday.</h2>
                <center>
                    <form action="EventsManagement.html" class="form-inline" style="padding-left:30px;">
                        <div class="form-group">
                             <input type="submit" value="Travel" class="input-group-addon form-control btn-success focus" id="basic-addon1"/>
                             <input type="text" placeholder="From" class="form-control focus"/>
                             <span class="glyphicon glyphicon-transfer transfer"></span>
                             <input type="text" placeholder="To" class="form-control focus right"/>
                        </div>
                        <div class="form-group">
                             <input type="date" value="2018-07-21" class="form-control focus"/>
                             <span class="glyphicon glyphicon-transfer transfer"></span>
                             <input type="date" value="2018-10-20" class="form-control focus right"/>
                             <input type="submit" value="Go" class="input-group-addon form-control btn-success focus" id="basic-addon2"/>
                        </div>
                    </form>
                </center>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 new">
                    <div class="row whats_new">What's New</div>
                    <div class="col-sm-12">
                        <marquee direction="up" onmouseover="stop()" onmouseout="start()">
                            <ul style="min-height: 240px;">
                            <%
                            String commandn="select * from notification";
                            ResultSet res=db.GetBulksRecord(commandn);
                            while(res.next())
                            {
                                String x=res.getString("zone");
                                if(x.equals("User Zone")||x.equals("Both (General Zone and User Zone)"))
                                {
                            %>
                            <li style="font-size: 18px;list-style: circle;color: white;"><%=res.getString("notice")%> <span class="text-danger"> <%=res.getString("ndt")%></span></li>
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
        </div>
    </body>
</html>
<%}%>
<%@include file="footer.jsp" %>