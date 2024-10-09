const changeE = document.getElementById('change')
const drzewoE = document.getElementById('tree')
const bushE = document.getElementById('bush')
const bylE = document.getElementById('byl')
const sendE = document.getElementById('send')
const resE = document.getElementById('res')

const emailE = document.getElementById('email')
const serviceE = document.getElementById('service')
const restE = document.getElementById('reset')
const send2E = document.getElementById('send2')
const res2E = document.getElementById('resultee')
const submitE = document.querySelector('[type=submit]')
const uslE = document.getElementById('usl')


changeE.addEventListener('click', (e) => {
    changeE.innerHTML = 'Kolorowa Jesień'
    changeE.style.color = 'red'
});

sendE.addEventListener('click', (e) => {
    if (bushE.checked) {
        resE.innerHTML = 'Koszt to 300 zł'
    } else if (drzewoE.checked) {
        resE.innerHTML = 'Koszt to 500 zł'
    } else if (bylE.checked) {
        resE.innerHTML = 'Koszt to 150 zł'
    } else {
        resE.innerHTML = 'wybierz opcje'
    }
})

send2E.addEventListener('click', (e) => {
    e.preventDefault()
    res2E.innerHTML = emailE.value
    let service = serviceE.value
    uslE.innerHTML = 'Usługa to: ' + service


})