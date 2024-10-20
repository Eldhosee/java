function getRemove_Flight(){
    return `
    <div class="remove-admin-card">
                    <img src="../Asset/remove.svg" alt="image" class="admin-flight-image"/>
                    <form action="" class="carrier-admin-form">
                        <h1 class="remove-heading">REMOVE FLIGHT</h1>
                        <br>
                        <br>
                        <br>
                            <div class="remove-admin-form-row">
                            <div class="remove-split-input">
                                <div class="remove-admin-form-input">
                                    <input type="number" class="remove-admin-form-input" name="flight_id" placeholder="Flight Id">
                                </div>
                                <div class="carrier-admin-form-submit">
                                    <input type="submit" value="Remove Flight" class="carrier-admin-form-submitbutton" required >
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