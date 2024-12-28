document.addEventListener('DOMContentLoaded', function(){
    const loginForm = document.getElementById('login__modal');
    const loginBtn = document.getElementById('login');
    if(loginBtn){
        loginBtn.addEventListener('click', function(e){
            e.preventDefault();
            const errorMsg = document.querySelector('.login__modal--error');
            const xhr = new XMLHttpRequest();
            
            xhr.open('POST', '../conn/login_modal_back.php', true);
    
            xhr.onload = function(){
                if(this.status === 200){
                    if(this.responseText == 'logged in'){
                        location.reload();
                    } else {
                        errorMsg.removeAttribute('hidden');
                        errorMsg.innerHTML = this.responseText;
                    }
                }
            }
            const loginData = new FormData(loginForm);
            xhr.send(loginData);
        });
    }
});