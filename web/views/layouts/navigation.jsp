<%-- 
    Document   : navigation
    Created on : 26 May 2023, 1:05:58 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String currentPage = request.getServletPath();
%>
<a class="navbar-brand" href="<%= request.getContextPath()%>/views/customers/home.jsp">
    <span class="flaticon-pawprint-1 mr-2"></span>QD Cat Hotel and Spa Centre
</a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
        aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="fa fa-bars"></span> Menu
</button>
<div class="collapse navbar-collapse" id="ftco-nav">
    <ul class="navbar-nav ml-auto">
        <li class="nav-item <%= currentPage.equals("/views/customers/home.jsp") ? "active" : ""%>">
            <a href="<%= request.getContextPath()%>/views/customers/home.jsp" class="nav-link">Home</a>
        </li>
        <li class="nav-item <%= currentPage.equals("/views/customers/reservation.jsp") ? "active" : ""%>">
            <a href="<%= request.getContextPath()%>/views/customers/reservation.jsp" class="nav-link">Reservation</a>
        </li> 
        <li class="nav-item <%= currentPage.equals("/views/customers/reserve-history.jsp") ? "active" : ""%>">
            <a href="<%= request.getContextPath()%>/views/customers/reserve-history.jsp" class="nav-link text-nowrap">Reservation History</a>
        </li>
        <li class="nav-item <%= currentPage.equals("/views/customers/profile.jsp") ? "active" : ""%>">
            <a href="<%= request.getContextPath()%>/views/customers/profile.jsp" class="nav-link">Profile</a>
        </li>
        <li class="nav-item <%= currentPage.equals("/controllers/logout.jsp") ? "active" : ""%>">
            <a href="<%= request.getContextPath()%>/controllers/logout.jsp" class="nav-link">Logout</a>
        </li>
    </ul>
</div>

