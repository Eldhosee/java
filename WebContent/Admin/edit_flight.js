function getEdit_Flight(){
    return `
    <div class="flight_detail-card">
                    <img src="../Asset/details.svg" alt="image" class="admin-flight-image-detail"/>
                    <form action="" class="flight_detail-form">
                        <h1 class="flight_detail-heading">EDIT FLIGHT DETAILS</h1>
                        <br>
                        <br>
                        <br>
                            <div class="flight_detail-form-row">
                                <div class="flight_detail-split-inputs">
                                    <div class="flight_detail-form-input">

                                        <div class="flight_detail-form-submit">
                                        <input type="number" class="flight_detail-form-input-text" name="flight_id" placeholder="Enter the flight id..">
                                            <input type="submit" value="Get Details" class="carrier-admin-form-submitbutton" required>
                                        </div>    
                                    </div>
                                  
                                </div>
                            </div> 
                            <div id="flight_detail-table-container">
                                <table class="table table-striped table-class" id="flight-detail-table-id">
                    
                                    <thead>
                                        <tr>
                                        	<th>FlightId</th>
                                            <th>CarrierID</th>
                                            <th>Origin</th>
                                            <th>Destination</th>
                                            <th> Airfare</th>
                                            <th> Economy Class Seat Capacity</th>
                                            <th> Business Class Seat Capacity</th>
                                            <th> Executive Class Seat Capacity</th>
                                        </tr>
                    
                                    </thead>
                    
                                    <tbody>
                    
                    
                    
                    
                                        <tr>
                                            <td>1</td>
                                            <td>02/12/2024</td>
                                            <td>50</td>
                                            <td>30</td>
                                            <td>20</td>
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