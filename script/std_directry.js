document.addEventListener('DOMContentLoaded', function(){

    const container = document.querySelector('.container');
    function updateStudentDirectory(){
        const xhr = new XMLHttpRequest();
    
        xhr.open('POST', '../conn/std_data.php', true);
    
        xhr.onload = function(){
            if(this.status === 200){
                let data= JSON.parse(this.responseText);
                let studentInformation = [];
                for(let i = 0; i < data.length; i++){
                    const createCardContainer = document.createElement('div');
                    createCardContainer.setAttribute('class', 'card__container');
                    container.appendChild(createCardContainer);
                     studentInformation = [
                        'Name: ' + data[i].firstName  + ' ' + 
                        data[i].middleName + ' ' + 
                        data[i].lastName + ' ' +
                        data[i].extensionName,
                        'ID: ' + data[i].studentID,
                        'Learner Reference Number: ' + data[i].learnerReferenceNumber,
                        'Grade: ' + data[i].gradeLevel, 
                        'Birth Date: ' + data[i].birthDate,
                        'Sex: ' + data[i].sex,
                        'Present Address: ' + data[i].presentAddress,
                        'Permanent Address :' + data[i].permanentAddress,
                        'Civil Status: ' + data[i].civilStatus,
                        'Religion: ' + data[i].religion,
                        'Contact Number: ' + data[i].contactNumber,
                        'Email Address: ' + data[i].emailAddress,
                    ];
                    const createImgContainer = document.createElement('div');
                    createImgContainer.setAttribute('class', 'img__container');
                    createCardContainer.appendChild(createImgContainer);

                    const createImgForCard = document.createElement('img');
                    createImgForCard.setAttribute('src', '../img/profile.png');
                    createImgForCard.setAttribute('class', 'card__img');
                    createImgContainer.appendChild(createImgForCard);

                    const createStdInfoContainer = document.createElement('div');
                        createStdInfoContainer.setAttribute('class', 'card__info--container');
                        createCardContainer.appendChild(createStdInfoContainer);

                    studentInformation.map(info => {
                        const createCard = document.createElement('p');
                        createCard.setAttribute('class', 'card');
                        createCard.textContent = info;
                        createStdInfoContainer.appendChild(createCard);
                    });
                }
            }
        }
        xhr.send();
    }

    updateStudentDirectory();
})