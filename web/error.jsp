<%-- 
    Document   : error
    Created on : Apr 16, 2023, 11:16:14 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page isErrorPage="true" %>  
  
<h3>Sorry the username already exist</h3>  
  
Exception is: <%= exception %> 
<h3><a href='register.jsp'>Go Back</a></h3>
    </body>
</html>
