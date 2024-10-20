function  getSignUpPage(){
    return `

    <div id="login-body">
    <BR></BR>
   
    <div id="login-form1">
        <form action="" method="post" name="formval" onsubmit="return Validateform()">
            <h1 id="login-head"> AeroManage</h1>
            <p style="color: white;size: 12px; font-family: sans-serif;" class="login-label"> User Id:</p>
            <input type="text" name="user"  class="login-input">
            <p style="color: white;size: 12px; font-family: sans-serif;" class="login-label"> Password: </p>
           <input type="password" name="pass"  class="login-input"><br><br>
       
        <input type="submit" value="Login" id="login-sub" href="home_index.html">
        <br>
        <br>
        <a style="color: white;size: 12px; font-family: sans-serif;" class="login-a" href="#signup" onclick="showPage('signup')">New user?<b>Register Yourself</b></a>
        
         </form>
    </div>
    </div>
  
    `;

}