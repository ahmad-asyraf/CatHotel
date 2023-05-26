<%-- 
    Document   : deleteprocess
    Created on : May 6, 2023, 11:47:07 PM
    Author     : admin
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int result;
            String id = request.getParameter("id");

            Class.forName("com.mysql.jdbc.Driver");
            String myURL = "jdbc:mysql://localhost/cat";
            Connection con = DriverManager.getConnection(myURL, "root", "root");

            String insertQuery = "DELETE FROM reservation WHERE id=?";
            PreparedStatement myPS = con.prepareStatement(insertQuery);
            myPS.setString(1, id);

            result = myPS.executeUpdate();
            con.close();
        %>
    </body>
</html>
