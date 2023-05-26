<%-- 
    Document   : petowner
    Created on : Apr 11, 2023, 11:31:33 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
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
                background-image: url("QD bg1.jpg");

                min-height: 380px;

                /* Center and scale the image nicely */
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                position: relative;
            }
        </style>
    </head>
    <body class="form">
        <!-- BEGIN LOADER -->
        <div id="load_screen"> <div class="loader"> <div class="loader-content">
                    <div class="spinner-grow align-self-center"></div>
                </div></div></div>
        <!--  END LOADER -->

        <div class="form-container outer">
            <div class="bg-img">
                <div class="form-form">
                    <div class="form-form-wrap">
                        <div class="form-container">
                            <div class="form-content">
                                <h1 class="">Hi, Staff!</h1>
                                <p class="">Log in to your account to continue.</p>
                                <form class="text-left" method="POST" action="<%= request.getContextPath()%>/controllers/login.jsp">
                                    <div class="form">
                                        <div id="username-field" class="field-wrapper input">
                                            <label for="name">Name</label>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                                            <input id="text" name="name" type="text" class="form-control" placeholder="name">
                                        </div>

                                        <div id="password-field" class="field-wrapper input mb-2">
                                            <div class="d-flex justify-content-between">
                                                <label for="password">PASSWORD</label>
                                            </div>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-lock"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
                                            <input id="password" name="password" type="password" class="form-control" placeholder="Password">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" id="toggle-password" class="feather feather-eye"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="12" r="3"></circle></svg>
                                        </div>
                                        <div class="d-sm-flex justify-content-between">
                                            <div class="field-wrapper">
                                                <button type="submit" name="loginasuser" class="btn btn-primary" value="">Log In</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
        <script src="js/jquery-3.1.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <!-- END GLOBAL MANDATORY SCRIPTS -->
        <script src="js/form-2.js"></script>
        <script>
            var loaderElement = document.querySelector('#load_screen');
            setTimeout(function () {
                loaderElement.style.display = "none";
            }, 3000);
        </script>
    </body>
</html>