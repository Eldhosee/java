<%@page import="dao.ViewProfile"%>
<%@page import="Bean.Customer"%>
<%@page import="dao.ViewFlightsDao"%>
<%@page import="Bean.Flight"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalDate" %>
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
    <link rel="stylesheet" href="./style.css" />
    <link href="https://fonts.googleapis.com/css2?family=Boogaloo&display=swap" rel="stylesheet">
    <title>AeroManage</title>
</head>
 
<body>
    <header>
        <nav id="homepage-nav">
            <div id="homepage-nav-items">
                <div>
                    <img src="./Asset/logo.png" alt="logo-image" class="home-nav-logo">
                    <a onclick="showPage('home')" class="homepage-nav-item active">Home</a>
                    <a onclick="showPage('myprofile')" class="homepage-nav-item">MyProfile</a>
                    <a onclick="showPage('mytrip')" class="homepage-nav-item">MyTrip</a>
                    <a href="../login/login.jsp" class="homepage-nav-item">Logout</a>
                </div>
                <div>
                    <span class="homepage-nav-item" id="nav-right"> Welcome User</span>
                </div>
            </div>
 
        </nav>
 
        
 
 
    </header>
 
    <div id="home">
        <div id="home-banner-container">
            <img src="./Asset/img1.jpg" alt="banner" class="home-banner-image" />
            <div id="home-banner-texts">
 
                <span class="home-banner-text"> Book non stop flights</span>
 
            </div>
        </div>
        <div id="home-table-container">
            <h2 id="home-table-heading">Avaliable flights</h2>
            <form id="home-fliter-form" action="FlightFilter">
                <input type="text" placeholder="From" name="from"/>
                <input type="text" placeholder="Destination" name="destination" />
                <input type="date" name="date"/>
                <button id="home-ticket-filter" type ="submit">Filter</button>
                
                <% if (request.getAttribute("filterFlights") != null) { %>
            <button id="home-clear-filter" type="button" onclick="clearFilter()">Clear Filter</button>
        <% } %>
 
            </form>
 
            <table class="table table-striped table-class" id="table-id">
 
                <thead>
                    <tr>
                        <th>From</th>
                        <th>Destination</th>
                        <th>Date</th>
                        <th>Price</th>
                        <th>Booking</th>
                    </tr>
 
                </thead>
 
                <tbody>
 
 

   
<%
    // Get the current date
    LocalDate currentDate = LocalDate.now();

    // Retrieve the ArrayList of Flight objects from the ViewFlightsDao
    ArrayList<Flight> myList = new ArrayList<>();
    if(request.getAttribute("filterFlights")!=null)
    {
    	myList=(ArrayList<Flight>)request.getAttribute("filterFlights");
    	out.println("true");
    }
    else {
    	myList=ViewFlightsDao.viewFlights();
    }

    // Check if the list is not null and contains flights
    if (myList != null && !myList.isEmpty()) {
        for (Flight item : myList) {
            LocalDate flightDate = item.getDepartureDate().toLocalDate(); // Convert java.sql.Date to LocalDate
            
            // Check if the flight date is in the future
            if (flightDate.isAfter(currentDate)) {
%>
                <tr>
                    <td><%= item.getOrigin() %></td>
                    <td><%= item.getDestination() %></td>
                    <td><%= item.getDepartureDate() != null ? item.getDepartureDate() : "N/A" %></td>
                    <td><%= item.getAirfare() %></td>
                    <td>
                        <button class="home-ticket-booking" onclick="window.location.href='./flight_booking/booking.jsp'">Book</button>
                    </td>
                </tr>
<%
            }
        }
    } else {
        // No flights found message
        out.println("<tr><td colspan='5'>No data found</td></tr>");
    }
