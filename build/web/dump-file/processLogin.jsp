<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="CatSystem.User" %>
<%@page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "icon" href = "./image/meow1.png" />
        <title>Login Confirmation</title>
        <style>
            body {
                font-family: "Times New Roman", Times, serif;
                background-image: url(image/qd5.png);
            }

            .container{
                display: flex;
                justify-content: center;
                align-items: center;
                width: 91vw;
                height: 80vh;
                padding: 50px;
            }

            form {
                background-color: white;
                padding: 10px 10px 10px 10px;
                box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
            }

            input[type=text], input[type=password] {
                width: 100%;
                background-color: #F1F1F1;
                padding: 12px 5px;
                margin: 10px 0;
                display: inline-block;
                border: 1px solid #F1F1F1;
                box-sizing: border-box;
            }

            button {
                font-family: "Times New Roman", Times, serif;
                font-size: 1em;
                background-color: grey;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: 0.5px solid darkgrey;
                cursor: pointer;
                width: 100%;

                table-layout: fixed;
                border-collapse: collapse;
            }

            button:hover {
                opacity: 0.8;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <form id="processLogin" method="post">
                <%
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");

                    Class.forName("com.mysql.jdbc.Driver");
                    String myURL = "jdbc:mysql://localhost/cat";
                    Connection con = DriverManager.getConnection(myURL, "root", "root");
                    Statement myStatement = con.createStatement();
                    String insertQuery = "SELECT username, password FROM customer WHERE " + "username='" + username + "'";
                    ResultSet myRS = myStatement.executeQuery(insertQuery);
                    while (myRS.next()) {
                        session.setAttribute("username", username);
                        session.setAttribute("password", password);
                        response.sendRedirect("userhome.jsp");
                    }
                    con.close();
                %>
            </form>
        </div>
    </body>
</html>
