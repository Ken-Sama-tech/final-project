document.addEventListener('DOMContentLoaded', function(){
    const boxes = document.querySelectorAll('.box');

    boxes.forEach(box =>{
        box.addEventListener('click', function(){
            const xhr = new XMLHttpRequest();

            xhr.open('POST', '../conn/dashboard_data.php', true);

            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

            xhr.onload = function(){
                if(this.status === 200){
                    let data = JSON.parse(this.responseText);
                    let output = '';

                    for(let i = 0; i < data.length; i++){
                        output += `<tr class="table__row"><td class="table__data"> ${data[i].learnerReferenceNumber}</td>
                        <td class="table__data"> ${data[i].firstName + ' ' + data[i].lastName + ' ' + data[i].extensionName} </td>
                        <td class="table__data"> ${data[i].gradeLevel}</td>
                        <td class="table__data"> ${data[i].article}</td>
                        <td class="table__data"> ${data[i].articleSection}</td>
                        <td class="table__data"> ${data[i].sanctionID}</td>
                        </tr>`;
                    }
                    const appendOutputHere = document.querySelector('#grade__tbody--here');
                    appendOutputHere.innerHTML = output;
                }
            }
            const gradelvl = box.querySelector('h2').textContent;
            const data = ('gradelvl=' + encodeURIComponent(gradelvl));
            xhr.send(data);
        });   
    });
});