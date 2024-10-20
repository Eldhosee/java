function editMyProfilePage(){
    return `

    <div class="editmyprofile-container">
    <a href="#myprofile" onclick="showPage('myprofile')" class="]"><span class="material-symbols-outlined">
 arrow_back
 </span></a>
   
    <form id="myprofile-form">
    <h2> My Profile </h2>
    <input class="myprofile-form-item" type="text" placeholder="First Name"/>
    <input class="myprofile-form-item" type="text" placeholder="Last Name"/>

    <input class="myprofile-form-item" type="date" placeholder="DOB"/>

    <input class="myprofile-form-item" type="email" placeholder="EmailID"/>
    <input class="myprofile-form-item" type="textfield" placeholder="Address"/>
    <input class="myprofile-form-item" type="number" placeholder="Contact Number"/>
   </br>
<button class="myprofile-button">Edit</button>
    </form>
    </div>
    `;
}