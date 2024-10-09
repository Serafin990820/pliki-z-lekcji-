DELETE FROM wypozyczenia
WHERE id_czytelnik = 2;

SELECT tytul, imie, nazwisko
FROM ksiazki 
    INNER JOIN autorzy ON ksiazki.id_autor = autorzy.id;

SELECT id, imie, nazwisko
FROM czytelnicy;