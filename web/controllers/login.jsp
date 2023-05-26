<%-- 
    Document   : login
    Created on : 25 May 2023, 9:34:07 pm
    Author     : Asyraf
--%>

<%@page import="java.sql.*"%>
<%@page import="CatSystem.User"%>
<%@page import="utils.DBConnect"%>
<%@page errorPage="../error.jsp" %>
<%
    DBConnect con = new DBConnect();

    User user = new User();
    user.setUsername(request.getParameter("username"));
    user.setPassword(request.getParameter("password"));

    String sql = "SELECT * FROM customer WHERE username=? AND password=?";
    PreparedStatement ps = con.getConnection().prepareStatement(sql);
    ps.setString(1, user.getUsername());
    ps.setString(2, user.getPassword());

    ResultSet rs = ps.executeQuery();
    String contextPath = request.getContextPath();

    if (rs.next()) {
        User user1 = new User();
        user1.setUsername(rs.getString("username"));
        session.setAttribute("username", user1);
        request.getRequestDispatcher(contextPath + "/../views/customers/home.jsp").forward(request, response);
    } else {
        out.print("<script type=\"text/javascript\">");
        out.print("alert('Sorry! Wrong email or password.');");
        out.print("location='" + contextPath + "/login.jsp';");
        out.print("</script>");
    }
    con.closeConnection();
%>
