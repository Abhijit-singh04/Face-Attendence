var mini = true;
document.getElementById('navbar-width-incrementing').addEventListener('click', toggleSidebar);
document.getElementsByClassName('leftNavbar-nav')[0].addEventListener('click', changeTab);



//CREATING TOOGLESIDEBAR FUNCTION
function toggleSidebar() {
    if (mini) {
        console.log("opening sidebar");
        // will find the first element  with the tag mentioned in html
        document.getElementsByTagName("body")[0].className = 'leftNavbar-expanded';
        mini = false;
    } else {
        console.log("closing sidebar");
        document.getElementsByTagName("body")[0].className = 'leftNavbar-shrinked';
        mini = true;
    }
}


//CHANGING TAB 
function changeTab() {
    let target = arguments[0].target;
    let tagName = target.tagName;
    let liElement;
    if (tagName === "I" || tagName === "SPAN") {
        liElement = target.parentElement.parentElement;
    } else if (tagName === "A") {
        liElement = target.parentElement;
    } else {
        return;
    }
    [...liElement.parentElement.children].forEach(x => x.className = "");
    liElement.classList.add('active');
}