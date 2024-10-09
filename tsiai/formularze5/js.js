const btnE = document.getElementById('btn')
const resE = document.getElementById('res')
const cenaE = document.getElementById('cena')
const cardG = document.getElementById('gold')
const cardS = document.getElementById('silver')
const cardN = document.getElementById('none')
const naglE = document.getElementById('nagl')
const parE = document.getElementById('par')
const procentE = document.getElementById('procent')
const opE = document.getElementById('op')
const redE = document.getElementById('red')
const blueE = document.getElementById('blue')
const greenE = document.getElementById('green')


btnE.addEventListener('click', (e) => {

    let cena = cenaE.value
    if (cardG.checked) {
        console.log(cena)
        resE.innerHTML = 'kwota ze złotą zniżką wynosi: ' + (cena * 0.8)
    } else if (cardS.checked) {
        resE.innerHTML = 'kwota ze srebrną zniżką wynosi: ' + (cena * 0.9)
    } else if (cardN.checked) {
        resE.innerHTML = 'kwota bez zniżki wynosi: ' + cena
    }
})

naglE.addEventListener('click', (e) => {
    naglE.innerHTML = 'deszcz'
    naglE.style.color = 'grey'
})

procentE.addEventListener('change', (e) => {
    let size = procentE.value
    parE.style.fontSize = `${size}%`
})

opE.addEventListener('click', (e) => {
    let op = opE.value

    parE.style.fontStyle = `${op}`
})

redE.addEventListener('click', (e) => {
    parE.style.color = 'red'
})
greenE.addEventListener('click', (e) => {
    parE.style.color = 'green'
})
blueE.addEventListener('click', (e) => {
    parE.style.color = 'blue'
})