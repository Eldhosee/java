function Validateform()
{
    isvalid=true;
    let n=document.forms["formval"]["username"].value;
    var regex=/[0-9]+$/;
    if(regex.test(n)==false)
    {
        alert("please enter a valid username")
        isvalid=false;
    }
    let p=document.forms["formval"]["password"].value;
    if(p.length<6)
{
    alert("password must contain atleast 6")
    isvalid=false;
}

return isvalid;
}

// function Validateform()
// {

//     isvalid=true;
//     let n=document.forms["formval"]["username"].value;
//     var regex=/[0-9]+$/;
//     if(regex.test(n)==false)
//     {
//         alert("please enter a valid username")
//         return false;
//     }

//     const inputPassword = document.getElementById('password').value;
//     if (inputPassword.length < 6) {
//         alert("Password length must be 6")
//         isvalid=false;
//     }

//     if (!inputPassword.match(/[a-z]/g)) {
//         alert("Password must contain a small letter")
//         isvalid=false;
//     }

//     if (!inputPassword.match(/[A-Z]/g)) {
//         alert( "Password must contain a capital letter")
//         isvalid=false;
//     }

//     if (!inputPassword.match(/[0-9]/g)) {
//         alert( "Password must contain a number")
//         isvalid=false;
//     }

//     if (!inputPassword.match(/[^a-zA-Z0-9]/g)) {
//         alert("Password must contain a special character")
//             isvalid=false;
//     }
//     return isvalid;
// }
    