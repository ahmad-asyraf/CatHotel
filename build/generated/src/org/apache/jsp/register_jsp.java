package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      			"error.jsp", true, 8192, true);
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no\">\n");
      out.write("        <title></title>\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\"/>\n");
      out.write("        <link href=\"css/loader.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <script src=\"js/loader.js\"></script>\n");
      out.write("        <!-- BEGIN GLOBAL MANDATORY STYLES -->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Quicksand:400,500,600,700&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"css/plugins.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"css/form-2.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!-- END GLOBAL MANDATORY STYLES -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/theme-checkbox-radio.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/switches.css\">\n");
      out.write("        <style>\n");
      out.write("            .bg-img {\n");
      out.write("                /* The image used */\n");
      out.write("                background-image: url(\"QD bg1.jpg\");\n");
      out.write("\n");
      out.write("                min-height: 1050px;\n");
      out.write("\n");
      out.write("                /* Center and scale the image nicely */\n");
      out.write("                background-position: center;\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: cover;\n");
      out.write("                position: relative;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"form\">\n");
      out.write("        <!-- BEGIN LOADER -->\n");
      out.write("        <div id=\"load_screen\"> <div class=\"loader\"> <div class=\"loader-content\">\n");
      out.write("                    <div class=\"spinner-grow align-self-center\"></div>\n");
      out.write("                </div></div></div>\n");
      out.write("        <!--  END LOADER -->\n");
      out.write("\n");
      out.write("        <div class=\"bg-img\">\n");
      out.write("            <div class=\"form-container outer\">\n");
      out.write("                <div class=\"bg-img\">\n");
      out.write("                    <div class=\"form-form\">\n");
      out.write("                        <div class=\"form-form-wrap\">\n");
      out.write("                            <div class=\"form-container\">\n");
      out.write("                                <div class=\"form-content\">\n");
      out.write("                                    <h1 class=\"\">Hi, Cat Owner</h1>\n");
      out.write("                                    <p class=\"\">Register your account to proceed.</p>\n");
      out.write("\n");
      out.write("                                    <!--<form class=\"text-left\" method=\"POST\" action=\"processregcust.jsp\">-->\n");
      out.write("                                    <form class=\"text-left\" method=\"POST\" action=\"");
      out.print( request.getContextPath());
      out.write("/controllers/register.jsp\">\n");
      out.write("                                        <div class=\"form\">\n");
      out.write("\n");
      out.write("                                            <div id=\"username-field\" class=\"field-wrapper input\">\n");
      out.write("                                                <label for=\"username\">Name</label>\n");
      out.write("                                                <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-user\"><path d=\"M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2\"></path><circle cx=\"12\" cy=\"7\" r=\"4\"></circle></svg>\n");
      out.write("                                                <input id=\"text\" name=\"name\" type=\"text\" class=\"form-control\" placeholder=\"Your Name\">\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div id=\"username-field\" class=\"field-wrapper input\">\n");
      out.write("                                                <label for=\"username\">Username</label>\n");
      out.write("                                                <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-user\"><path d=\"M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2\"></path><circle cx=\"12\" cy=\"7\" r=\"4\"></circle></svg>\n");
      out.write("                                                <input id=\"text\" name=\"username\" type=\"text\" class=\"form-control\" placeholder=\"Username\">\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div id=\"password-field\" class=\"field-wrapper input mb-2\">\n");
      out.write("                                                <div class=\"d-flex justify-content-between\">\n");
      out.write("                                                    <label for=\"password\">Password</label>\n");
      out.write("                                                </div>\n");
      out.write("                                                <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-lock\"><rect x=\"3\" y=\"11\" width=\"18\" height=\"11\" rx=\"2\" ry=\"2\"></rect><path d=\"M7 11V7a5 5 0 0 1 10 0v4\"></path></svg>\n");
      out.write("                                                <input id=\"password\" name=\"password\" type=\"password\" class=\"form-control\" placeholder=\"Password\">\n");
      out.write("                                                <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" id=\"toggle-password\" class=\"feather feather-eye\"><path d=\"M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z\"></path><circle cx=\"12\" cy=\"12\" r=\"3\"></circle></svg>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div id=\"username-field\" class=\"field-wrapper input\">\n");
      out.write("                                                <label for=\"phone\">Number Phone</label>\n");
      out.write("                                                <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-user\"><path d=\"M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2\"></path><circle cx=\"12\" cy=\"7\" r=\"4\"></circle></svg>\n");
      out.write("                                                <input id=\"tel\" name=\"phone\" type=\"tel\" class=\"form-control\" placeholder=\"Please insert number only\">\n");
      out.write("                                            </div>\n");
      out.write("                                            <div id=\"username-field\" class=\"field-wrapper input\">\n");
      out.write("                                                <label for=\"phone\">Address</label>\n");
      out.write("                                                <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"feather feather-user\"><path d=\"M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2\"></path><circle cx=\"12\" cy=\"7\" r=\"4\"></circle></svg>\n");
      out.write("                                                <input id=\"address\" name=\"address\" type=\"address\" class=\"form-control\" placeholder=\"Please insert your address\">\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"d-sm-flex justify-content-between\">\n");
      out.write("                                                <div class=\"field-wrapper\">\n");
      out.write("                                                    <button type=\"submit\" name=\"register\" class=\"btn btn-primary\" value=\"\">Register</button>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </form>\n");
      out.write("                                    <p class=\"signup-link\">Already Have An Account ? <a href=\"login.jsp\">Login into account</a></p>\n");
      out.write("                                </div>                  \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->\n");
      out.write("        <script src=\"../js/jquery-3.1.1.min.js\"></script>\n");
      out.write("        <script src=\"../js/popper.min.js\"></script>\n");
      out.write("        <script src=\"../js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- END GLOBAL MANDATORY SCRIPTS -->\n");
      out.write("        <script src=\"../js/form-2.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            var loaderElement = document.querySelector('#load_screen');\n");
      out.write("            setTimeout(function () {\n");
      out.write("                loaderElement.style.display = \"none\";\n");
      out.write("            }, 3000);\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