%>
</tbody>
</table>
 
 
 
 
        </div>
        <div id="home-body">
 
            <span class="home-body-heading">Start planning your next trip</span>
            <div id="home-cards">
                <div class="home-card">
                    <img src="./Asset/card1.avif" alt="card-image" class="home-card-images">
                    <div class="home-card-body">
                        <span class="home-card-heading">UNITED ARB EMIRATES</span>
                        <span class="home-card-subheading">Dubai</span>
                        <span class="home-card-para">Book Economy Class Return until 1 Dec 24</span>
                        <span class="home-card-price">from INR 25,032*</span>
                    </div>
                </div>
 
 
                <div class="home-card">
                    <img src="./Asset/card2.avif" alt="card-image" class="home-card-images">
                    <div class="home-card-body">
                        <span class="home-card-heading">UNITED STATES</span>
                        <span class="home-card-subheading">Chicago</span>
                        <span class="home-card-para">Book Economy Class Return until 30 Sep 24</span>
                        <span class="home-card-price">from INR 86,198*</span>
                    </div>
                </div>
 
 
                <div class="home-card">
                    <img src="./Asset/card3.avif" alt="card-image" class="home-card-images">
                    <div class="home-card-body">
                        <span class="home-card-heading">UNITED STATES</span>
                        <span class="home-card-subheading">Dallas</span>
                        <span class="home-card-para">Book Economy Class Return until 24 Jan 25</span>
                        <span class="home-card-price">from INR 102,998*</span>
                    </div>
                </div>
 
                <div class="home-card">
                    <img src="./Asset/card4.avif" alt="card-image" class="home-card-images">
                    <div class="home-card-body">
                        <span class="home-card-heading">UNITED ARB EMIRATES</span>
                        <span class="home-card-subheading">Dubai</span>
                        <span class="home-card-para">Book Economy Class Return until 30 Mar 25</span>
                        <span class="home-card-price">from INR 106,783*</span>
                    </div>
                </div>
 
                <div class="home-card">
                    <img src="./Asset/card5.avif" alt="card-image" class="home-card-images">
                    <div class="home-card-body">
                        <span class="home-card-heading">BRAZIL</span>
                        <span class="home-card-subheading">Sao Paulo</span>
                        <span class="home-card-para">Book Economy Class Return until 2 Oct 24</span>
                        <span class="home-card-price">from INR 141,170*</span>
                    </div>
                </div>
 
                <div class="home-card">
                    <img src="./Asset/card6.avif" alt="card-image" class="home-card-images">
                    <div class="home-card-body">
                        <span class="home-card-heading">UNITED STATES</span>
                        <span class="home-card-subheading">Los Angeles</span>
                        <span class="home-card-para">Book Economy Class Return until 9 Sep 24</span>
                        <span class="home-card-price">from INR 498,059*</span>
                    </div>
                </div>
                <div class="home-card">
                    <img src="./Asset/card1.avif" alt="card-image" class="home-card-images">
                    <div class="home-card-body">
                        <span class="home-card-heading">UNITED ARB EMIRATES</span>
                        <span class="home-card-subheading">Dubai</span>
                        <span class="home-card-para">Book Economy Class Return until 31 May 25</span>
                        <span class="home-card-price">from INR 25,032*</span>
                    </div>
                </div>
 
            </div>
            <div id="home-card-scroll-icons">
                <button id="slideLeft" type="button"><span class="material-symbols-outlined">
                        arrow_back
                    </span></button>
                <button id="slideRight" type="button"><span class="material-symbols-outlined">
                        arrow_forward
                    </span></button>
            </div>
        </div>
        </br>
 
 
        <div id="home-banner-items">
            <img src="./Asset/img1.webp" alt="banner image">
            <span id="banner2-miniheading"> Travel inspiration</span>
            <span id="banner2-heading"> Fly Better to Edinburg</span>
 
 
            <div id="underline"></div>
            <span id="banner2-para"> Starting November , fly in comfort to Scotland's historical capital</span>
            <button id="banner-button"> Learn More</button>
        </div>
 
        
 
 
 
 
 
 
    </div>
 <%
