const indigoE = document.getElementById('indigo')
const steelblueE = document.getElementById('steelblue')
const oliveE = document.getElementById('olive')
const colorE = document.getElementById('color')
const ramkaE = document.getElementById('ramka')
const dyskE = document.getElementById('dysk')
const kwadratE = document.getElementById('kwadrat')
const okragE = document.getElementById('okrag')
const artykulE = document.getElementById('artykul')
const imgE = document.getElementById('img')
const procentE = document.getElementById('procent')

const cosE = document.getElementById('cos')

indigoE.addEventListener('click', (e) => {
    artykulE.style.backgroundColor = 'Indigo';

})
steelblueE.addEventListener('click', (e) => {
    artykulE.style.backgroundColor = 'Steelblue';

})
oliveE.addEventListener('click', (e) => {
    artykulE.style.backgroundColor = 'Olive';

})

colorE.addEventListener('change', (e) => {
    if (colorE.value == 1) {
        artykulE.style.color = 'white';
    }
    if (colorE.value == 2) {
        artykulE.style.color = 'Tan';
    }
    if (colorE.value == 3) {
        artykulE.style.color = 'bisque';
    }
    if (colorE.value == 4) {
        artykulE.style.color = 'plum';
    }
})

ramkaE.addEventListener('click', (e) => {
    if (ramkaE.checked) {
        imgE.style.border = '1px white solid';
    } else {
        imgE.style.border = '';
    }
})

procentE.addEventListener('change', (e) => {
    artykulE.style.fontSize = procentE.value + '%'
})

dyskE.addEventListener('change', (e) => {
    if (dyskE.checked) {
        cosE.style.listStyleType = 'disc';
    }
});

kwadratE.addEventListener('change', (e) => {
    if (kwadratE.checked) {
        cosE.style.listStyleType = 'square';
    }
});

okragE.addEventListener('change', (e) => {
    if (okragE.checked) {
        cosE.style.listStyleType = 'circle';
    }
});