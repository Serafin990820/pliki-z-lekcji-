const text = document.getElementById('text')
const red = document.getElementById('red')
const size = document.getElementById('size')
const jedn = document.getElementById('jedn')
const grey = document.getElementById('grey')
const purple = document.getElementById('purple')
const blue = document.getElementById('blue')
const left = document.getElementById('left')

red.addEventListener('change', (e) => {
    text.classList.toggle('czerwony');
})

left.addEventListener('change', (e) => {

    let roz = size.value;
    let jedos = jedn.value;
    text.style.fontSize = `${roz}${jedos}`;
    if (grey.checked) {
        text.classList.add('grey')
        text.classList.remove('blue')
        text.classList.remove('purple')
    } else if (blue.checked) {
        text.classList.add('blue')
        text.classList.remove('grey')
        text.classList.remove('purple')
    } else if (purple.checked) {
        text.classList.add('purple')
        text.classList.remove('grey')
        text.classList.remove('blue')
    }
})