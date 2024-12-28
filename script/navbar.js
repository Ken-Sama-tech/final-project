document.addEventListener('DOMContentLoaded', function(){

    //hamburger bar 

    const hamburgerBar = document.querySelector('#mobile-menu');
    const navbar = document.querySelector('.navbar');
    hamburgerBar.addEventListener('click', function(){
        navbar.classList.toggle('show-menu');
    });

    //profile drop down

    const profileDropdown = document.querySelector('.profile__dropdown');
    const profile = document.querySelector('.user__profile--container');

    profile.addEventListener('click', function(){
        profileDropdown.classList.toggle('show-dropdown');
    });

    const kebabMenu = document.querySelector('.kebab__menu');
    const sideBarMenu = document.querySelector('.side__bar--menu');

    kebabMenu.addEventListener('click', ()=>{
        sideBarMenu.classList.toggle('show-sidebar');
    });

    //remove classlist when click outside the target

    document.addEventListener('click', (e)=>{
        if(!hamburgerBar.contains(e.target)){
            navbar.classList.remove('show-menu');
        }
        if(!profile.contains(e.target)){
            profileDropdown.classList.remove('show-dropdown');
        }
        if(!kebabMenu.contains(e.target)){
            sideBarMenu.classList.remove('show-sidebar');
        }
    });

    //add active class list to current link

    const navbarLinks = document.querySelectorAll('.navbar__links');
    
    navbarLinks.forEach(link =>{
        if(link.href === window.location.href){
            link.classList.add('active');
            document.title = link.textContent.toLocaleUpperCase();
            const logout = document.getElementById('logout');

    logout.addEventListener('click', function(e){
        e.preventDefault();
        const xhr = new XMLHttpRequest();

        xhr.open('POST', '../modals/logout.php', true);

        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

        xhr.onload = function(){
            if(this.status === 200){
               location.reload();
            }
        }
        const data = (`current_page=${link.href}`);
        xhr.send(data);
    });
        }
    });

    

});
