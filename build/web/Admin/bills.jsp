<%-- 
    Document   : bills
    Created on : Jul 28, 2018, 9:22:21 PM
    Author     : Pawan acer
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invoice Details</title>
    <style>
        body
        {
            background: #1e1e1e;
            color: white;
        }
        .delete-btn {
            position: relative;
        }

        .delete {
            display: block;
            color: #000;
            text-decoration: none;
            position: absolute;
            background: #EEEEEE;
            font-weight: bold;
            padding: 0px 3px;
            border: 1px solid;
            top: -6px;
            left: -6px;
            font-family: Verdana;
            font-size: 12px;
        }
        .footer
            {
                text-align: center;
                padding:10px; 
                min-height: 40px;
                color: white;
                background: rgba(0,0,0,0.8);
            }
    </style>
</head>
<body>
     <div class="container-fluid">
        <div class="row">
            <%@include file="Left.jsp" %>
            <%@include file="Header.jsp" %>
            <div class="col-sm-9" style="float:right;">
    <form>
        <div class="row">
            <div class="col-xs-12 col-md-12">
                <div>
                    <h2 class="text-center">Invoice Details</h2>
                </div>
            </div>
            <div class="col-xs-12 col-md-12">
                <hr>
                <div class="row">
                    <div class="col-xs-6 col-md-6">
                        <address>
                            <strong>Bill To:</strong><br>
                            <input type="email" class="form form-control" placeholder="userId"/>
                            <input type="email" class="form form-control" placeholder="Details"/>
                        </address>
                    </div>
                    <div class="col-xs-6 col-md-6 text-right">
                        <address>
                            <strong>Order Date:</strong><br>
                            Aug 03, 2018<br><br>
                            Order No: <strong>1234</strong>
                        </address>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr class="item-row">
                                <th>Ride carriage</th>
                                <th>Distance (KM)</th>
                                <th>Fare (per KM)</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                        <tr id="hiderow">
                            <td colspan="4">
                                <a id="addRow" href="javascript:;" title="Add a row" class="btn btn-primary">Add a row</a>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td class="text-right"><strong>Sub Total</strong></td>
                            <td><span id="subtotal">0.00</span></td>
                        </tr>
                        <tr>
                            <td><strong>Total Distance: </strong><span id="totalQty" style="color: red; font-weight: bold">0</span> KM</td>
                            <td></td>
                            <td class="text-right"><strong>Discount</strong></td>
                            <td><input class="form-control" id="discount" value="0" type="text"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td class="text-right"><strong>Service Fee</strong></td>
                            <td><input class="form-control" id="shipping" value="0" type="text"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td class="text-right"><strong>Grand Total</strong></td>
                            <td><span id="grandTotal">0</span></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <button class="btn btn-success" style="float:right;margin: 10px;" onclick="print()">Save and Print</button>
        <input type="reset" style="float:right;margin: 10px;" class="btn btn-warning" onmouseover="alert('You are realy want to clear invoice.');" value="Clear"/>
        <br/>
    </form>
    </div>
    <script src="jquery.invoice.js"></script>
    <script>
        jQuery(document).ready(function(){
            jQuery().invoice({
                addRow : "#addRow",
                delete : ".delete",
                parentClass : ".item-row",

                price : ".price",
                qty : ".qty",
                total : ".total",
                totalQty: "#totalQty",

                subtotal : "#subtotal",
                discount: "#discount",
                shipping : "#shipping",
                grandTotal : "#grandTotal"
            });
        });
    </script>
    
        </div>
            <div class="row footer">
                copyright &COPY; 2018
    </div>
     </div>
</body>
</html>