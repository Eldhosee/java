<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Form</title>
    <link rel="stylesheet" href="signup.css">
    <script src="signup.js"></script>
</head>

<body class="signup-page">
    
    <!-- <nav class="signup-navbar">
        <div id="signup-nav-items">
            <div>
                <img src="../Asset/logo.png" alt="logo-image" class="signup-nav-logo">  
            </div>
            <div>
                <span class="signup-nav-item" id="signup-nav-right">AeroManage</span>
            </div>
        </div>
    </nav>  -->

    <nav id="login-nav">
        <div id="login-nav-items">
            <div>
                <a href="#">  <img src="../Asset/logo.png" alt="logo-image" class="login-nav-logo">  </a>
               
                <a href="#" onclick="showPage('signup')" class="login-nav-item">AeroManage</a>

            </div>

        </div>

    </nav>


    <div class="signup">
        <h1>Join AeroManage Skywards</h1>
        <h4>Open up a world of rewards every time you travel.<br>Enjoy reward flights, upgrades, exclusive benefits and more.</h4>
        <br>
        <div class="form-box">
            <form id="signupForm" action="/03_AIRLINE_AMS/AddCustomerServlet" onsubmit="return validateForm()" method="post">
                <div class="input-box">
                    <div class="row">
                        <div class="col">
                            <label for="firstname">First Name</label>
                            <input type="text" id="firstname" name="firstname" required>
                            <span class="error-msg" id="firstname-error"></span>
                        </div>
                        <div class="col">
                            <label for="lastname">Last Name</label>
                            <input type="text" id="lastname" name="lastname" required>
                            <span class="error-msg" id="lastname-error"></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label for="email">Email</label>
                            <input type="email" id="email" name="email" required>
                            <span class="error-msg" id="email-error"></span>
                        </div>
                        <div class="col">
                            <label for="password">Password</label>
                            <input type="password" id="password" name="password" required>
                            <span class="error-msg" id="passworderror"></span>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <label for="dob">Date of Birth</label>
                            <input type="date" id="dob" name="dob" required>
                            <span class="error-msg" id="doberror"></span>
                        </div>
                        <div class="col">
                            <label for="country-code">Address</label>
                            <input type="text" id="address" name="address" placeholder="Address" required>
                        </div>
                       
                    </div>

                    <div class="row">
                         <div class="col">
                            <label for="country">Country</label>
                            <select id="country" name="country" required onchange="updateCountryCode()">
                                <option value="" disabled selected>Country</option>
                                <option value="Afg" country-code="+93">Afghanistan</option>
                                <option value="Alb" country-code="+355">Albania</option>
                                <option value="Alg" country-code="+213">Algeria</option>
                                <option value="American Samoa" country-code="+1-684">American Samoa</option>
                                <option value="Andorra" country-code="+376">Andorra</option>
                                <option value="Angola" country-code="+244">Angola</option>
                                <option value="Anguilla" country-code="+1-264">Anguilla</option>
                                <option value="Antarctica" country-code="+672">Antarctica</option>
                                <option value="Antigua and Barbuda" country-code="+1-268">Antigua and Barbuda</option>
                                <option value="Argentina" country-code="+54">Argentina</option>
                                <option value="Armenia" country-code="+374">Armenia</option>
                                <option value="Aruba" country-code="+297">Aruba</option>
                                <option value="Australia" country-code="+61">Australia</option>
                                <option value="Austria" country-code="+43">Austria</option>
                                <option value="Azerbaijan" country-code="+994">Azerbaijan</option>
    
                                <option value="Bahamas" country-code="+1-242">Bahamas</option>
                                <option value="Bahrain" country-code="+973">Bahrain</option>
                                <option value="Bangladesh" country-code="+880">Bangladesh</option>
                                <option value="Barbados" country-code="+1-246">Barbados</option>
                                <option value="Belarus" country-code="+375">Belarus</option>
                                <option value="Belgium" country-code="+32">Belgium</option>
                                <option value="Belize" country-code="+501">Belize</option>
                                <option value="Benin" country-code="+229">Benin</option>
                                <option value="Bermuda" country-code="+1-441">Bermuda</option>
                                <option value="Bhutan" country-code="+975">Bhutan</option>
                                <option value="Bolivia" country-code="+591">Bolivia</option>
                                <option value="Brazil" country-code="+55">Brazil</option>
                                <option value="British Columbia" country-code="+1-604">British Columbia</option>
                                <option value="British Indian Ocean Territory" country-code="+246" >British Indian Ocean Territory</option>
                                <option value="Bulgaria" country-code="+359">Bulgaria</option>
    
                                <option value="Cambodia" country-code="+855">Cambodia</option>
                                <option value="Cameroon" country-code="+237">Cameroon</option>
                                <option value="Canada" counry-code="+1">Canada</option>
                                <option value="Cape Verde" counry-code="+238">Cape Verde</option>
                                <option value="Carriacou" counry-code="+1-473">Carriacou</option>
                                <option value="Chad" counry-code="+235">Chad</option>
                                <option value="Chile" counry-code="+56">Chile</option>
                                <option value="China" country-code="+86">China</option>
                                <option value="Christmas Island" country-code="+61">Christmas Island</option>
                                <option value="Colombia" country-code="+57">Colombia</option>
                                <option value="Comoros" country-code="+269">Comoros</option>
                                <option value="Cook Islands" country-code="+682">Cook Islands</option>
                                <option value="Costa Rica" country-code="+506">Costa Rica</option>
                                <option value="Cuba" country-code="+53">Cuba</option>
                                <option value="Curacao" country-code="+599">Curacao</option>
                                <option value="Cyprus" country-code="+357">Cyprus</option>
    
                                <option value="Denmark" country-code="+45">Denmark</option>
                                <option value="Djibouti" country-code="+253">Djibouti</option>
                                <option value="Dominica" country-code="+1-767">Dominica</option>
                                <option value="Dominican Republic" country-code="+1-809">Dominican Republic</option>
    
                                <option value="Ecuador" country-code="+593">Ecuador</option>
                                <option value="Egypt" country-code="+20">Egypt</option>
                                <option value="El Salvador" country-code="+503">El Salvador</option>
                                <option value="Equatorial Guinea" country-code="+240">Equatorial Guinea</option>
                                <option value="Eritrea" country-code="+291">Eritrea</option>
                                <option value="Estonia" country-code="+372">Estonia</option>
                                <option value="Eswatini" country-code="+268">Eswatini</option>
                                <option value="Ethiopia" country-code="+251">Ethiopia</option>
    
                                <option value="Falkland Islands" country-code="+500">Falkland Islands</option>
                                <option value="Faroe Islands" country-code="+298">Faroe Islands</option>
                                <option value="Fiji" country-code="+679">Fiji</option>
                                <option value="Finland" country-code="+358">Finland</option>
                                <option value="France" country-code="+33">France</option>
                                <option value="French Guiana" country-code="+594">French Guiana</option>
    
                                <option value="Gabon" country-code="+241">Gabon</option>
                                <option value="Gambia" country-code="+220">Gambia</option>
                                <option value="Georgia" country-code="+995">Georgia</option>
                                <option value="Germany" country-code="+49">Germany</option>
                                <option value="Ghana" country-code="+233">Ghana</option>
                                <option value="Greece" country-code="+30">Greece</option>
                                <option value="Greenland" country-code="+299">Greenland</option>
                                <option value="Grenada" country-code="+1-473">Grenada</option>
                                <option value="Guadeloupe" country-code="+590">Guadeloupe</option>
                                <option value="Guam" country-code="+1">Guam</option>
                                <option value="Guatemala" country-code="+502">Guatemala</option>
                                <option value="Guinea" country-code="+224">Guinea</option>
                                <option value="Guyana" country-code="+592">Guyana</option>
    
                                <option value="Haiti" country-code="+509">Haiti</option>
                                <option value="Honduras" country-code="+504">Honduras</option>
                                <option value="Hong Kong, China" country-code="+852">Hong Kong, China</option>
                                <option value="Hungary" country-code="+36">Hungary</option>
    
                                <option value="Iceland" country-code="+354">Iceland</option>
                                <option value="India" country-code="+91">India</option>
                                <option value="Indonesia" country-code="+62">Indonesia</option>
                                <option value="Iran" country-code="+98">Iran</option>
                                <option value="Iraq" country-code="+964">Iraq</option>
                                <option value="Ireland" country-code="+353">Ireland</option>
                                <option value="Isle of Man" country-code="+44">Isle of Man</option>
                                <option value="Israel" country-code="+972">Israel</option>
                                <option value="Italy" country-code="+39">Italy</option>
    
                                <option value="Jamaica" country-code="+1-876">Jamaica</option>
                                <option value="Japan" country-code="+81">Japan</option>
                                <option value="Jordan" country-code="+962">Jordan</option>
    
                                <option value="Kazakhstan" country-code="+7">Kazakhstan</option>
                                <option value="Kenya" country-code="+254">Kenya</option>
                                <option value="Kerguelen Archipelago" country-code="+262">Kerguelen Archipelago</option>
                                <option value="Kiribati" country-code="+686">Kiribati</option>
                                <option value="Kosovo" country-code="+381">Kosovo</option>
                                <option value="Kuwait" country-code="+965">Kuwait</option>
                                <option value="Kyrgyzstan" country-code="+996">Kyrgyzstan</option>
    
                                <option value="Latvia" country-code="+371">Latvia</option>
                                <option value="Lebanon" country-code="+961">Lebanon</option>
                                <option value="Lesotho" country-code="+226">China</option>
                                <option value="Liberia" country-code="+231">Liberia</option>
                                <option value="Libya" country-code="+218">Libya</option>
                                <option value="Liechtenstein" country-code="+423">Liechtenstein</option>
                                <option value="Lithuania" country-code="+370">Lithuania</option>
                                <option value="Luxembourg" country-code="+352">Luxembourg</option>
    
                                <option value="Madagascar" country-code="+261">Madagascar</option>
                                <option value="Malawi" country-code="+265">Malawi</option>
                                <option value="Malaysia" country-code="+60">Malaysia</option>
                                <option value="Maldives" country-code="+960">Maldives</option>
                                <option value="Mali" country-code="+223">Mali</option>
                                <option value="Malta" country-code="+356">Malta</option>
                                <option value="Marshall Islands" country-code="+692">Marshall Islands</option>
                                <option value="Martinique" country-code="+596">Martinique</option>
                                <option value="Mauritania" country-code="+222">Mauritania</option>
                                <option value="Mauritius" country-code="+230">Mauritius</option>
                                <option value="Mayotte" country-code="+262">Mayotte</option>
                                <option value="Mexico" country-code="+52">Mexico</option>
                                <option value="Micronesia" country-code="+691">Micronesia</option>
                                <option value="Moldova" country-code="+373">Moldova</option>
                                <option value="Monaco" country-code="+377">Monaco</option>
                                <option value="Mongolia" country-code="+976">Mongolia</option>
                                <option value="Montenegro" country-code="+382">Montenegro</option>
                                <option value="Montserrat" country-code="+1-664">Montserrat</option>
                                <option value="Morocco" country-code="+212">Morocco</option>
                                <option value="Mozambique" country-code="+258">Mozambique</option>
                                <option value="Myanmar" country-code="+95">Myanmar</option>
    
                                <option value="Namibia" country-code="+264">Namibia</option>
                                <option value="Nepal" country-code="+977">Nepal</option>
                                <option value="Netherlands" country-code="+31">Netherlands</option>
                                <option value="Netherlands Antilles" country-code="+599">Netherlands Antilles</option>
                                <option value="New Caledonia" country-code="+687">New Caledonia</option>
                                <option value="New Zealand" country-code="+64">New Zealand</option>
                                <option value="Nicaragua" country-code="+505">Nicaragua</option>
                                <option value="Niger" country-code="+227">Niger</option>
                                <option value="Nigeria" country-code="+234">Nigeria</option>
                                <option value="Niue" country-code="+683">Niue</option>
                                <option value="Norfolk Island" country-code="+672">Norfolk Island</option>
                                <option value="Northern Mariana Islands" country-code="+86">Northern Mariana Islands</option>
                                <option value="Norway" country-code="+47">Norway</option>
    
                                <option value="Oman" country-code="+968">Oman</option>
    
                                <option value="Pakistan" country-code="+92">Pakistan</option>
                                <option value="Palau" country-code="+680">Palau</option>
                                <option value="Palestinian Territories" country-code="+970">Palestinian Territories</option>
                                <option value="Panama" country-code="+507">Panama</option>
                                <option value="Papua New Guinea" country-code="+675">Papua New Guinea</option>
                                <option value="Paraguay" country-code="+595">Paraguay</option>
                                <option value="Peru" country-code="+51">Peru</option>
                                <option value="Philippines" country-code="+63">Philippines</option>
                                <option value="Poland" country-code="+48">Poland</option>
                                <option value="Portugal" country-code="+351">Portugal</option>
                                <option value="Puerto Rico" country-code="+1">Puerto Rico</option>
    
                                <option value="Qatar" country-code="+974">Qatar</option>
    
                                <option value="Reunion" country-code="+262">Reunion</option>
                                <option value="Romania" country-code="+40">Romania</option>
                                <option value="Russia" country-code="+7">Russia</option>
                                <option value="Rwanda" country-code="+250">Rwanda</option>
    
                                <option value="Samoa" country-code="+685">Samoa</option>
                                <option value="San Marino" country-code="+378">San Marino</option>
                                <option value="Sao Tome and Principe" country-code="+239">Sao Tome and Principe</option>
                                <option value="Scott Base" country-code="+64">Scott base</option>
                                <option value="Senegal" country-code="+221">Senegal</option>
                                <option value="Serbia" country-code="+381">Serbia</option>
                                <option value="Seychelles" country-code="+248">Seychelles</option>
                                <option value="Sierra Leone" country-code="+232">Sierra Leone</option>
                                <option value="Singapore" country-code="+65">Singapore</option>
                                <option value="Slovakia" country-code="+421">Slovakia</option>
                                <option value="Slovenia" country-code="+386">Slovenia</option>
                                <option value="Solomon Islands" country-code="+677">Solomon Islands</option>
                                <option value="Somalia" country-code="+252">Somalia</option>
                                <option value="South Africa" country-code="+27">South Africa</option>
                                <option value="South Georgia" country-code="+500">South Georgia</option>
                                <option value="South Sudan" country-code="+211">South Sudan</option>
                                <option value="Spain" country-code="+34">Spain</option>
                                <option value="Sri Lanka" country-code="+94">Sri Lanka</option>
                                <option value="St Helena" country-code="+290">St Helena</option>
                                <option value="Sudan" country-code="+249">Sudan</option>
                                <option value="Suriname" country-code="+597">Suriname</option>
                                <option value="Sweden" country-code="+46">Sweden</option>
                                <option value="Switzerland" country-code="+41">Switzerland</option>
                                <option value="Syria" country-code="+963">Syria</option>
    
                                <option value="Taiwan" country-code="+886">Taiwan, China</option>
                                <option value="Tajikistan" country-code="+992">Tajikistan</option>
                                <option value="Tanzania" country-code="+255">Tanzania</option>
                                <option value="Thailand" country-code="+66">Thailand</option>
                                <option value="Timor-Leste" country-code="+670">Timor-Leste</option>
                                <option value="Togo" country-code="+228">Togo</option>
                                <option value="Tokelau" country-code="+690">Tokelau</option>
                                <option value="Tonga" country-code="+676">Tonga</option>
                                <option value="Tunisia" country-code="+216">Tunisia</option>
                                <option value="TÃ¼rkiye" country-code="+90">Turkiye</option>
                                <option value="Turkmenistan" country-code="+993">Turkmenistan</option>
                                <option value="Tuvalu" country-code="+688">Tuvalu</option>
    
                                <option value="Uganda" country-code="+256">Uganda</option>
                                <option value="Ukraine" country-code="+380">Ukraine</option>
                                <option value="United Arab Emirates" country-code="+971">United Arab Emirates</option>
                                <option value="United Kingdom" country-code="+44">United Kingdom</option>
                                <option value="United States" country-code="+1">United States</option>
                                <option value="Uruguay" country-code="+598">Uruguay</option>
                                <option value="Uzbekistan" country-code="+998">Uzbekistan</option>
                                <option value="Vanuatu" country-code="+678">Vanuatu</option>
                                <option value="Ukraine" country-code="+380">Ukraine</option>
                                <option value="Vatican City State" country-code="+39">Vatican City State</option>
                                <option value="Venezuela" country-code="+58">Venezuela</option>
                                <option value="Vietnam" country-code="+84">Vietnam</option>
                                <option value="Western Sahara" country-code="+212">Western Sahara</option>
    
                                <option value="Yemen" country-code="+967">Yemen</option>
    
                                <option value="Zambia" country-code="+260">Zambia</option>
                                <option value="Zimbabwe" country-code="+263">Zimbabwe</option>
                            </select>
                        </div>
                        <div class="col">
                            <label for="mobile">Mobile Number</label>
                            <input type="tel" id="phone" name="phone" required>
                            <span class="error-msg" id="contacterror"></span>
                        </div>
                    </div>
                </div>

                <div class="button-container">
                    <button id="createaccount-button" type="submit">Create an account</button>
                </div>
            </form>
        </div>  
    </div>
        <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h2>Passenger Registration is successful</h2>
        </div>
    </div>
</body>
</html>