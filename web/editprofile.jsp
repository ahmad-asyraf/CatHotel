<%@page import="CatSystem.user"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel = "icon" href = "" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Information</title>
    </head>
    <body>
        <div class="container">
            <form id="processEdit"  method="post">
                <%
                    String name = request.getParameter("name");

                    String password = request.getParameter("password");
                    String phone = request.getParameter("phone");
                    String address = request.getParameter("address");

                    Class.forName("com.mysql.jdbc.Driver");
                    String myURL = "jdbc:mysql://localhost/cat";
                    Connection con = DriverManager.getConnection(myURL, "root", "root");
                    String insertQuery = "UPDATE customer SET " + "name=?, password=?, phone=?, address=?" + "WHERE username='" + session.getAttribute("username") + "'";
                    PreparedStatement myPS = con.prepareStatement(insertQuery);

                    myPS.setString(1, name);

                    myPS.setString(2, password);
                    myPS.setString(3, phone);
                    myPS.setString(4, address);
                    myPS.executeUpdate();

                    response.sendRedirect("Login.jsp");

                    con.close();
                %>
            </form>
        </div>
    </body>
</html>