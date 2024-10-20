


<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Flight Booking Review</title>
        <link rel="stylesheet" href="booking.css">
        <link href="https://fonts.googleapis.com/css2?family=Boogaloo&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap"
            rel="stylesheet">

         
         
           
    </head>
    <body>

        <nav id="login-nav">
            <div id="login-nav-items">
                <div>
                     <img src="logo.png" alt="logo-image" class="login-nav-logo">  </a>
                   
                    <a href="#" onclick="showPage('signup')" class="login-nav-item">AeroManage</a>
    
                </div>
    
            </div>
    
        </nav>
    
        <div class="container">
            <h1>Flight Booking </h1>
    
            <!-- Flight Information Form -->
            <form id="bookingForm" #=""
                onsubmit="return confirmBooking()">
                <!-- From and To Section -->
                <div class="review-section">
                    <h2>Flight Information</h2>
                    <table class="review-table">
                        <tr>
                            <th>From:</th>
                            <td><input type="text" id="from" value="New York (JFK)" disabled></td>
                        </tr>
                        <tr>
                            <th>To:</th>
                            <td><input type="text" id="to" value="London (LHR)" disabled></td>
                        </tr>
                        <tr>
                            <th>Departure Date:</th>
                            <td><input type="date" id="departure-date" value="2024-10-21" disabled></td>
                        </tr>
                    </table>
                </div>
    
                <!-- Class and Passenger Section -->
                <div class="review-section">
                    <h2>Class and Passengers</h2>
                    <table class="review-table">
                        <tr>
                            <th>Class:</th>
                            <td>
                               
                                <select id="class">
                                    <option value="economy" selected>Economy</option>
                                    <option value="business">Business</option>
                                    <option value="first">Executive</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>Passengers:</th>
                            <td>
                                <select id="passengers" >
                                    <option value="one">1</option>
                        <option value="two">2</option>
                        <option value="three">3</option>
                        <option value="four">4</option>
                        <option value="five">5</option>
                        <option value="six">6</option>
                                </select>
                            </td>
                        </tr>
                    </table>
                </div>
    
                <!-- Fare Section -->
                <div class="review-section">
                    <h2>Fare Summary</h2>
                    <table class="review-table">
                        <tr>
                            <th>Total Fare:</th>
                            <td>Rs.136869</td>
                        </tr>
                    </table>
                </div>
    
                <!-- Confirm Button -->
                <div class="button-container">
                    <button type="submit" class="confirm-button">Confirm Booking</button>
                </div>
            </form>
    
        </div>
    
        <script>
            // JavaScript function to display alert on form submission
            function confirmBooking() {
                // Show alert message
                alert("Booking successful!");
    
                // Return false to prevent page reload (if needed)
                // If you want to submit the form data, remove the "return false;"
                return false;
            }
        </script>

    </body>
    </html>
    
    
    

<!-- comments below -->

<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flight Booking</title>
    <link rel="stylesheet" href="booking.css">
    <script>
        function swapLocations() {
            const fromSelect = document.getElementById("from");
            const toSelect = document.getElementById("to");

            const tempValue = fromSelect.value;
            fromSelect.value = toSelect.value;
            toSelect.value = tempValue;
        }
    </script>
</head>

<body class="booking">
    <nav id="login-nav">
        <div id="login-nav-items">
            <div>
                <img src="../Asset/logo.png" alt="logo-image" class="login-nav-logo">  
                <href="#" onclick="showPage('signup')" class="login-nav-item">AeroManage
            </div>
        </div>
    </nav>

    <br>
    <h1>Book a Flight</h1>
    <br>
    <p id="heading">Search for AeroManage flights and book online.</p>
    <p id="heading">See our routes and schedules, and discover more about the experience you can look forward to on board.</p>
    <div class="flight-search">
        <form>
            <div class="form-row">
                <div class="location">
                    <label for="from">From</label>
                    <select name="from" id="from">
                        <option value="" disabled selected>Select departure city</option>
                        <option value="Chennai">Chennai</option>
                        <option value="Kochi">Kochi</option>
                        <option value="Delhi">Delhi</option>
                        <option value="Mumbai">Mumbai</option>
                        <option value="Hyderabad">Hyderabad</option>
                        <option value="Kolkata">Kolkata</option>
                    </select>
                </div>
                
                <span class="swap" onclick="swapLocations()" style="cursor:pointer;">&#8646;</span>

                <div class="location">
                    <label for="to">To</label>
                    <select name="to" id="to">
                        <option value="" disabled selected>Select destination city</option>
                        <option value="Bangalore">Bangalore</option>
                        <option value="Kochi">Kochi</option>
                        <option value="Delhi">Delhi</option>
                        <option value="Mumbai">Mumbai</option>
                        <option value="Hyderabad">Hyderabad</option>
                        <option value="Kolkata">Kolkata</option>
                    </select>
                </div>

                <div class="passenger-class">
                    <label for="class">Class</label>
                    <select name="class" id="class">
                        <option value="Economy">Economy</option>
                        <option value="Business">Business</option>
                        <option value="First Class">First Class</option>
                    </select>
                </div>
            </div>

            <div class="form-row">
                <div class="date-input">
                    <label for="depart">Departing</label>
                    <input type="date" id="depart">
                </div>

                <div class="passenger-class">
                    <label for="passenger">Passenger</label>
                    <input type="number" id="passenger" value="0" min="1">
                </div>
            </div>
            <div class="form-row centered-button">
                <button type="submit" class="search-flights">Search Flights</button>
            </div>
        </form>
    </div>
    <div class="table_container">
    <div class="table_bg">
    <table class="table table-striped table-class" id="table-id">
 
        <thead>
            <tr>
                <th>From</th>
                <th>Destination</th>
                <th>Date</th>
                <th>Booking</th>
            </tr>

        </thead>

        <tbody>




            <tr>
                <td>Kochi</td>
                <td>Dubai</td>
                <td>Nov 19, 2015</td>
                <td><button class="home-ticket-booking" onclick="window.location.href='./flight_booking/booking.jsp'">Book</button></td>
            </tr>
        </tbody>
    </table>
</div>
</div>

    <div class="note">
        <h3>How to book a flight ticket with AeroManage</h3>
        <br>
        <hr>
        <br>
        <h4>Book a flight ticket online</h4>
        <br>
        <p>To find the right air ticket for your trip, just enter the location you're flying from and your 
            flight destination. Enter your dates, class of travel and the number of passengers. 
            Select 'Search flights' to continue with the online flight booking process and book a 
            flight ticket that suits your travel plans.</p>
    </div>
    </div>
</body>
</html> -->
