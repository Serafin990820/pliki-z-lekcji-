const nameE = document.getElementById('name')
const passE = document.getElementById('pass')
const reactE = document.getElementById('react')
const reg = /[0-9]/


nameE.addEventListener('change', (e) => {
    if (nameE.value.length < 3) {
        nameE.style.background = 'red'
    } else {
        nameE.style.background = ''
    }
})

passE.addEventListener('input', (e) => {
    if (reg.test(passE.value) && passE.value.length >= 7) {
        reactE.style.color = 'green'
        reactE.innerHTML = `Dobre`;
    } else if (reg.test(passE.value) && passE.value.length >= 4 && passE.value.length <= 6) {
        reactE.style.color = 'blue'
        reactE.innerHTML = ` ŚREDNIE `
    } else if (passE.value.length >= 1) {
        reactE.style.color = 'yellow'
        reactE.innerHTML = ` SŁABE `
    } else {
        reactE.style.color = 'red'
        reactE.innerHTML = ` WPISZ HASŁO `
    }



})