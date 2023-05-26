<%-- 
    Document   : login
    Created on : 25 May 2023, 9:34:07 pm
    Author     : Asyraf
--%>

<%@page import="java.sql.*"%>
<%@page import="models.User"%>
<%@page import="models.Staff"%>
<%@page import="utils.DBConnect"%>
<%@page errorPage="error.jsp" %>
<%
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
%>

