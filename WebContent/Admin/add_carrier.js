function getAdd_Carrier(){
    return `
    <div class="carrier-admin-card">
                    <img src="../Asset/carrier.svg" alt="image" class="admin-image"/>
                    <form action="/03_AIRLINE_AMS/AddFlightServlet" class="carrier-admin-form" method="post">
                        <h1 class="carrier-heading">ADD CARRIER</h1>
                            <div class="carrier-admin-form-row">
                            <div class="carrier-split-input">
                                <div class="carrier-admin-form-inputs">
                                    <label class="admin-form-label">&nbsp&nbspCarrier Name </label>
                                    <input type="text" class="carrier-admin-form-input" name="carrierName" required>
                                </div>
                                <div class="carrier-admin-form-inputs">
                                    <label class="admin-form-label">&nbsp&nbspDiscount % 30Days Advance Booking </label>
                                    <input type="number" class="carrier-admin-form-input" name="d30days" required>
                                </div>
                            </div>
                            <div class="carrier-split-input">
                                
                                <div class="carrier-admin-form-inputs">
                                    <label class="admin-form-label">&nbsp&nbspDiscount % 60Days Advance Booking </label>
                                    <input type="number" class="carrier-admin-form-input" name="d60days" required>
                                </div>
                                <div class="carrier-admin-form-inputs">
                                    <label class="admin-form-label">&nbsp&nbspDiscount % 90Days Advance Booking </label>
                                    <input type="number" class="carrier-admin-form-input" name="d90days" required>
                                </div>
                            </div>
                            <div class="carrier-split-input">
                                
                                <div class="carrier-admin-form-inputs">
                                    <label class="admin-form-label">&nbsp&nbspRefund % for Cancelling Ticket Before 2Days </label>
                                    <input type="number" class="carrier-admin-form-input" name="r2days" required>
                                </div>
                                <div class="carrier-admin-form-inputs">
                                    <label class="admin-form-label">&nbsp&nbspRefund % for Cancelling Ticket Before 10Days </label>
                                    <input type="number" class="carrier-admin-form-input" name="r10days" required>
                                </div>
                            </div>
                            <div class="carrier-split-input">
                                
                                <div class="carrier-admin-form-inputs">
                                    <label class="admin-form-label">&nbsp&nbspRefund % for Cancelling Ticket Before 20Days </label>
                                    <input type="number" class="carrier-admin-form-input" name="r20days" required>
                                </div>
                                <div class="carrier-admin-form-inputs">
                                    <label class="admin-form-label">&nbsp&nbspBulk Booking Discount </label>
                                    <input type="number" class="carrier-admin-form-input" name="bulkbookingdiscount" required>
                                </div>
                            </div>
                            <div class="carrier-split-input">
                                <div class="carrier-admin-form-inputs">
                                    <label class="admin-form-label">&nbsp&nbspSilver User Discount </label>
                                    <input type="number" class="carrier-admin-form-input" name="silveruserdiscount" required>
                                </div>
                                <div class="carrier-admin-form-inputs">
                                    <label class="admin-form-label">&nbsp&nbspGold User Discount </label>
                                    <input type="number" class="carrier-admin-form-input" name="golduserdiscount" required>
                                </div>
                            </div>
                            <div class="carrier-split-input">
                                
                                <div class="carrier-admin-form-inputs">
                                    <label class="admin-form-label">&nbsp&nbspPlatinum User Discount </label>
                                    <input type="number" class="carrier-admin-form-input" name="Platinumuserdiscount" required>
                                </div>
                                <div class="carrier-admin-form-submit">
                                    <input type="submit" value="Add Carrier" class="carrier-admin-form-submitbutton" >
                                </div> 
                            </div>
                                
                            </div> 
                        </form>
                    </div>

    `;
}