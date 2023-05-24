<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String Id = request.getParameter("Id");
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "cat";
    String userid = "root";
    String password = "root";
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Menu</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <style>
            body {
                font-family: "Times New Roman", Georgia, Serif;
                padding-top: 100px
            }
            ;
            h1, h2, h3,h4,h5,h6{
                font-family: "Playfair Display";
                letter-spacing: 5px;
            }
            * {
                box-sizing: border-box;
            }
            body {
                font-family: Verdana, sans-serif;
            }
            .mySlides {
                display: none;
            }
            img {
                vertical-align: middle;
            }
            .column{
                display: inline-block;
                width: 50%;
                padding: 0 10px;
            }
            .row{
                margin: 0 5px;
            }
            .row:before{
                content: "";
                display: table;
                clear: both;
                vertical-align: middle;
            }
            .active {
                background-color: #717171;
            }
            @keyframes fade {
                from {
                    opacity: .4
                }
                to {
                    opacity: 1
                }
            }

            /* On smaller screens, decrease text size */
            @media screen and (max-width: 300px) {
                .text {
                    font-size: 11px
                }
                body{
                    padding-top: 0px;
                }
            }
            .card{
                box-shadow:0 4px 8px 0 rgba(0, 0, 0 ,0.2);
                max-width: 1000px;
                max-height: 1000px;
                margin: auto;
                font-family: arial;
                text-align: center;
            }
            .price{
                color: grey;
                font-size: 22px;
            }
            .card button{
                border: none;
                outline: 0;
                padding: 12px;
                color: white;
                background-color: #000;
                text-align: center;
                cursor: pointer;
                width: 100%;
                font-size: 18px;
            }
            .card button:hover{
                opacity: 0.7;
            }
            .active{
                background-color: #04AA6D;
            }

            input[type=text],
            input[type=password] {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 2px solid #ccc;
                box-sizing: border-box;
            }
            /* set a style for all buttons*/
            button {
                background-color: green;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                cursor: pointer;
                width: 100%;
            }

            .cancelbtn {
                padding: 14px 20px;
                background-color: #FF2E00;
            }

            .cancelbtn,
            .signupbtn {
                float: left;
                width: 50%
            }

            .container {
                padding: 16px;
            }


            .modal {
                display: none;
                position: fixed;
                z-index: 1;
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0, 0, 0);
                background-color: rgba(0, 0, 0, 0.4);
                padding-top: 60px;
            }

            .modal-content {
                background-color: #fefefe;
                margin: 5% auto 15% auto;
                border: 1px solid #888;
                width: 80%;
            }

            .close {
                position: absolute;
                right: 35px;
                top: 15px;
                color: #000;
                font-size: 40px;
                font-weight: bold;
            }

            .close:hover,
            .close:focus {
                color: red;
                cursor: pointer;
            }

            .clearfix::after {
                content: "";
                clear: both;
                display: table;
            }

            @media screen and (max-width: 300px) {
                .cancelbtn,
                .signupbtn {
                    width: 100%;
                }
            }
        </style> 
    </head>
    <body>
        <div class ="w3-top">
            <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing: 4px;">
                <a href="Pelanggan.jsp" class="w3-bar-item w3-button">Tempahan Makanan</a>
                <!-- navbar kanan -->
                <div class="w3-right w3-hide-small">
                    <a href="kategori pelanggan.jsp" class="w3-bar-item w3-button">Kategori</a>
                    <a  <a onclick="document.getElementById('id01').style.display = 'block'" class="w3-bar-item w3-button">Tambah Menu</a>
                    <a href="#menu" class="w3-bar-item w3-button">Tempahan</a>
                    <a href="logkeluarServlet" class="w3-bar-item w3-button" >Log Keluar</a>
                </div>
            </div>
        </div>

        <!--close the modal by just clicking outside of the modal-->
        <script>
            var modal = document.getElementById('id01');

            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        </script>
        <%
            try {
                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                statement = connection.createStatement();
                String sql = "select * from pack";
                resultSet = statement.executeQuery(sql);
                int i = 0;
                while (resultSet.next()) {
        %>

        <div class="column">
            <div class="card">
                <h1><%=resultSet.getString("packname")%></h1>
                <img src=CatPackage?Id<%=resultSet.getInt(1)%> alt="image not found" width="100px" height="100px">
                <p class="info"><p>Info<%=resultSet.getString("info")%></p>
                <p class="price"><p>RM<%=resultSet.getString("price")%></p>
            </div>
        </div>
        <%
                    i++;
                }
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>