String id="10002";
	Customer obj= null;
	obj=ViewProfile.viewProfile(id);
	if (obj!=null)
	{
%>
<div id="editmyprofile">
    <div id="editmyprofile-container">
        <a href="#myprofile" onclick="showPage('myprofile')" class="]"><span class="material-symbols-outlined">
                arrow_back
            </span></a>
 
        <form id="myprofile-form" action="ProfileUpdate" method="post">
            <h2> My Profile </h2>
                      <input class="myprofile-form-item" type="text" name="firstName" placeholder="First Name" value="<%= obj.getFirstName() %>" />
            <input class="myprofile-form-item" type="text" name="lastName" placeholder="Last Name" value="<%= obj.getLastName() %>" />
            
            <input class="myprofile-form-item" type="date" name="dob" placeholder="DOB" value="<%= obj.getDOB() %>" />
            
            <input class="myprofile-form-item" type="email" name="email" placeholder="EmailID" value="<%= obj.getEmailId() %>" />
            <input class="myprofile-form-item" type="text" name="address" placeholder="Address" value="<%= obj.getAddress() %>" />
            <input class="myprofile-form-item" type="number" name="phone" placeholder="Contact Number" value="<%= obj.getPhone() %>" />
            <input class="myprofile-form-item" type="text" name="category" placeholder="category" value=" <%= obj.getCategory() %>" disabled />
            <input class="myprofile-form-item" type="hidden" name="id" placeholder="id" value="<%= obj.getUserID() %>"  />
            
            </br>
            <button class="myprofile-button" type="submit">Save</button>
        </form>
    </div>
</div>

    <div id="myprofile">
        <div id="myprofile-container">
            <span class="myprofile-heading"> My Profile</span>
            <img src="./Asset/img2.jpg" alt="banner" class="myprofile-image" />
            <div class="myprofile-detail">
                <div class="myprofile-details-item" id="myprofile-card-firstitem">
                    <span class="myprofile-card-item"> Firstname :</span>
                    <span class="myprofile-card-item"><%= obj.getFirstName() %> </span>
                </div>
                <div class="myprofile-details-item">
                    <span class="myprofile-card-item"> LastName :</span>
                    <span class="myprofile-card-item"><%=  obj.getLastName()  %></span>
                </div>
                <div class="myprofile-details-item">
                    <span class="myprofile-card-item"> Date of Birth :</span>
                    <span class="myprofile-card-item"> <%= obj.getDOB()  %></span>
                </div>
                <div class="myprofile-details-item">
                    <span class="myprofile-card-item"> Email :</span>
                    <span class="myprofile-card-item"><%= obj.getEmailId()  %></span>
                </div>
                <div class="myprofile-details-item">
                    <span class="myprofile-card-item"> Address :</span>
                    <span class="myprofile-card-item"><%=  obj.getAddress()  %></span>
                </div>
                <div class="myprofile-details-item">
                    <span class="myprofile-card-item"> Phone Number :</span>
                    <span class="myprofile-card-item"><%=  obj.getPhone() %></span>
                </div>
            </br>
                <div class="myprofile-details-item">
                    <span class="myprofile-card-item">Category :</span>
                    <span class="myprofile-card-item"> <%= obj.getCategory() %></span>
                </div>
            </br>
                <button class="myprofile-button" onclick="showPage('editprofile')"> Edit</button>
            </div>
 
        </div>
    </div>
    <%} %>
    <div id="mytrip">
        <div class="mytrip-header">
            <div id="mytrip-home-banner-container">
                <img src="./Asset/airplane.avif" alt="banner" class="home-banner-image" />
                <span class="mytrip-home-banner-text"> Welcome to AeroManage - AMS</span>
            </div>
            <div class="mytrip-container">
                <div class="mytrip-card">
                    <form action="" class="mytrip-form">
                        <div class="mytrip-links">
                            <nav id="mytrip-nav-links">
                                <a class="mytrip-nav-links-item" href="#">Upcoming</a>
                                <a class="mytrip-nav-links-item" href="#">Cancelled</a>
                                <a class="mytrip-nav-links-item" href="#">Completed</a>
                            </nav>
                        </div>
                        <div class="mytrip-form-row">
                            <div class="mytrip-form-input">
                                <label class="mytrip-form-label">&nbsp&nbspFrom </label>
                                <select name="origin" class="mytrip-form-input" required>
                                    <option value="Kochi">Kochi</option>
                                    <option value="Banglore">Banglore</option>
                                    <option value="Kolkata">Kolkata</option>
                                    <option value="Chennai">Chennai</option>
                                    <option value="Jammu">Jammu</option>
                                </select>
                            </div>
                            <div class="mytrip-form-input">
                                <label class="mytrip-form-label">&nbsp&nbspDestination </label>
                                <select name="destination" class="mytrip-form-input" required>
                                    <option value="Banglore">Banglore</option>
                                    <option value="Kochi">Kochi</option>
                                    <option value="Chennai">Chennai</option>
                                    <option value="Kolkata">Kolkata</option>
                                    <option value="Jammu">Jammu</option>
                                </select>
                            </div>
 
 
                            <div class="mytrip-form-input">
                                <label class="mytrip-form-label">&nbsp&nbspDeparture </label>
                                <input type="date" name="departure" class="mytrip-form-input" required>
                            </div>
                        </div>
                        <div class="mytrip-form-row">
                            <div class="mytrip-form-input">
                                <label class="mytrip-form-label">&nbsp&nbspNo of travellers </label>
                                <input type="number" name="departure" class="mytrip-form-input" required>
                            </div>
 
                            <div class="mytrip-form-input">
                                <label class="mytrip-form-label">&nbsp&nbspClass </label>
                                <select name="class" class="mytrip-form-input" required>
                                    <option value="Economy">Economy</option>
                                    <option value="Executive">Executive</option>
                                    <option value="Business">Business</option>
                                </select>
                            </div>
                            &nbsp&nbsp
                            <div class="mytrip-form-input">
                                <input type="submit" value="Search" id="mytrip-form-submit" required>
 
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div id="mytrip-table-container">
                <table class="table table-striped table-class" id="table-id">
     
                    <thead>
                        <tr>
                            <th>From</th>
                            <th>Destination</th>
                            <th>departure</th>
                            <th>Booking</th>
                        </tr>
     
                    </thead>
     
                    <tbody>
     
     
     
     
                        <tr>
                            <td>Kochi</td>
                            <td>Dubai</td>
                            <td>Nov 19, 2015</td>
                            <td><button class="home-ticket-booking">Book</button></td>
                        </tr>
                        <tr>
                            <td>Kochi</td>
                            <td>Dubai</td>
                            <td>Nov 19, 2015</td>
                            <td><button class="home-ticket-booking">Book</button></td>
                        </tr>
                        <tr>
                            <td>Kochi</td>
                            <td>Dubai</td>
                            <td>Nov 19, 2015</td>
                            <td><button class="home-ticket-booking">Book</button></td>
                        </tr>
                        <tr>
                            <td>Kochi</td>
                            <td>Dubai</td>
                            <td>Nov 19, 2015</td>
                            <td><button class="home-ticket-booking">Book</button></td>
                        </tr>
                        <tr>
                            <td>Kochi</td>
                            <td>Dubai</td>
                            <td>Nov 19, 2015</td>
                            <td><button class="home-ticket-booking">Book</button></td>
                        </tr>
                        <tr>
                            <td>Kochi</td>
                            <td>Dubai</td>
                            <td>Nov 19, 2015</td>
                            <td><button class="home-ticket-booking">Book</button></td>
                        </tr>
                        <tr>
                            <td>Kochi</td>
                            <td>Dubai</td>
                            <td>Nov 19, 2015</td>
                            <td><button class="home-ticket-booking">Book</button></td>
                        </tr>
                    </tbody>
     
                </table>
     
     
     
     
            </div>
        </div>
    </div>
 
    <div class="footer">
        <div class="footer-container">
            <section style="height:80px;"></section>
            <footer class="footer-bs">
                <div class="footer-row">
                    <div class="col-md-3 footer-ns animated fadeInDown">
                        <h2><img src="./Asset/logo.png" alt="banner" style="height:50px;"></h2>
                        <h4 style="color:#d71921">AeroManage</h4>
                        <!-- <p>A rover wearing a fuzzy suit doesnât alarm the real penguins</p> -->
 
                    </div>
                    <div class="col-md-2 footer-nav animated fadeInUp">
                        <h4>Menu</h4>
                        <ul class="pages">
                            <li><a href="./Footer_asset/footer.jsp#about">About us</a></li>
                            <li><a href="./Footer_asset/footer.jsp#help">Help</a></li>
                            <li><a href="./Footer_asset/footer.jsp#book">Book</a></li>
                            <li><a href="./Footer_asset/footer.jsp#manage">Manage</a></li>
                            <li><a href="./Footer_asset/footer.jsp#byf">Before you fly</a></li>
                            <li><a href="./Footer_asset/footer.jsp#wwf">Where we fly</a></li>
                            <li><a href="./Footer_asset/footer.jsp#exp">Experience</a></li>
                            <li><a href="./Footer_asset/footer.jsp#loy">Loyalty</a></li>
                        </ul>
                    </div>
                    <div class="col-md-2 footer-nav animated fadeInUp">
                        <h4>Resources</h4>
                        <ul class="list">
                            <li><a href="./Footer_asset/footer.jsp#carrers">Careers</a></li>
                            <li><a href="./Footer_asset/footer.jsp#media">Media Centre</a></li>
                            <li><a href="./Footer_asset/footer.jsp#contact">Contacts</a></li>
                            <li><a href="./Footer_asset/footer.jsp#tc">Terms & Condition</a></li>
                            <li><a href="./Footer_asset/footer.jsp#pp">Privacy Policy</a></li>
                        </ul>
                    </div>
 
                    <div class="col-md-3 footer-social animated fadeInDown">
                        <h4>Follow us</h4>
                        <ul class="footer-social">
                            <li><a href="https://www.facebook.com/" target="_blank">Facebook</a></li>
                            <li><a href="https://www.instagram.com/?hl=en" target="_blank">Instagram</a></li>
                            <li><a href="https://twitter.com/?lang=en" target="_blank">X</a></li>
                        </ul>
                    </div>
                    <div class="col-md-2 footer-brand animated fadeInLeft">
                        <p class="footer-p">Thank you for choosing AeroManage - AMS. We are committed to providing
                            efficient and seamless travel management solutions for airlines and their passengers.
                            Whether you're booking, managing flight operations, or accessing customer support, we strive
                            to ensure your experience is smooth and reliable. If you need assistance, feel free to reach
                            out to us at support@ams.com. Stay connected with us through our social media channels for the
                            latest updates. © 2024 AeroManage. All rights reserved.</p>
                        <p>© 2023, All rights reserved</p>
                    </div>
                </div>
            </footer>
        </div>
    </div>
 
    </div>
    </div>
    </div>
 
 

 
 <script>
    function clearFilter() {
        
        window.location.href = '<%= request.getContextPath() %>/ViewFlights'; // Adjust URL as needed
    }
</script>
    <script src="./app.js"></script>
</body>
 
</html>