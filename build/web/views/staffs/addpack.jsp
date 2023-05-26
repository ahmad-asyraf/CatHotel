<%-- 
    Document   : addpack
    Created on : May 10, 2023, 11:32:54 PM
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

        <div class="container mt-4">
            <h3>Add Package</h3>

            <form class="modal-content animate" method="post" action=CatPackage enctype="multipart/form-data">
                <div class="container">
                    <label><b>Info</b></label>
                    <input type="text" value="info" placeholder="info" name="info" class="form-control" >

                    <label><b>Package Name</b></label>
                    <input type="text" placeholder="Package Name" name="packname" class="form-control" required>

                    <div class="mb-3">
                        <label><b>Price</b></label>
                        <input type="text" placeholder="RM" name="price" class="form-control" required >
                    </div>

                    <div class="mb-3">
                        <input type="file" id="myFile" name="gambar" class="form-control">
                    </div>

                    <div class="container row mb-3">
                        <button type="submit" class="btn btn-primary">Add</button>
                        <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="ml-3 btn btn-primary">Cancel</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
