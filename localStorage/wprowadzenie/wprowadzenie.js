const formE = document.getElementById('form')
const textE = document.getElementById('tan')
const btnE = document.getElementById('btn')
const resultE = document.getElementById('result')

if (localStorage.getItem('text') !== null) {
    textE.value = localStorage.getItem('text')
}


textE.addEventListener('input', (e) => {
    localStorage.setItem('text', textE.value)

})

btnE.addEventListener('click', (e) => {
    localStorage.removeItem('text')
})