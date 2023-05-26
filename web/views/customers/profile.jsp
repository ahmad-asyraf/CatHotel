<%-- 
    Document   : profiletest
    Created on : May 2, 2023, 4:25:05 AM
    Author     : admin
--%>

<%@page import="models.User"%>
<%@page import="java.sql.*"%>
<%@page import="utils.DBConnect"%>
<%@page errorPage="../../controllers/error.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User user = (User) session.getAttribute("username");
    if (user == null) {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../layouts/header.jsp" %>
    </head>
    <body>
        <div class="wrap">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 d-flex align-items-center">
                        <p class="mb-0 phone pl-md-2">
                            <a href="#" class="mr-2"><span class="fa fa-phone mr-1"></span> +60 110784607</a> 
                            <a href="#"><span class="fa fa-paper-plane mr-1"></span> QDCatHotelAndSpa_Centre@gmail.com</a>
                        </p>
                    </div>
                    <div class="col-md-6 d-flex justify-content-md-end">
                        <div class="social-media">
                            <p class="mb-0 d-flex">
                                <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
                                <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
                                <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
                                <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <%@include file="../layouts/navigation.jsp" %>
            </div>
        </nav>
        <!-- END nav -->
        <%            DBConnect con = new DBConnect();
            String sql = "SELECT * FROM customer WHERE username=?";
            PreparedStatement ps = con.getConnection().prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
        %>
        <div class="container mt-4">
            <form method="POST" action="editprofile.jsp" enctype='multipart/form-data'>
                <div class="form-group mb-4">
                    <input type="hidden" name="username" value="<%=rs.getString(2)%>">
                    <h3>Update <%=rs.getString(3)%> Profile</h3>
                    <h6>Name</h6>
                    <input type="text" name="name"  class="form-control" id="formGroupExampleInput" value="<%=rs.getString(1)%>">
                </div>
                <div class="form-group mb-4">
                    <h6>Username</h6>
                    <input type="text" name="username"  class="form-control" id="formGroupExampleInput" value="<%=rs.getString(2)%>"readonly>
                </div>
                <div class="form-group mb-4">
                    <h6>Password</h6>
                    <input type="password" name="password"  class="form-control" id="myInput" value="<%=rs.getString(3)%>">
                    <input type="checkbox" onclick="myFunction()">Show Password
                </div>
                <div class="form-group mb-4">
                    <h6>Phone Number</h6>
                    <input type="tel" name="phone"  class="form-control" id="formGroupExampleInput" value="<%=rs.getString(4)%>">
                </div>
                <div class="form-group mb-4">
                    <h6>Address</h6>
                    <input type="text" name="address"  class="form-control" id="formGroupExampleInput" value="<%=rs.getString(5)%>">
                </div>
                <button type="submit" name="updateowner" class="btn btn-primary" value="">Update</button>
            </form>
        </div>
        <%
            }
            con.closeConnection();
        %>
        <%@include file="../layouts/footer.jsp" %>
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
