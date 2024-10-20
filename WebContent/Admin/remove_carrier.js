function getRemove_Carrier(){
    return `
    <div class="remove-admin-card">
                    <img src="../Asset/remove.svg" alt="image" class="admin-flight-image"/>
                    <form action="" class="remove-admin-form">
                        <h1 class="remove-heading">REMOVE CARRIER</h1>
                        <br>
                        <br>
                        <br>
                            <div class="carrier-admin-form-row">
                            <div class="remove-split-input">
                                <div class="remove-admin-form-input">
                                    <input type="number" class="remove-admin-form-input" name="Carrier_id" placeholder="Carrier Id">
                                </div>
                                <div class="carrier-admin-form-submit">
                                    <input type="submit" value="Remove Carrier" class="carrier-admin-form-submitbutton" required>
                                </div> 
                            </div>
                            </div> 
                            <br>
                            <br>
                            <br>
                        </form>
                    </div>

    `;
}