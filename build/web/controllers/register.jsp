<%-- 
    Document   : register
    Created on : 25 May 2023, 9:38:25 pm
    Author     : Asyraf
--%>

<%@page import="models.User"%>
<%@page import="java.sql.*"%>
<%@page import="utils.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page errorPage="../error.jsp" %>
<%
    DBConnect con = new DBConnect();
    User user = new User();

    user.setName(request.getParameter("name"));
    user.setUsername(request.getParameter("username"));
    user.setPassword(request.getParameter("password"));
    user.setPhone(request.getParameter("phone"));
    user.setAddress(request.getParameter("address"));
    String contexPath = request.getContextPath();

    int result = 0;
    String status = "NotExist";

    //Check IF the username register already exist
    String checkExist = "SELECT username FROM customer WHERE username=?";
    PreparedStatement psCheck = con.getConnection().prepareStatement(checkExist);
    psCheck.setString(1, user.getUsername());
    ResultSet rsCheck = psCheck.executeQuery();

    //IF the username already exist return FALSE
    while (rsCheck.next()) {
        if (rsCheck.getString("username").equals(user.getUsername())) {
            status = "Exist";
            out.print("<script type=\"text/javascript\">");
            out.print("alert('Sorry! The username already used.');");
            out.print("location='" + contexPath + "/register.jsp';");
            out.print("</script>");
        }
    }

    //IF the username not exist return TRUE
    if (status == "NotExist") {
        String sql = "INSERT INTO customer(name, username, password, phone, address) VALUES(?, ?, ?, ?, ?)";
        PreparedStatement ps = con.getConnection().prepareStatement(sql);
        ps.setString(1, user.getName());
        ps.setString(2, user.getUsername());
        ps.setString(3, user.getPassword());
        ps.setString(4, user.getPhone());
        ps.setString(5, user.getAddress());
        result = ps.executeUpdate();

        if (result > 0) {
            out.print("<script type=\"text/javascript\">");
            out.print("alert('Register Successfull! Please login to continue.');");
            out.print("location='" + contexPath + "/login.jsp';");
            out.print("</script>");
        }
    }
    con.closeConnection();
%>


