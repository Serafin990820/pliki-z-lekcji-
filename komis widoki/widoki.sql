SELECT imie, nazwisko 
    FROM Pracownicy

UNION

SELECT imie, nazwisko 
    FROM Handlowcy;


CREATE VIEW Wspolpracownicy AS

SELECT imie, nazwisko 
    FROM Pracownicy

UNION

SELECT imie, nazwisko 
    FROM Handlowcy;

DROP VIEW Wspolpracownicy;

SELECT *
    FROM Wspolpracownicy;

SELECT *
    FROM Wspolpracownicy
        WHERE imie = 'Ilona';

CREATE VIEW ModeleNazwy_1 AS
SELECT Modele.nazwa as nazwa_modelu , Producenci.nazwa as nazwa_producenta, rocznik_pocz,rocznik_konc
FROM Modele
    INNER JOIN Producenci ON Producenci.ID = Modele.Producent;