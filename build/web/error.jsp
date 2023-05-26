<%-- 
    Document   : error
    Created on : Apr 16, 2023, 11:16:14 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
        <style>
            body {
                text-align: center;
            }
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
        <h1>An error occurred.</h1>
        <p>Error details: <%= exception.getMessage()%></p>

        <h3><a href="<%= request.getContextPath()%>/login.jsp">Go Back</a></h3>
    </body>
</html>
