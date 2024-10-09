const linkE = document.getElementById("link")
const btnE = document.getElementById("btn")
const imageE = document.getElementById("image")

btnE.addEventListener('click', (e) => {
    e.preventDefault()
    imageE.src = linkE.value

})