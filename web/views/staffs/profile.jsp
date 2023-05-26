<%-- 
    Document   : profiletest
    Created on : May 2, 2023, 4:25:05 AM
    Author     : admin
--%>

<%@page import="models.Staff"%>
<%@page import="java.sql.*"%>
<%@page import="utils.DBConnect"%>
<%@page errorPage="../../controllers/error.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Staff staff = (Staff) session.getAttribute("username");
    if (staff == null) {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="../layouts/header.jsp" %>
    </head>
    <body>
        <%@include file="../layouts/navigation-staff.jsp" %>
        <%            
            DBConnect con = new DBConnect();
            String sql = "SELECT * FROM staff WHERE name=?";
            PreparedStatement ps = con.getConnection().prepareStatement(sql);
            ps.setString(1, staff.getName());
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
        %>
        <div class="container mt-4">
            <form method="POST" action="editprofile.jsp" enctype='multipart/form-data'>
                <div class="form-group mb-4">
                    <input type="hidden" name="id" value="<%=rs.getString(1)%>">
                    <h3>Update <%=rs.getString(2)%> Profile</h3>
                    <h6>Name</h6>
                    <input type="text" name="name"  class="form-control" id="formGroupExampleInput" value="<%=rs.getString(2)%>">
                </div>
                <div class="form-group mb-4">
                    <h6>Password</h6>
                    <input type="password" name="password"  class="form-control" id="myInput" value="<%=rs.getString(3)%>">
                    <input type="checkbox" onclick="myFunction()"> Show Password
                </div>
                <div class="form-group mb-4">
                    <h6>Email</h6>
                    <input type="text" name="email"  class="form-control" id="formGroupExampleInput" value="<%=rs.getString(4)%>">
                </div>
                <div class="form-group mb-4">
                    <h6>Address</h6>
                    <input type="text" name="address"  class="form-control" id="formGroupExampleInput" value="<%=rs.getString(5)%>">
                </div>
                <div class="form-group mb-4">
                    <h6>Phone</h6>
                    <input type="text" name="phone"  class="form-control" id="formGroupExampleInput" value="<%=rs.getString(6)%>">
                </div>
                <div class="container row">
                    <div class="">
                        <button type="submit" name="updateowner" class="btn btn-primary" value="">Update</button>
                    </div>
                    <div class="ml-3 text-light">
                        <a onclick="document.location = '<%= request.getContextPath()%>/views/staffs/home.jsp';" class="btn btn-primary" >Cancel</a>
                    </div>
                </div>
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
