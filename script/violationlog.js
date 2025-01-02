document.addEventListener('DOMContentLoaded', function(){
    const search = document.getElementById('search');

    search.addEventListener('input', function(){
    updateViolationLogTable();
    });

    function updateViolationLogTable(){
        const xhr = new XMLHttpRequest();
        const tbody = document.querySelector('#tbody');
        tbody.innerHTML = ''; 

        xhr.open('POST', '../conn/violation_log_data.php', true);

        xhr.onload = function(){
            if(this.status == 200){
                let data = JSON.parse(this.responseText);
                data.sort((a, b) => a.studentID - b.studentID);
                for(let i = 0; i < data.length; i++){
                    const studentID = data[i].studentID;
                    const learnerReferenceNumber = data[i].learnerReferenceNumber;
                    const gradeLevel = data[i].gradeLevel;
                    const fullName = data[i].firstName + ' ' + data[i].lastName + ' ' + data[i].extensionName;
                    const sex = data[i].sex;
                    const article = data[i].article + ': ' + data[i].articleDescription;
                    const articleSection = data[i].articleSection + ': ' + data[i].articleSectionDescription;
                    const sanction = data[i].sanction;

                    const rowData = [
                        studentID,
                        learnerReferenceNumber,
                        gradeLevel,
                        fullName,
                        sex,
                        article,
                        articleSection,
                        sanction
                    ]; 

                    const createTr = document.createElement('tr');
                    createTr.setAttribute('class', 'table__row');
                    tbody.appendChild(createTr);
                    if(rowData[3].includes(search.value.toLowerCase()) || rowData[1].includes(search.value.toLowerCase())){
                        rowData.map(data =>{
                            const createTd = document.createElement('td');
                            createTd.setAttribute('class', 'table__data');
                            createTd.innerHTML = data + ' ';
                            createTr.appendChild(createTd);
                        });
                    }
                }
            }
        }
        xhr.send();
    }
    updateViolationLogTable();
});