<%-- 
    Document   : home
    Created on : 25 May 2023, 9:37:27 pm
    Author     : Asyraf
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
        <div class="hero-wrap js-fullheight" style="background-image: url('<%= request.getContextPath()%>/images/QD bg1.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
                    <div class="col-md-11 ftco-animate text-center">
                        <h1 class="mb-4">Welcome <%= staff.getName()%> </h1>
                        <p><a href="#" class="btn btn-primary mr-md-4 py-3 px-4">Learn more <span class="ion-ios-arrow-forward"></span></a></p>
                    </div>
                </div>
            </div>
        </div>

        <section class="ftco-section bg-light ftco-no-pt ftco-intro">
            <div class="container">
                <div class="row">
                    <!-- <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
                       <div class="d-block services active text-center">
                         <div class="icon d-flex align-items-center justify-content-center">
                                   <span class="flaticon-blind"></span>
                         </div>
                         <div class="media-body">
                           <h3 class="heading">Cat Playtime </h3>
                           <p>QD Cat Hotel and Spa provide playtime for cats. </p>
                           <a href="#" class="btn-custom d-flex align-items-center justify-content-center"><span class="fa fa-chevron-right"></span><i class="sr-only">Read more</i></a>
                                    </div> --!><!-- comment -->

                    <div class="row mt-5">
                        <div class="col-md-12 text-center">      
                            <p class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib.com</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen">
            <svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/>
            </svg>
        </div>

        <%@include file="../layouts/footer.jsp" %>
    </body>
</html>
