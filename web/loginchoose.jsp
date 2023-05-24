<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Title -->
        <title>Mom's Flower Nursery</title>

        <!-- Favicon -->
        <link rel="icon" href="img/core-img/favicon.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body, html {
                height: 100%;
                margin: 0;
                font-family: Arial, Helvetica, sans-serif;
            }

            * {
                box-sizing: border-box;
            }

            .bg-image {

                /* Add the blur effect */
                filter: blur(8px);
                -webkit-filter: blur(20px);

                /* Full height */
                height: 100%;

                /* Center and scale the image nicely */
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
            }

            /* Position text in the middle of the page/image */
            .bg-text {
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
                color: white;
                font-weight: bold;
                border: 3px solid #f1f1f1;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                z-index: 2;
                width: 40%;
                padding: 20px;
                text-align: center;
            }

            /* Set a style for the submit button */
            .btn {
                background-color: #4CAF50;
                color: white;
                padding: 16px 20px;
                border: none;
                cursor: pointer;
                width: 100%;
                opacity: 0.9;
            }

            .btn:hover {
                opacity: 1;
            }
        </style>
    </head>
    <body>
        <div class="bg-image" style="background-image: url(img/bg-img/51.jpg);"></div>
        <div class="bg-text">
            <h1>Hi, who are you?</h1>
            <button class="btn" onclick="document.location = 'Staff.jsp'">STAFF</button><br><br>
            <button class="btn" onclick="document.location = 'Login.jsp'">CUSTOMER</button><br><br>
        </div>
    </body>
</html>