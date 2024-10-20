function getDetail_flight(){
    return `
    <div class="flight_detail-card">
                    <img src="../Asset/details.svg" alt="image" class="admin-flight-image-detail"/>
                    <form action="" class="flight_detail-form">
                        <h1 class="flight_detail-heading">FLIGHT DETAILS</h1>
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
                                            <th>Date of travel </th>
                                            <th>Business class booked </th>
                                            <th>Economy class booked </th>
                                            <th>Executive class booked </th>
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
                                        
                                        <tr>
                                            <td>2</td>
                                            <td>06/08/2024</td>
                                            <td>52</td>
                                            <td>66</td>
                                            <td>29</td>
                                        </tr>
                                        
                                        <tr>
                                            <td>3</td>
                                            <td>31/05/2024</td>
                                            <td>11</td>
                                            <td>55</td>
                                            <td>7</td>
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