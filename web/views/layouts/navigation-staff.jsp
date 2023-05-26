<%-- 
    Document   : navigation-staff
    Created on : 26 May 2023, 3:04:26 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-dribbble"><i class="sr-only">Whatapps</i></span></a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <%
            String currentPage = request.getServletPath();
        %>
        <a class="navbar-brand" href="<%= request.getContextPath()%>/views/staffs/home.jsp">
            <span class="flaticon-pawprint-1 mr-2"></span>QD Cat Hotel and Spa Centre
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="fa fa-bars"></span> Menu
        </button>
        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item <%= currentPage.equals("/views/staffs/home.jsp") ? "active" : ""%>">
                    <a href="<%= request.getContextPath()%>/views/staffs/home.jsp" class="nav-link">Home</a>
                </li>
                <li class="nav-item <%= currentPage.equals("/views/staffs/addpack.jsp") ? "active" : ""%>">
                    <a href="<%= request.getContextPath()%>/views/staffs/addpack.jsp" class="nav-link">Add Package</a>
                </li> 
                <li class="nav-item <%= currentPage.equals("/views/staffs/reserve-history.jsp") ? "active" : ""%>">
                    <a href="<%= request.getContextPath()%>/views/staffs/reserve-history.jsp" class="nav-link text-nowrap">Reservation List</a>
                </li>
                <li class="nav-item <%= currentPage.equals("/views/staffs/profile.jsp") ? "active" : ""%>">
                    <a href="<%= request.getContextPath()%>/views/staffs/profile.jsp" class="nav-link">Profile</a>
                </li>
                <li class="nav-item <%= currentPage.equals("/controllers/logout.jsp") ? "active" : ""%>">
                    <a href="<%= request.getContextPath()%>/controllers/logout.jsp" class="nav-link">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
