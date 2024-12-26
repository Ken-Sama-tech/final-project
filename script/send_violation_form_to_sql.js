document.addEventListener('DOMContentLoaded', function(){

    const form = document.getElementById('form');

    form.addEventListener('submit', function(e){
        e.preventDefault();

        const inputTypeText = document.querySelectorAll(".form__inpt[type='text']");

        inputTypeText.forEach(input =>{
            input.value = input.value.toLowerCase();
        });

        const universalModal = document.querySelector('.universal__modal--wrapper');
        universalModal.classList.add('show-modal');

        const responseContainer = document.querySelector('.append__response--here');

        const xhr = new XMLHttpRequest();

        xhr.open('POST', '../conn/send_violation_form_to_sql.php');

        xhr.onload = function(){
            if(this.status === 200){

              if(this.response === 'Invalid Email'){
                responseContainer.classList.add('response__contain--error');
                responseContainer.innerHTML = this.responseText;
              }else if(this.response == 'Data Inserted Successfully'){
                responseContainer.classList.add('response__success');
                responseContainer.innerHTML = this.responseText;
              }else if(this.responseText == 'Failed To Insert Data'){
                responseContainer.classList.add('response__contain--error');
                responseContainer.innerHTML = this.responseText;
              }else{
                responseContainer.classList.add('response__unknown');
                responseContainer.innerHTML = this.responseText;
              }
            }else{
                responseContainer.classList.add('response__contain--error');
                responseContainer.innerHTML = 'Request Failed With Status :' + this.status;
            }
        }
        
        xhr.onerror = function(){
            responseContainer.classList.add('response__contain--error');
            responseContainer.innerHTML = 'Network error or timeout. Please check your connection';
        }

        xhr.ontimeout = function(){
            responseContainer.classList.add('response__contain--error');
            responseContainer.innerHTML = 'Request timed out. Please try again later';
        }

        const formData = new FormData(form);
        xhr.send(formData);
    });

});