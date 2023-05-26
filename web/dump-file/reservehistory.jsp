<%-- 
    Document   : reservehistory
    Created on : May 6, 2023, 11:08:16 PM
    Author     : admin
--%>

<%@page import="CatSystem.reservation" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="CatSystem.user"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
        <title></title>
        <link rel="icon" type="image/x-icon"/>
        <link href="css/loader.css" rel="stylesheet" type="text/css" />
        <script src="js/loader.js"></script>
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,600,700&display=swap" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/plugins.css" rel="stylesheet" type="text/css" />
        <link href="css/form-2.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <link rel="stylesheet" type="text/css" href="css/theme-checkbox-radio.css">
        <link rel="stylesheet" type="text/css" href="css/switches.css">
        <style>
            .bg-img {
                /* The image used */
                background-image: url("blue.jpg");

                min-height: 380px;

                /* Center and scale the image nicely */
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                position: relative;
            }
        </style>
    </head>
    <body>
        <div style="overflow-x:auto;">
            <table class="table table-dark">
                <tr>
                    <td>Username</td>
                    <td>Cat Name</td>
                    <td>Cat Breed</td>
                    <td>Cat Age</td>
                    <td>Date</td>
                    <td>Time</td>

                    <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            String myURL = "jdbc:mysql://localhost/cat";
                            Connection con = DriverManager.getConnection(myURL, "root", "root");
                            String insertQuery = "SELECT * FROM reservation where username '" + session.getAttribute("username") + "'";
                            Statement s = con.createStatement();
                            ResultSet myRS = s.executeQuery(insertQuery);

                            while (myRS.next()) {

                    %>
                <tr>

                    <td><%=myRS.getString(1)%></td>
                    <td><%=myRS.getString(2)%></td>
                    <td><%=myRS.getString(3)%></td>
                    <td><%=myRS.getString(4)%></td>
                    <td><%=myRS.getString(5)%></td>
                    <td><%=myRS.getString(6)%></td>

                    <td><div class="filter">

                        </div></td>
                </tr>
                <%
                        }
                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </table>
        </div>

        <script src="js/jquery-3.1.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/perfect-scrollbar.min.js"></script>
        <script src="js/app.js"></script>
        <script>
            $(document).ready(function () {
                App.init();
            });
        </script>
        <script>
            var today = new Date().toISOString().split('T')[0];
            document.getElementsByName("bookdate")[0].setAttribute('min', today);
        </script>
        <script src="js/custom.js"></script>
    </body>
</html>
