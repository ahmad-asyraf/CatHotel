<%-- 
    Document   : addpack
    Created on : May 10, 2023, 11:32:54 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Package</title>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
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
                background-image: url("blue.jpg");

                min-height: 380px;

                /* Center and scale the image nicely */
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                position: relative;
            }
        </style>
    </head>
    <body>
    <center><h3>Add Package</h3></center>

    <form class="modal-content animate" method="post" action=CatPackage enctype="multipart/form-data">
        <div class="container">
            <label><b>Info</b></label>
            <input type="text" value="info" placeholder="info" name="info" class="form-control" >

            <label><b>Package Name</b></label>
            <input type="text" placeholder="Package Name" name="packname" class="form-control" required>

            <label><b>Price</b></label>
            <input type="text" placeholder="RM" name="price" class="form-control" required >

            <input type="file" id="myFile" placeholder="Picture" name="gambar" class="form-control" >

            <div class="clearfix">
                <p><button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="btn btn-primary">Cancel</button></p>
                <p><button type="submit" class="btn btn-primary">Add</button></p>
            </div>
        </div>
    </form>
</body>
</html>
