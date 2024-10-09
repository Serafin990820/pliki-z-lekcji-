INSERT INTO filmy(gatunki_id, tytul, rok, ocena)
VALUES(5, 'Subrbicon', 2017, 5);

SELECT filmy.tytul, gatunki.nazwa
FROM filmy
    INNER JOIN gatunki ON filmy.gatunki_id = gatunki.id
WHERE ocena = 6;


SELECT filmy.tytul, filmy.rok
FROM filmy
    INNER JOIN gatunki ON filmy.gatunki_id = gatunki.id
WHERE gatunki.nazwa = 'dramat' AND filmy.ocena = 5;

CREATE TABLE aktorzy(
    id INT NOT NULL,
    imie VARCHAR(50),
    nazwisko VARCHAR(50)

);

SELECT filmy.tytul, filmy.ocena, filmy.rok
FROM filmy 
WHERE gatunki_id = (SELECT id FROM gatunki WHERE nazwa = 'komedia');


SELECT filmy.id, filmy.tytul, rezyserzy.imie, rezyserzy.nazwisko
FROM filmy
    LEFT JOIN rezyserzy ON rezyserzy.id = filmy.rezyserzy_id;

UPDATE rezyserzy
SET imie = 'Francis Ford'
WHERE id = 8;