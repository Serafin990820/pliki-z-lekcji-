const liczba1E = document.getElementById('liczba1')
const liczba2E = document.getElementById('liczba2')
const btnE = document.getElementById('btn')
const btn2E = document.getElementById('prom')
const resE = document.getElementById('result')
const resultE = document.getElementById('res')
const headE = document.getElementById('header')
const form = document.querySelectorAll('form')


btnE.addEventListener('click', (e) => {
    let suma = Number(liczba1E.value) + Number(liczba2E.value);
    let iloczyn = liczba1E.value * liczba2E.value;
    resE.innerHTML = `suma liczb to ${suma}, a iloczyn to ${iloczyn}`;
})
headE.addEventListener('click', (e) => {
    headE.innerHTML = `Mateusz Baran`;
})

btn2E.addEventListener('click', (e) => {
    e.preventDefault()
    let cena = document.querySelector('input[name="1"]:checked').value

    resultE.innerHTML = `Cena Strzyżenia: ${cena} zł`
})