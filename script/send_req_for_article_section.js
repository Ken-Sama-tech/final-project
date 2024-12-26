document.addEventListener('DOMContentLoaded', function(){

    const article = document.getElementById('article');
    const articleSection = document.getElementById('article__section');
    if(article.value == 1){
        const xhr = new XMLHttpRequest();

        xhr.open('POST', '../conn/req_article_section.php', true);

        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

        xhr.onload = function(){

            if(this.status === 200){
               const data = JSON.parse(this.responseText);
               let output = '';

               for(let i = 1; i < data.length; i++){
                output += `<option id="option" value="${data[i].articleSectionID}"> ${data[i].articleSection}</option>`
               }

                articleSection.innerHTML = output;
            }       
        }
        const data = ('article=' + encodeURIComponent(article.value));
        xhr.send(data);
    }

    article.addEventListener('change', function(e){
        e.preventDefault();

        const xhr = new XMLHttpRequest();
    
        xhr.open('POST', '../conn/req_article_section.php', true);
    
        xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    
        xhr.onload = function(){
    
            if(this.status === 200){
                const data = JSON.parse(this.responseText);
                let output = '';
    
                for(let i = 1; i < data.length; i++){
                output += `<option id="option" value="${data[i].articleSectionID}"> ${data[i].articleSection}</option>`
            }
    
                articleSection.innerHTML = output;
            }       
        }
        const data = ('article=' + encodeURIComponent(article.value));
        xhr.send(data);
    });

    
});