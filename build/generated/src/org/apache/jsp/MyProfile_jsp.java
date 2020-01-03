package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class MyProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/MasterPage/Header.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"css/bootstrap-theme.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/hover-min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"js/jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <style>\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("                margin-bottom: 0px;\n");
      out.write("            }\n");
      out.write("            .top\n");
      out.write("            {\n");
      out.write("                background-image: url('images/header.png');\n");
      out.write("            }\n");
      out.write("            .topl\n");
      out.write("            {\n");
      out.write("                min-height: 70px;\n");
      out.write("            }\n");
      out.write("            .topr\n");
      out.write("            {\n");
      out.write("                min-height: 70px;\n");
      out.write("                font-family: cursive;\n");
      out.write("                text-shadow:3px 2px 3px black;\n");
      out.write("                font-size:40px;\n");
      out.write("                color: blueviolet;\n");
      out.write("                margin-top: 15px;\n");
      out.write("            }\n");
      out.write("            .head\n");
      out.write("            {\n");
      out.write("                font-family: cursive;\n");
      out.write("            }\n");
      out.write("            #SignUp\n");
      out.write("            {\n");
      out.write("                display: none;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function(){\n");
      out.write("$(\"#pToggle\").click(function(){\n");
      out.write("var eye=$(\"#pToggle\").text();\n");
      out.write("//alert(eye);\n");
      out.write("if(eye===\" \")\n");
      out.write("{\n");
      out.write("$(\"#inputPassword\").prop(\"type\",\"text\");\n");
      out.write("$(\"#pToggle\").html(\"<span class='glyphicon glyphicon-eye-close'></span>\");\n");
      out.write("}\n");
      out.write("else\n");
      out.write("{\n");
      out.write("$(\"#inputPassword\").prop(\"type\",\"password\");\n");
      out.write("$(\"#pToggle\").html(\"<span class='glyphicon glyphicon-eye-open'> </span>\");\n");
      out.write("}\n");
      out.write("});\n");
      out.write("$(\"#signup\").click(function(){\n");
      out.write("    $(\"#SignIn\").css(\"display\",\"none\");\n");
      out.write("    $(\"#SignUp\").css(\"display\",\"block\");\n");
      out.write("});\n");
      out.write("$(\"#signin\").click(function(){\n");
      out.write("    $(\"#SignUp\").css(\"display\",\"none\");\n");
      out.write("    $(\"#SignIn\").css(\"display\",\"block\");\n");
      out.write("});\n");
      out.write("});\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("         <div class=\"row top\">\n");
      out.write("                <div class=\"col-sm-3 topl\">\n");
      out.write("                    <img src=\"images/logo.png\" style=\"height: 90px;\" class=\"img-responsive\" alt=\"\"/>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-9 topr\">\n");
      out.write("                    Traveller.com\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        <div class=\"row\" style=\"margin-bottom: -20px;\">\n");
      out.write("                 <nav class=\"navbar navbar-default\" style=\"background-image: url('images/nav-primary.png');font-size: 16px;\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\" aria-expanded=\"false\">\n");
      out.write("        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("      </button>\n");
      out.write("        <a href=\"index.html\" class=\"navbar-brand head\">Traveller</a>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li><a href=\"about.jsp\">About us <span class=\"sr-only\">(current)</span></a></li>\n");
      out.write("        <li><a href=\"registration.jsp\">Registration</a></li>\n");
      out.write("        <li><a href=\"enquirey.jsp\">Enquiry</a></li>\n");
      out.write("        <li><a href=\"gallery.jsp\">Gallery</a></li>\n");
      out.write("        <li><a data-toggle=\"modal\" data-target=\"#myModal\" style=\"cursor:pointer;\">Login</a></li>\n");
      out.write("        \n");
      out.write("      </ul>\n");
      out.write("      <form class=\"navbar-form navbar-left\" role=\"search\">\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("            <input type=\"text\" class=\"form-control search\" style=\"color: buttontext;background-color: lightgrey;box-shadow: 1px 2px 3px grey inset;\"placeholder=\"Search\">\n");
      out.write("        </div>\n");
      out.write("        <button type=\"submit\" class=\"btn btn-success\">Submit</button>\n");
      out.write("      </form>\n");
      out.write("    </div><!-- /.navbar-collapse -->\n");
      out.write("  </div><!-- /.container-fluid -->\n");
      out.write("</nav>\n");
      out.write("                </div>\n");
      out.write("<div class=\"modal fade\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" style=\"padding-right: 0px;\">\n");
      out.write("  <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("    <div class=\"modal-content\">\n");
      out.write("        <div id=\"SignIn\">\n");
      out.write("      <div class=\"modal-header\">\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n");
      out.write("        <h2 class=\"modal-title\" id=\"myModalLabel\" style=\"text-align: center;font-weight: bold;font-family: cursive;color: darkblue;text-shadow:2px 2px 3px darkslategrey;\">Login Form</h2>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-body\">\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("              <label for=\"inputEmail\">Email address</label>\n");
      out.write("        <input type=\"email\" id=\"inputEmail\" class=\"form-control\" placeholder=\"Email address\" required autofocus>\n");
      out.write("      </div>\n");
      out.write("<br/>\n");
      out.write("<div class=\"form-group\">\n");
      out.write("  <label class=\"control-label\">Password</label>\n");
      out.write("  <div class=\"input-group\">\n");
      out.write("\t<input type=\"password\" id=\"inputPassword\" class=\"form-control\" placeholder=\"Password\" required aria-describedby=\"pToggle\"/>\n");
      out.write("\t<span id=\"pToggle\" class=\"input-group-addon\" aria-hidden=\"true\"><span class=\"glyphicon glyphicon-eye-open\"> </span></span>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("      <div class=\"checkbox\">\n");
      out.write("        <label>\n");
      out.write("          <input type=\"checkbox\" value=\"remember-me\"> Remember me\n");
      out.write("        </label>\n");
      out.write("      </div>\n");
      out.write("      <button class=\"btn btn-lg btn-primary btn-block\" type=\"submit\">Sign in</button>\n");
      out.write("      </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-8\" style=\"margin:0px 0px 30px 30px;\"><a href=\"forgetpasswod.html\">Forget Password ?</a></div>\n");
      out.write("            <div class=\"col-sm-2\" style=\"margin-bottom: 30px;text-align: right;\"><a href=\"loginhelp.html\">Help ?</a></div>\n");
      out.write("        </div>\n");
      out.write("      <div class=\"modal-footer\">\n");
      out.write("        <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\n");
      out.write("        <button type=\"button\" class=\"btn btn-primary\" id=\"signup\">Sign Up</button>\n");
      out.write("      </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <div id=\"SignUp\">\n");
      out.write("      <div class=\"modal-header\">\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\n");
      out.write("        <h2 class=\"modal-title\" id=\"myModalLabel1\" style=\"text-align: center;font-weight: bold;font-family: cursive;color: darkblue;text-shadow:2px 2px 3px darkslategrey;\">Sign Up Form</h2>\n");
      out.write("      </div>\n");
      out.write("            <form action=\"codeSignUp\" method=\"post\">\n");
      out.write("            <div class=\"modal-body\">\n");
      out.write("      <div class=\"form-group\">\n");
      out.write("              <label>Name</label>\n");
      out.write("        <input type=\"text\" name=\"fname\" class=\"form-control\" placeholder=\"Full Name\" required=\"true\"/>\n");
      out.write("      </div>\n");
      out.write("          <br/>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("            <label for=\"inputEmail\">Email</label>\n");
      out.write("            <input type=\"email\" name=\"email\" class=\"form-control\" placeholder=\"example@email.com\" required=\"true\"/>\n");
      out.write("      </div>\n");
      out.write("          <br/>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("            <label>Mobile Number</label>\n");
      out.write("            <input type=\"number\" name=\"mobile\" class=\"form-control\" placeholder=\"Mobile Number\" required=\"true\"/>\n");
      out.write("      </div>\n");
      out.write("          <br/>\n");
      out.write("          <div class=\"form-group\">\n");
      out.write("            <label>User Name</label>\n");
      out.write("            <input type=\"text\" name=\"userName\" class=\"form-control\" placeholder=\"Create an User Name\" required=\"true\"/>\n");
      out.write("      </div>\n");
      out.write("          <br/>\n");
      out.write("          <div class=\"form-group\">\n");
      out.write("            <label>Create Password</label>\n");
      out.write("        <input type=\"password\" name=\"password\" class=\"form-control\" placeholder=\"Create Password\" required=\"true\"/>\n");
      out.write("      </div>\n");
      out.write("          <br/>\n");
      out.write("          <div class=\"form-group\">\n");
      out.write("            <label>Confirm Password</label>\n");
      out.write("        <input type=\"password\" name=\"cpassword\" class=\"form-control\" placeholder=\"Confirm Password\" required=\"true\"/>\n");
      out.write("      </div>\n");
      out.write("          <div class=\"form-group\">\n");
      out.write("              <input type=\"checkbox\" name=\"staysignin\" required=\"true\"/><label>Stay Sign In</label>\n");
      out.write("          <input type=\"submit\" class=\"btn btn-lg btn-primary btn-block\" value=\"Sign Up\"/>\n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("            </form>\n");
      out.write("      <div class=\"modal-footer\">\n");
      out.write("        <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\n");
      out.write("        <button type=\"button\" class=\"btn btn-primary\" id=\"signin\">Login</button>\n");
      out.write("      </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-sm-12\">\n");
      out.write("                <div class=\"col-sm-4\"></div>\n");
      out.write("                <div class=\"col-sm-6\">\n");
      out.write("                    <div class=\"col-sm-12\">\n");
      out.write("                        <div class=\"col-sm-6\">\n");
      out.write("                            <img src=\"images/Annapurna.jpg\" class=\"img img-responsive img-circle img-thumbnail\" style=\"height: 100px;width: 100px;\"/>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-6\">\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-2\"></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
