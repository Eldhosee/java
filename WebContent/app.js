
 
const buttonRight = document.getElementById('slideRight');
const buttonLeft = document.getElementById('slideLeft');
const cardsDiv=document.getElementById('home-cards')
buttonRight.onclick = function () {
 
    const clientWidth = cardsDiv.clientWidth;
    cardsDiv.scrollLeft += (clientWidth * 0.333);
  console.log("clickleft")
};
buttonLeft.onclick = function () {
    const clientWidth = cardsDiv.clientWidth;
    cardsDiv.scrollLeft -= (clientWidth * 0.333);
  console.log("clickright")
};
 
 
function showPage(params) {
    const navItems=document.querySelectorAll('.homepage-nav-item');
    navItems.forEach(item=>{
        item.addEventListener('click',function () {
            navItems.forEach(nav=>nav.classList.remove('active'));
           this.classList.add('active'); 
        });
    })
    const mytripItems=document.querySelectorAll('.mytrip-nav-links-item');
    mytripItems.forEach(items=>{
        items.addEventListener('click',function () {
            if(this.classList.contains('activate')){
                this.classList.remove('activate');
            }
            else{
                mytripItems.forEach(nav => nav.classList.remove('activate'));
            }
           this.classList.add('activate'); 
        });
    });
    const home=document.getElementById("home")
    const editprofile=document.getElementById("editmyprofile")
    const myprofile=document.getElementById("myprofile")
    const mytrip=document.getElementById("mytrip")
    switch (params) {
        case "home":
            home.style.display="block";
            editprofile.style.display="none";
            myprofile.style.display="none";
            mytrip.style.display="none";
 
            break;
            case "myprofile":
            home.style.display="none";
            editprofile.style.display="none";
            myprofile.style.display="block";
            mytrip.style.display="none";
 
            break;
 
            case "mytrip":
            home.style.display="none";
            editprofile.style.display="none";
            myprofile.style.display="none";
            mytrip.style.display="block";
 
            break;
 
            case "editprofile":
            home.style.display="none";
            editprofile.style.display="block";
            myprofile.style.display="none";
            mytrip.style.display="none";
 
            break;
    
        default:
            break;
    }
 
    
 
 
}
window.onload=function () {
    showPage('home')
}