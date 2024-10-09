const btn = document.getElementById('btn')
const btn2 = document.getElementById('btn2')
const res = document.getElementById('res')
const res2 = document.getElementById('res2')
const h4res = document.getElementById('h4res')
const red = document.getElementById('red')
const green = document.getElementById('green')
const blue = document.getElementById('blue')
const speed = document.getElementById('speed')
const name = document.getElementById('name')
const beauty = document.getElementById('beauty')

//1
btn.addEventListener('click', (e) => {
    if (red.checked) {
        res.style.color = 'red'
    } else if (blue.checked) {
        res.style.color = 'blue'
    } else if (green.checked) {
        res.style.color = 'green'
    }
})

//2

btn2.addEventListener('click', (e) => {
    h4res.innerHTML = `Wybrałeś miasto ${beauty.value}`
})

//3

speed.addEventListener('change', (e) => {
    if (speed.value > 50) {
        res2.innerHTML = `właśnie utracono 16 punktów`
    } else if (speed.value > 41 && speed.value < 50) {
        res2.innerHTML = `właśnie utracono 13 punktów`
    } else if (speed.value > 31 && speed.value < 40) {
        res2.innerHTML = `właśnie utracono 10 punktów`
    } else if (speed.value < 30) {
        res2.innerHTML = `Nic nie straciłeś gratulacje, ale uważaj`
    }
})

//4

name.addEventListener('mouseover', (e) => {
    name.innerHTML = `Mateusz Baran`
})
name.addEventListener('mouseout', (e) => {
    name.innerHTML = `Autor strony`
})