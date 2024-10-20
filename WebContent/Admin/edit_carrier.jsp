<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap"
        rel="stylesheet">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <link rel="stylesheet" href="editcarrier.css" />
    <link href="https://fonts.googleapis.com/css2?family=Boogaloo&display=swap" rel="stylesheet">
    <title>Document</title>
</head>


<body>
      <!-- 
function getDetail_flight(){
    return ` -->
    <nav id="login-nav">
        <div id="login-nav-items">
            <div>
                 <img src="logo.png" alt="logo-image" class="login-nav-logo">  </a>
               
                <a href="#" onclick="showPage('signup')" class="login-nav-item">AeroManage</a>

            </div>

        </div>

    </nav>

  

    <div class="flight_detail-card">
        <img src="editcarrier.png.png" alt="image" class="admin-flight-image-detail" />
        <form action="" class="flight_detail-form">
            <h1 class="flight_detail-heading"> <br>  EDIT CARRIER</h1>
            <br>
            <br>
            <br>
            <div class="flight_detail-form-row">
                <div class="flight_detail-split-inputs">
                    <div class="flight_detail-form-input">

                        <div class="flight_detail-form-submit">
                            <input type="number" class="flight_detail-form-input-text" name="flight_id"
                                placeholder="Enter the carrier id..">
                            <input type="submit" value="Edit Details" class="myprofile-button " required>
                        </div>
                    </div>

                </div>
            </div>
            <div id="flight_detail-table-container">
                <table class="table table-striped table-class" id="flight-detail-table-id">

                    <thead>
                        <tr>
                            <th>Carrier ID</th>
                            <th>Carrier Name</th>
                           
                            <th></th>
                        </tr>

                    </thead>

                    <tbody>




                        <tr>
                            <td>#234566</td>
                            <td>Skyway Airlines</td>
                            
                            <td><button class="flight_detail-ticket-booking">Edit</button></td>
                        </tr>
                        <tr>
                            <td>#32145</td>
                            <td>JetStream Airways</td>
                          
                            <td><button class="flight_detail-ticket-booking">Edit</button></td>
                        </tr>
                        <tr>
                            <td>#45123</td>
                            <td>Sunrise Jet</td>
                            
                            <td><button class="flight_detail-ticket-booking">Edit</button></td>
                        </tr>
                       
                    </tbody>

                </table>




            </div>
            <br>
            <br>
            <br>
        </form>
    </div>

    <!-- `;
} -->
</body>
</html>