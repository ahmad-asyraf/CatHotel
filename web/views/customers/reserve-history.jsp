<%-- 
    Document   : reservehistory
    Created on : May 6, 2023, 11:08:16 PM
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
        <div class="container mt-4">
            <table class="table table-dark">
                <tr>
                    <td>Username</td>
                    <td>Cat Name</td>
                    <td>Cat Breed</td>
                    <td>Cat Age</td>
                    <td>Date</td>
                    <td>Time</td>
                </tr>
                <%                    
                    int i = 1;
                    DBConnect con = new DBConnect();
                    String sql = "SELECT * FROM reservation WHERE username=?";
                    PreparedStatement ps = con.getConnection().prepareStatement(sql);
                    ps.setString(1, user.getUsername());
                    ResultSet rs = ps.executeQuery();

                    while (rs.next()) {
                %>
                <tr>
                    <td><%= i++%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><div class="filter"></div></td>
                </tr>
                <%
                    }
                    con.closeConnection();
                %>
            </table>
        </div>

        <%@include file="../layouts/footer.jsp" %>
        <script src="js/custom.js"></script>
        <script>
            $(document).ready(function () {
                App.init();
            });
        </script>
        <script>
            var today = new Date().toISOString().split('T')[0];
            document.getElementsByName("bookdate")[0].setAttribute('min', today);
        </script>
    </body>
</html>
