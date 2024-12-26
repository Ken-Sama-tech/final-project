document.addEventListener('DOMContentLoaded', function(){
   
    const showDetails = document.getElementById('show__details');
    const violationDetailModalBG  = document.querySelector('.show__details--wrapper');
    const exitShowDetail = document.querySelector('.exit__show--detail--container');

    //exit modal btn
    exitShowDetail.addEventListener('click', function(){
        violationDetailModalBG.classList.remove('show-modal');
    });

    //exit modal when click outside the modal
    const detailsModalContainer = document.querySelector('.show__details--container');

    violationDetailModalBG.addEventListener('click', function(e){
        if(!detailsModalContainer.contains(e.target)){
            violationDetailModalBG.classList.remove('show-modal');
        }
    });

    showDetails.addEventListener('click', function(){
        const article = document.getElementById('article').value, 
        section = document.getElementById('article__section').value, 
        sanction = document.getElementById('sanction').value;

        violationDetailModalBG.classList.add('show-modal');

       const xhr = new XMLHttpRequest();

       xhr.open('POST', '../conn/req_violation_details.php', true);

       xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

       xhr.onload = function(){
        if(this.status === 200){
            const requestedDetails = JSON.parse(this.response);
            let textDetails = document.querySelector('.details__here');
            let output = '';

            output += `<h3>Article Description:</h3> <p>${requestedDetails.articleDescription}</p><br>` 
                +`<h3> Article Section Description</h3> <p>${requestedDetails.articleSectionDescription}</p> <br>`
                + `<h3> Sanction Description </h3> <p>${requestedDetails.sanction}</p>`;
            textDetails.innerHTML = output;
        }
       }
       const data = `article=${article}&section=${section}&sanction=${sanction}`;
       xhr.send(data);
    });
});