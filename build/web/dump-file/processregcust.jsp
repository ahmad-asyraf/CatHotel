<%-- 
    Document   : processregcust
    Created on : Apr 12, 2023, 11:28:18 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>\
<%@page language="java" %>
<%@page import="java.sql.*" %>
<%@page import="CatSystem.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .bg-img {
                /* The image used */
                background-image: url("blue.jpg");

                min-height: 1050px;

                /* Center and scale the image nicely */
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                position: relative;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="form">
                <jsp:useBean id="user" class="CatSystem.User" scope="request" />
                <jsp:setProperty name="user" property="*" />
                <%@ page errorPage="error.jsp" %> 
                <%
                    int result = 0;
                    Class.forName("com.mysql.jdbc.Driver");
                    String myURL = "jdbc:mysql://localhost/cat";
                    Connection con = DriverManager.getConnection(myURL, "root", "root");

                    String insertQuery = "INSERT INTO customer(name, username, password, phone, address) VALUES(?, ?, ?, ?, ?)";
                    PreparedStatement myPS = con.prepareStatement(insertQuery);

                    myPS.setString(1, user.getName());
                    myPS.setString(2, user.getUsername());
                    myPS.setString(3, user.getPassword());
                    myPS.setString(4, user.getPhone());
                    myPS.setString(5, user.getAddress());
                    result = myPS.executeUpdate();

                    if (result > 0) {%>

                <%    response.sendRedirect("Login.jsp");
                    }
                    con.close();
                %>
            </div>
        </div>

        <script type="text/javascript">
            function alertName() {
                alert("Register Confirmed!");
            }
        </script> 
    </body>
</html>
