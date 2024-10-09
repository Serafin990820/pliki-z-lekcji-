const linkE = document.getElementById('link')
const img = document.getElementById('img')
const field2 = document.getElementById('field2')
const leftE = document.getElementById('left')
const rightE = document.getElementById('right')

link.addEventListener('change', (e) => {
    let link = linkE.value;
    img.src = link;

})

const green = document.getElementById('green')
const red = document.getElementById('red')
const blue = document.getElementById('blue')

field2.addEventListener('change', (e) => {
    if (green.checked) {
        leftE.style.backgroundColor = 'green';
        rightE.style.color = 'green';
    }
    if (red.checked) {
        leftE.style.backgroundColor = 'red';
        rightE.style.color = 'red';
    }
    if (blue.checked) {
        leftE.style.backgroundColor = 'blue';
        rightE.style.color = 'blue';
    }

})

const year = document.getElementById('year')

year.addEventListener('change', (e) => {
    if (year.value == 'wiosna') {
        img.src = 'https://ocdn.eu/pulscms-transforms/1/-lBk9kuTURBXy80YWNiMzk1YS05ODk5LTQzMjktYmY4MC00ZTU1MjY4NTcwNDMuanBlZ5GVAs0EsADDw94AAaEwAQ'
        console.log(year.value)
    } else
    if (year.value == 'lato') {
        img.src = 'https://s1.tvp.pl/images2/1/b/e/uid_1bec7ad5de3e4b90b84a26be1dd96f0c_width_900_play_0_pos_0_gs_0_height_506.jpg'
    } else
    if (year.value == 'jesien') {
        img.src = 'https://www.puffa.pl/wp-content/uploads/2018/11/gdzie-jechac%CC%81-jesiena%CC%A8-876x621.jpg'
    } else
    if (year.value == 'zima') {
        img.src = 'https://i.iplsc.com/000JTISQF2124FTU-C322-F4.webp'
    }
})