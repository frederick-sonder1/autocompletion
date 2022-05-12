window.addEventListener("DOMContentLoaded", (event) => 
{
// récupère tout les elements requis
const searchWrapper = document.querySelector('.search-input');
const inputBox = searchWrapper.querySelector('input');
const suggBox = searchWrapper.querySelector('.autocom-box');
const suggBox2 = searchWrapper.querySelector('.autocom-box2');
const suggBoxfin = document.querySelector('.pmain');

var form = document.querySelector('form');

    //ajout d'un EventListener sur input box
    inputBox.addEventListener('keyup', (e) => {

        let userData = e.target.value;  //donnée saisie par l'utilisateur
        let data = new FormData(form);   // nouveau form envoyer pour recupe le json 
        fetch('Jsoncommence.php', {
            method: 'POST',
            body: data
        })
        .then(response => response.json()) //recupere le json
        .then(data => {  //recupere les données du json
            console.log(data);        
            console.log(userData);
            if (Boolean(data[0])) {
                let str = "";
                    for (let i = 0; i < data.length; i++) {
                        str = str + '<li><a href="element.php?id=' + data[i].id + '">' + data[i].nom + '</a></li>';
                        searchWrapper.classList.add('active');  //montre l'autocompletion
                        suggBox.innerHTML = str;
                    }
            }
            else if (!Boolean(data[0])) {
                let listData;
                listData = listData + '<li>' + userData + '</li>'
                suggBox.innerHTML = listData;
            }
            else{
                searchWrapper.classList.remove('active'); //cache l'autocompletion
                suggBox.style.display = 'none';
            }
        })

        fetch('JsonContient.php', {
            method: 'POST',
            body: data
        })
        .then(response => response.json()) //recupere le json
        .then(data => {  //recupere les données du json
            console.log(data);        
            console.log(userData);
            if (Boolean(data[0])) {
                let str2 = "";
                    for (let i = 0; i < data.length; i++) {
                        str2 = str2 + '<li><a href="element.php?id=' + data[i].id + '">' + data[i].nom + '</a></li>';
                        searchWrapper.classList.add('active');  //montre l'autocompletion
                        suggBox2.innerHTML = str2;
                    }
            }
            else{
                searchWrapper.classList.remove('active'); //cache l'autocompletion
                suggBox2.style.display = 'none';
            }   
        }) 
    })


    
})