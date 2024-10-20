function showPage(page){
    const contentDiv = document.getElementById('admin_container');
    switch(page){
        case 'add_carrier':
        contentDiv.innerHTML =  getAdd_Carrier();
        break;

        case 'edit_carrier':
        contentDiv.innerHTML = getEdit_Carrier();
        break;

        case 'remove_carrier':
        contentDiv.innerHTML = getRemove_Carrier();
        break;

        case 'add_flight':
        contentDiv.innerHTML = getAdd_Flight();
        break;

        case 'remove_flight':
        contentDiv.innerHTML = getRemove_Flight();
        break;

        case 'edit_flight':
        contentDiv.innerHTML = getEdit_Flight();
        break;

        case 'remove_flight':
        contentDiv.innerHTML = getRemove_FLight();
        break;

        case 'detail_flight':
        contentDiv.innerHTML = getDetail_flight();
        break;

        default:
            contentDiv.innerHTML = '<h1>Page not found</h1>';
    }
}
window.onload = function(){
    showPage('add_carrier');
};