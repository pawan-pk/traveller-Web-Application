package org.apache.jsp.MasterPage;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Footer</title>\n");
      out.write("        <link href=\"../css/bootstrap-theme.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../css/hover-min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"../js/jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"../js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <style>\n");
      out.write("            .pfooter\n");
      out.write("            {\n");
      out.write("                min-height: 70px;\n");
      out.write("                background-color: black;\n");
      out.write("                color: white;\n");
      out.write("                font-size: 14px;\n");
      out.write("            }\n");
      out.write("            .pfooter h4\n");
      out.write("            {\n");
      out.write("                color: aqua;\n");
      out.write("                font-size: 17px;\n");
      out.write("                font-family: times new romen;\n");
      out.write("            }\n");
      out.write("            .pfooter ul\n");
      out.write("            {\n");
      out.write("                list-style-type:none;\n");
      out.write("            }\n");
      out.write("            .footer\n");
      out.write("            {\n");
      out.write("                min-height: 40px;\n");
      out.write("                background: black;\n");
      out.write("                color: white;\n");
      out.write("                text-align: center;\n");
      out.write("                font-size: 14px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"countainer-fluid\">\n");
      out.write("        <div class=\"row pfooter\">\n");
      out.write("                <div class=\"col-sm-5\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><h4>Contect Us</h4>\n");
      out.write("                            <ul>\n");
      out.write("                                <li>Prepared By : Pawan Kumar Kushwaha</li>\n");
      out.write("                                <li>Email : pkk4499@gmail.com</li>\n");
      out.write("                                <li>Mobile No. +918853594678</li>\n");
      out.write("                                <li>Address : Softpro India, Lucknow</li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-4\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><h4>Guidence By</h4>\n");
      out.write("                            <ul>\n");
      out.write("                                <li>Er. Akhilesh Kumar</li>\n");
      out.write("                                <li></li>\n");
      out.write("                                <li></li>\n");
      out.write("                                <li></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-3\">\n");
      out.write("                    <img src=\"images/spi.png\" class=\"img-responsive img-thumbnail\" alt=\"\"/>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-12 footer\">\n");
      out.write("                    copyright &copy; 2018\n");
      out.write("                </div>\n");
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
