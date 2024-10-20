<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" /> -->

    <!-- font link -->
    <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merienda"> -->
    <script src="./form.js"></script>

</head>


<body>
    <div class="login-bgimage">

    </div>

    <!-- navbar -->

    <nav id="login-nav">
        <div id="login-nav-items">
            <div>
                <a href="#">  <img src="../Asset/logo.png" alt="logo-image" class="login-nav-logo">  </a>
               
                <a href="#" onclick="showPage('signup')" class="login-nav-item">AeroManage</a>

            </div>

        </div>

    </nav>





    <div class="login-backroundfont"><br><br>
        <h1> <b>Login to AeroManage.</b> </h1><br>

        <h2> Earn Miles every time you fly with us and our partners.</h2>

    </div>

    <!-- bothside   -->

    <div class="login-container">
        <form action="/03_AIRLINE_AMS/LoginPageServlet" method="post" class="form" name="formval">
            <h2>Login</h2>
            <input type="text" name="username" class="box" placeholder="Enter Username ">
            <input type="password" id="password" name="password" class="box" placeholder="Enter Password">
            
            <input type="submit" value="Login" id="submit">
        </form>

       
        <div class="login-centre"></div>

        <div class="login-rightside">
            <form action='../Sign_up/signup.jsp' class="form2">
                <h3>Register now to make most of every mile with AeroManage</h3>
                <input type="submit" value="Join now" id="submit2">
            </form>
        </div>


       

    </div>

</body>

</html>