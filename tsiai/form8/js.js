const send = document.getElementById('send')
const nameE = document.getElementById('name')
const surname = document.getElementById('surname')
const age = document.getElementById('age')

send.addEventListener('click', (e) => {
    e.preventDefault()
    let age2 = Number(age.value)

    if (nameE.value.length < 3) {
        document.getElementById('name').focus()
        nameE.style.backgroundColor = 'red';
        nameE.value = ``;
        nameE.placeholder = `tekst musi być większy niż 3 litery`

    } else {
        nameE.style.backgroundColor = ''
    }
    if (surname.value.length < 3) {
        document.getElementById('surname').focus()
        surname.style.backgroundColor = 'red';
        surname.value = ``
        surname.placeholder = `tekst musi być większy niż 3 litery`

    } else {
        surname.style.backgroundColor = ''
    }
    if (age2 < 0 || age2 > 120) {

        document.getElementById('age').focus()
        age.style.backgroundColor = 'red';
        age.value = ``
        age.placeholder = `tekst musi w przedziale od 0 do 120`

    } else {
        age.style.backgroundColor = ''
    }

    if (nameE.value.length >= 3 && surname.value.length >= 3 && age2 > 0 && age2 < 120) {
        alert(`Witaj ${nameE.value} ${surname.value}`)
    }

})