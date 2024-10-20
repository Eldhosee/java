<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link href="https://fonts.googleapis.com/css2?family=Boogaloo&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="./admin.css" />
</head>
<body>
        <div class="admin-links">
            <nav id="admin-nav-links">
                <div class="dropdown">
                <div class="container" onclick="myFunction(this)">
                    <button class="dropbtn">MENU</button>
                </div>
                    <div class="dropdown-content">
                <a class="admin-nav-links-item" href="#add_carrier" onclick="showPage('add_carrier')">ADD CARRIER</a>
                <a class="admin-nav-links-item" href="#edit_carrier" onclick="showPage('edit_carrier')">EDIT CARRIER</a>
                <a class="admin-nav-links-item" href="#remove_carrier" onclick="showPage('remove_carrier')">REMOVE CARRIER</a>
                <a class="admin-nav-links-item" href="#add_flight" onclick="showPage('add_flight')">ADD FLIGHT</a>
                <a class="admin-nav-links-item" href="#edit_flight" onclick="showPage('edit_flight')">EDIT FLIGHT</a>
                <a class="admin-nav-links-item" href="#remove_flight" onclick="showPage('remove_flight')">REMOVE FLIGHT </a>
                <a class="admin-nav-links-item" href="#detail_flight" onclick="showPage('detail_flight')">FLIGHT DETAILS</a>
                <a class="admin-nav-links-item" href="../login/login.jsp">LOGOUT</a>
                </div>
                </div>
                <span class="admin-nav-links-name">AeroManage</span>
                <span class="admin-nav-links-itemname">WELCOME ADMIN</span>
            </nav>
        </div>
        <div class="admin-header">
            <div id="admin_container"> </div>
        </div>
    <script src="./add_carrier.js"></script>
    <script src="./edit_carrier.js"></script>
    <script src="./remove_carrier.js"></script>
    <script src="./add_flight.js"></script>
    <script src="./edit_flight.js"></script>
    <script src="./remove_flight.js"></script>
    <script src="./detail_flight.js"></script>
    <script src="./admin_app.js"></script>
</body>
</html>