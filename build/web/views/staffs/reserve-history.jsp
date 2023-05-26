<%-- 
    Document   : reservehistory
    Created on : May 6, 2023, 11:08:16 PM
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
        <!-- END nav -->
        <div class="container mt-4">
            <h3>Reservation List</h3>
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
                    ps.setString(1, staff.getName());
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
