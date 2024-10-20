function getMyProfilePage() {
   return `
   <div class="myprofile-container"> 
   <span class="myprofile-heading"> My Profile</span>
   <img src="./Asset/img2.jpg" alt"banner" class="myprofile-image"/>
   <div class="myprofile-detail">
        <div class="myprofile-details-item" id="myprofile-card-firstitem">
                <span class="myprofile-card-item" >  Firstname :</span>
                <span class="myprofile-card-item"  >  Firstname</span>
            </div>
            <div class="myprofile-details-item">
            <span class="myprofile-card-item" >  Firstname :</span>
                <span class="myprofile-card-item" >  last name</span>
            </div>
            <div class="myprofile-details-item">
            <span class="myprofile-card-item" >  LastName :</span>
                <span class="myprofile-card-item" >  DD/MM/YYY</span>
            </div>
            <div class="myprofile-details-item">
            <span class="myprofile-card-item" >  Email :</span>
                <span class="myprofile-card-item" >  email@gmail.com</span>
            </div>
            <div class="myprofile-details-item">
            <span class="myprofile-card-item" >  Address :</span>
                <span class="myprofile-card-item" >  Address</span>
            </div>
            <div class="myprofile-details-item">
            <span class="myprofile-card-item" >  Phone Number :</span>
                <span class="myprofile-card-item" >  123456789</span>
            </div>
</br>
    <a href="#edit" onclick="showPage('edit')" class=""><button class="myprofile-button">Edit</button></a>
    </div>
    </div>
    <div class="footer">
    <div class="footer-container">
        <section style="height:80px;"></section>
            <footer class="footer-bs">
            <div class="footer-row">
                <div class="col-md-3 footer-ns animated fadeInDown">
                    <h2><img src="./Asset/logo.png" alt"banner" style="height:50px;"></h2>
                    <h4 style="color:#d71921">AeroManage</h4>
                    <p>A rover wearing a fuzzy suit doesn’t alarm the real penguins</p>
                    
                </div>
                <div class="col-md-2 footer-nav animated fadeInUp">
                        <h4>Menu —</h4>
                        <ul class="pages">
                        <li><a href="./Footer_asset/footer.html#about">About us</a></li>
                        <li><a href="./Footer_asset/footer.html#help">Help</a></li>
                        <li><a href="./Footer_asset/footer.html#book">Book</a></li>
                        <li><a href="./Footer_asset/footer.html#manage">Manage</a></li>
                        <li><a href="./Footer_asset/footer.html#byf">Before you fly</a></li>
                        <li><a href="./Footer_asset/footer.html#wwf">Where we fly</a></li>
                        <li><a href="./Footer_asset/footer.html#exp">Experience</a></li>
                        <li><a href="./Footer_asset/footer.html#loy">Loyalty</a></li>
                        </ul>
                </div>
                <div class="col-md-2 footer-nav animated fadeInUp">
                        <h4>Resources —</h4>
                        <ul class="list">
                        <li><a href="./Footer_asset/footer.html#carrers">Careers</a></li>
                        <li><a href="./Footer_asset/footer.html#media">Media Centre</a></li>
                        <li><a href="./Footer_asset/footer.html#contact">Contacts</a></li>
                        <li><a href="./Footer_asset/footer.html#tc">Terms & Condition</a></li>
                        <li><a href="./Footer_asset/footer.html#pp">Privacy Policy</a></li>
                        </ul>
                </div>

                <div class="col-md-3 footer-social animated fadeInDown">
                    <h4>Follow us —</h4>
                    <ul>
                    <li><a href="https://www.facebook.com/" target="_blank">Facebook</a></li>
                    <li><a href="https://www.instagram.com/?hl=en" target="_blank">Instagram</a></li>
                    <li><a href="https://twitter.com/?lang=en" target="_blank">X</a></li>
                    </ul>
                </div>
                <div  class="col-md-2 footer-brand animated fadeInLeft">
                <p class="footer-p">Thank you for choosing AeroManage - AMS. We are committed to providing efficient and seamless travel management solutions for airlines and their passengers. Whether you're booking, managing flight operations, or accessing customer support, we strive to ensure your experience is smooth and reliable. If you need assistance, feel free to reach out to us at @mail.tcs.com. Stay connected with us through our social media channels for the latest updates. © 2024 AeroManage. All rights reserved.</p>
                <p>© 2023, All rights reserved</p>
                </div>
            </div>
        </footer>
    </div>
</div>    `;
}
