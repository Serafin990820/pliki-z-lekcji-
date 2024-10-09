const greenE = document.getElementById('green');
const howE = document.getElementById('how');
const butE = document.getElementById('but');
const resE = document.getElementById('result');

butE.addEventListener('click', (e) => {
    if (greenE.checked) {
        resE.innerHTML = 'Dowieziemy twoją pizze za darmo';
    } else {
        let liczba = howE.value;
        resE.innerHTML = `Dowóz będzie cie kosztował ${liczba*2} złotych`
    }
});