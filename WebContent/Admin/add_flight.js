function getAdd_Flight(){
    return `
    <div class="carrier-admin-card">
                    <img src="../Asset/add_flight.svg" alt="image" class="admin-flight-image"/>
                    <form action="/03_AIRLINE_AMS/AddFlightServlet" class="carrier-admin-form" method="post">
                        <h1 class="carrier-heading">ADD FLIGHT</h1>
                            <div class="carrier-admin-form-row">
                            <div class="carrier-split-input">
                                <div class="carrier-admin-form-input">
                                    <label class="admin-form-label">&nbsp&nbspCarrier id </label>
                                    <input type="number" class="carrier-admin-form-input" name="carrier_id" required>
                                </div>
                                <div class="carrier-admin-form-input">
                                    <label class="admin-form-label">&nbsp&nbspFrom </label>
                                    <input type="text" class="carrier-admin-form-input" name="from" required>
                                </div>
                            </div>
                            <div class="carrier-split-input">                                
                                <div class="carrier-admin-form-input">
                                    <label class="admin-form-label">&nbsp&nbspDestination </label>
                                    <input type="text" class="carrier-admin-form-input" name="destination" required>
                                </div>
                                <div class="carrier-admin-form-input">
                                    <label class="admin-form-label">&nbsp&nbspAirFare </label>
                                    <input type="number" class="carrier-admin-form-input" name="air_fare" required>
                                </div>
                            </div>
                            <div class="carrier-split-input">                               
                                <div class="carrier-admin-form-input">
                                    <label class="admin-form-label">&nbsp&nbspEconomy class seat cpacity </label>
                                    <input type="number" class="carrier-admin-form-input" name="seat_capacity_economy" required>
                                </div>
                                <div class="carrier-admin-form-input">
                                    <label class="admin-form-label">&nbsp&nbspBusiness class seat cpacity </label>
                                    <input type="number" class="carrier-admin-form-input" name="seat_capacity_business" required>
                                </div>
                            </div>
                            <div class="carrier-split-input">                             
                                <div class="carrier-admin-form-input">
                                    <label class="admin-form-label">&nbsp&nbspExecutive class seat cpacity </label>
                                    <input type="number" class="carrier-admin-form-input" name="seat_capacity_executive" required>
                                </div>
                                <div class="carrier-admin-form-input"> 
                                    <label class="admin-form-label">&nbsp&nbsp Depature Date</label>
                                    <input type="date" class="carrier-admin-form-input" name="depatureDate" required>
                                </div>
                                </div>
                                <div class="carrier-admin-form-submit">
                                    <input type="submit" value="Add Flight" class="carrier-admin-form-submitbutton" >
                                </div> 
                            </div> 
                        </form>
                    </div>

    `;
}