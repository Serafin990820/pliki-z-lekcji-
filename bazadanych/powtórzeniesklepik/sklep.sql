CREATE DATABASE sklep;

CREATE TABLE Producenci(
    kod INT PRIMARY KEY AUTO_INCREMENT,
    nazwa varchar(50) NOT NULL
);

CREATE TABLE Produkty(
    kod int PRIMARY KEY AUTO_INCREMENT,
    nazwa varchar(50) NOT NULL,
    cena dec(7,2),
    Producent int,
    foreign key (Producent) references Producenci(kod)
);

1. Wyświetl nazwy wszystkich produktów|

SELECT nazwa 
From Produkty;

2. Wyświetl nazwy i ceny wszystkich produktów w sklepie 

SELECT nazwa, cena
From Produkty;

3. Wyświetl nazwy produktów o cenie mniejszej lub równiej  $200.


SELECT nazwa,cena
From Produkty
where cena =< 200;
4. Wyświetl wszystkie produkty o cenie pomiędzy $60 i $120.

5. Wyświetl nazwy produktów i ceny w centach (tzn. pomnóż ceny przez 100) 

6. Wyświetl średnią cenę wszystkich produktów 

7. Wyświetl średną ceną wszystkich produktów producenta o kodzie 2 

 

8. Ile jest produktów o cenie większej lub równiej $180.

9. Wyświetl nazwy i ceny wszystkich produktów o cenie większej lub równej  $180, i posortuj je najpierw według ceny (rosnąco), a następnie według nazwy (malejąco) 

10. Wyświetl wszystkie dane z z tabeli produkty oraz wszystkie dane z tabeli producenci 

11. Wyświetl nazwę produktu, cenę i nazwę producenta dla wszystkich produktów 

SELECT Produkty.nazwa, cena, producenci.nazwa
From Produkty
inner join producenci on producenci.kod = produkty.producent;

12. Wyświetl średnią cenę produktów każdego producenta, pokazując tylko kod producenta
Select AVG(cena), producent
From produkty
GROUP BY producent;

13. Wyświetl średnią cenę produktów każdego producenta, pokazując nazwę producenta
Select AVG(cena), producenci.nazwa
From produkty
    INNER JOIN producenci on produkty.producent = producenci.kod 
GROUP BY producenci.nazwa; 

14. Wyświetl nazwę każdego producenta, którego produkty mają średnią cenę większą lub równą $150

SELECT Producenci.nazwa, cena
from producenci
inner join produkty on producenci.kod = produkty.producent
group by Producenci.nazwa
having avg(cena) >= 150;

15. Wyświetl nazwę i cenę najtańszego produktu  (LIMIT lub podzapytanie)

SELECT nazwa, cena 
FROM produkty
GROUP BY cena ASC
LIMIT 1;

16.Wyświetl nazwę każdego producenta razem z nazwą i ceną jego najdroższego produktu 

SELECT Producenci.nazwa, Produkty.nazwa, cena 
from producenci
inner join produkty on producenci.kod = produkty.producent
GROUP BY producenci.nazwa
having MAX(CENA);

17. Dodaj nowy produkt:  Loudspeakers, $70, producent 2.

INSERT INTO produkty(nazwa, cena, producent)
    VALUES ('Loudspeakers', 70, 2);

18. Zmień nazwę produktu o kodzie 8 na "Laser Printer".

UPDATE Produkty
    SET nazwa = 'laser printer'
    where kod = 8;

19. Wykonaj 10% przecenę każdego produktu 

UPDATE produkty
    SET cena = cena*0.9;

20. Wykonaj 10% przecenę każdego produktu o cenie większej lub równiej $120.
UPDATE produkty
    SET cena = cena*0.9
    WHERE cena >= 120;