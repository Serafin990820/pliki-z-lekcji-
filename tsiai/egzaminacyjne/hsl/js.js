const hslE = document.getElementById('HSL')
const btn1E = document.getElementById('btn1')
const primE = document.getElementById('prim')
const firstE = document.getElementById('first')
const secondE = document.getElementById('second')
const thirdE = document.getElementById('third')
const fourthE = document.getElementById('fourth')

btn1E.addEventListener('click', (e) => {
    let hslP = hslE.value;
    let LE = '50%';

    primE.style.backgroundColor = `hsl(${hslP}, 100%, ${LE})`;
    firstE.style.backgroundColor = `hsl(${hslP}, 80%, ${LE})`;
    secondE.style.backgroundColor = `hsl(${hslP}, 60%, ${LE})`;
    thirdE.style.backgroundColor = `hsl(${hslP}, 40%, ${LE})`;
    fourthE.style.backgroundColor = `hsl(${hslP}, 20%, ${LE})`;
})