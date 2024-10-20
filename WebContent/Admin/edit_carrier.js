function getEdit_Carrier() {
    return `
    <div class="flight_detail-card">
                    <img src="../Asset/editcar.png" alt="image" class="admin-flight-image-detail"/>
                    <form action=""  class="flight_detail-form">
                        <h1 class="flight_detail-heading">EDIT DETAILS</h1>
                        <br>
                        <br>
                        <br>
                            <div class="flight_detail-form-row">
                                <div class="flight_detail-split-inputs">
                                    <div class="flight_detail-form-input">

                                        <div class="flight_detail-form-submit">
                                        <input type="number" class="flight_detail-form-input-text" name="flight_id" placeholder="Enter the carrier id..">
                                            <input type="submit" value="Edit Details" class="myprofile-button " required>
                                        </div>    
                                    </div>
                                  
                                </div>
                            </div> 
                            <div id="flight_detail-table-container">
                                <table class="table table-striped table-class" id="flight-detail-table-id">
                    
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
                                            <td><button class="flight_detail-ticket-booking">Edit</button></td>
                                        </tr>
                                        <tr>
                                            <td>Kochi</td>
                                            <td>Dubai</td>
                                            <td>Nov 19, 2015</td>
                                            <td><button class="flight_detail-ticket-booking">Edit</button></td>
                                        </tr>
                                        <tr>
                                            <td>Kochi</td>
                                            <td>Dubai</td>
                                            <td>Nov 19, 2015</td>
                                            <td><button class="flight_detail-ticket-booking">Edit</button></td>
                                        </tr>
                                        <tr>
                                            <td>Kochi</td>
                                            <td>Dubai</td>
                                            <td>Nov 19, 2015</td>
                                            <td><button class="flight_detail-ticket-booking">Edit</button></td>
                                        </tr>
                                        <tr>
                                            <td>Kochi</td>
                                            <td>Dubai</td>
                                            <td>Nov 19, 2015</td>
                                            <td><button class="flight_detail-ticket-booking">Edit</button></td>
                                        </tr>
                                        <tr>
                                            <td>Kochi</td>
                                            <td>Dubai</td>
                                            <td>Nov 19, 2015</td>
                                            <td><button class="flight_detail-ticket-booking">Edit</button></td>
                                        </tr>
                                        <tr>
                                            <td>Kochi</td>
                                            <td>Dubai</td>
                                            <td>Nov 19, 2015</td>
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

`;

}