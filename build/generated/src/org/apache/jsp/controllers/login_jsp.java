package org.apache.jsp.controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import CatSystem.Staff;
import java.sql.*;
import CatSystem.User;
import utils.DBConnect;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"../error.jsp", true, 8192, true);
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
      out.write("\n");
      out.write("\n");
      out.write("\n");

    DBConnect con = new DBConnect();
    String contextPath = request.getContextPath();

    //------------------------ Staff Login ------------------------
    Staff staff = new Staff();
    staff.setName(request.getParameter("name"));
    staff.setPassword(request.getParameter("password"));

    String sql1 = "SELECT * FROM staff WHERE name=? AND password=?";
    PreparedStatement ps1 = con.getConnection().prepareStatement(sql1);
    ps1.setString(1, staff.getName());
    ps1.setString(2, staff.getPassword());

    ResultSet rs1 = ps1.executeQuery();

    if (rs1.next()) {
        staff.setName(rs1.getString("name"));
        session.setAttribute("username", staff);
        request.getRequestDispatcher(contextPath + "/../views/staffs/home.jsp").forward(request, response);
    } else {
        //------------------------ Customer Login ------------------------
        User user = new User();
        user.setUsername(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));

        String sql = "SELECT * FROM customer WHERE username=? AND password=?";
        PreparedStatement ps = con.getConnection().prepareStatement(sql);
        ps.setString(1, user.getUsername());
        ps.setString(2, user.getPassword());

        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            user.setUsername(rs.getString("username"));
            session.setAttribute("username", user);
            request.getRequestDispatcher(contextPath + "/../views/customers/home.jsp").forward(request, response);
        } else {
            out.print("<script type=\"text/javascript\">");
            out.print("alert('Sorry! Wrong email or password.');");
            out.print("location='" + contextPath + "/login.jsp';");
            out.print("</script>");
        }
    }
    con.closeConnection();

      out.write('\n');
      out.write('\n');
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
