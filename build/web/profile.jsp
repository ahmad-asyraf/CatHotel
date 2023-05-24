<%-- 
    Document   : profiletest
    Created on : May 2, 2023, 4:25:05 AM
    Author     : admin
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
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
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            String myURL = "jdbc:mysql://localhost/cat";
            Connection con = DriverManager.getConnection(myURL, "root", "root");
            String insertQuery = "SELECT * FROM customer WHERE username='" + session.getAttribute("username") + "'";
            Statement s = con.createStatement();
            ResultSet myRS = s.executeQuery(insertQuery);

            while (myRS.next()) {
        %>
       <div class="container">
        <form method="POST" action="editprofile.jsp" enctype='multipart/form-data'>
                            <div class="form-group mb-4">
                                <input type="hidden" name="username" value="<%=myRS.getString(2)%>">
                                <h3>Update <%=myRS.getString(1)%> Profile</h3>
                                <h6>Name</h6>
                                <input type="text" name="name"  class="form-control" id="formGroupExampleInput" value="<%=myRS.getString(1)%>">
                            </div>
                            <div class="form-group mb-4">
                                <h6>Username</h6>
                                <input type="text" name="username"  class="form-control" id="formGroupExampleInput" value="<%=myRS.getString(2)%>"readonly>
                            </div>
                            <div class="form-group mb-4">
                                <h6>Password</h6>
                                <input type="password" name="password"  class="form-control" id="myInput" value="<%=myRS.getString(3)%>">
                                <input type="checkbox" onclick="myFunction()">Show Password
                            </div>
                            <div class="form-group mb-4">
                                <h6>Phone Number</h6>
                                <input type="tel" name="phone"  class="form-control" id="formGroupExampleInput" value="<%=myRS.getString(4)%>">
                            </div>
                            <div class="form-group mb-4">
                                <h6>Address</h6>
                                <input type="text" name="address"  class="form-control" id="formGroupExampleInput" value="<%=myRS.getString(5)%>">
                            </div>
                            <button type="submit" name="updateowner" class="btn btn-primary" value="">Update</button>
        </form>
       </div>
                            <%
                }
                con.close();
            %>
        <script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>

    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/perfect-scrollbar.min.js"></script>
    <script src="js/app.js"></script>
    
    <script>
        $(document).ready(function() {
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
