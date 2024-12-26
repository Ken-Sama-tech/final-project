const universalModalBtn = document.querySelector('.ok__button');

universalModalBtn.addEventListener('click', function(){
    const universalModal = document.querySelector('.universal__modal--wrapper');

    universalModal.classList.remove('show-modal');
});