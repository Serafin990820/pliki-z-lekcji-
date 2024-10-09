Utwórz tabelę Dzialy z polami:

 

kod całkowite, klucz podstawowy 
nazwa typ tekstowy
budzet rzeczywisty (real)
Utwórz tabelę Pracownicy z polami:

CREATE TABLE Dzialy
(
    kod int AUTO_INCREMENT primary key,
    nazwa varchar(50),
    budzet real


);

 

ID całkowite, klucz podstawowy
imie tekst, nie może być puste
nazwisko tekst, nie może być puste
dzial całkowite, jest to również pole klucza obcego, odwołujące się do pola kod w tabeli Działy
 

Wykonaj kod dołączający dane:

CREATE TABLE Pracownicy
(
    ID int PRIMARY KEY,
    imie varchar(50) not null,
    nazwisko varchar(50) not null,
    dzial int,
    foreign key (dzial) references Dzialy(kod)

);

 

 

 

INSERT INTO Dzialy(kod,nazwa,budzet) VALUES(14,'IT',65000);
INSERT INTO Dzialy(kod,nazwa,budzet)  VALUES(37,'Accounting',15000);
INSERT INTO Dzialy(kod,nazwa,budzet) VALUES(59,'Human Resources',240000);
INSERT INTO Dzialy(kod,nazwa,budzet) VALUES(77,'Research',55000);

INSERT INTO Pracownicy(ID,imie,nazwisko,dzial) VALUES('123234877','Michael','Rogers',14);
INSERT INTO Pracownicy(ID,imie,nazwisko,dzial) VALUES('152934485','Anand','Manikutty',14);
INSERT INTO Pracownicy(ID,imie,nazwisko,dzial) VALUES('222364883','Carol','Smith',37);
INSERT INTO Pracownicy(ID,imie,nazwisko,dzial) VALUES('326587417','Joe','Stevens',37);
INSERT INTO Pracownicy(ID,imie,nazwisko,dzial) VALUES('332154719','Mary-Anne','Foster',14);
INSERT INTO Pracownicy(ID,imie,nazwisko,dzial) VALUES('332569843','George','O''Donnell',77);
INSERT INTO Pracownicy(ID,imie,nazwisko,dzial)  VALUES('546523478','John','Doe',59);
INSERT INTO Pracownicy(ID,imie,nazwisko,dzial)  VALUES('631231482','David','Smith',77);
INSERT INTO Pracownicy(ID,imie,nazwisko,dzial) VALUES('654873219','Zacary','Efron',59);
INSERT INTO Pracownicy(ID,imie,nazwisko,dzial)  VALUES('745685214','Eric','Goldsmith',59);
INSERT INTO Pracownicy(ID,imie,nazwisko,dzial)  VALUES('845657245','Elizabeth','Doe',14);
INSERT INTO Pracownicy(ID,imie,nazwisko,dzial)  VALUES('845657246','Kumar','Swamy',14);
 

 

 1. Wyświetl nazwiska wszystkich pracowników

 Select nazwiska
 from Pracownicy;

2. Wyświetl nazwiska wszystkich pracowników, ale tak, aby się nie powtarzały (DISTINCT) 

3. Wyświetl dane wszystkich pracowników o nazwisku  "Smith".   

 

4. Wyświetl wszystkie dane pracowników o nazwisku  "Smith" lub "Doe".

5. Wyświetl wszystkie dane o pracownikach, którzy pracują w dziale 14.

6. Wyświetl wszystkie dane o pracownikach z działu 37 i działu 77. 

7. Wyświetl wszystkie dane o pracownikach, których nazwisko zaczyna się na literę  "S".

8. Wyświetl sumę budżetów wszystkich działów. 

 

9. Dla każdego działu wyświetl liczbę pracowników (tylko kod działu i liczbę pracowników) 

SELECT kod, Count(Pracownicy.ID) as liczba_pracownikow
FROM pracownicy 
    INNER JOIN Dzialy ON Pracownicy.dzial= Dzialy.kod
    GROUP BY dzial;

10. Wyświetl wszystkie dane o pracownikach, łącznie z danymi o działach, w których pracują. 

Select *
FROM PRACOWNICY
INNER JOIN Dzialy ON Pracownicy.dzial= Dzialy.kod;
 

11. Wyświetl imię i nazwisko każdego pracownika razem z nazwą i budżetem działu, w którym pracownik pracuje. 

 SELECT imie, nazwiska, nazwa, budżet
FROM PRACOWNICY
INNER JOIN Dzialy ON Pracownicy.dzial= Dzialy.kod; 

12. Wyświetl imiona i nazwiska pracowników, którzy pracują w działach o budżetach większych niż  $60,000 (czyli sześćdziesiąt tysięcy)
SELECT imie, nazwiska, budzet
FROM PRACOWNICY
INNER JOIN Dzialy ON Pracownicy.dzial= Dzialy.kod
where budzet > 60000;

13. Wyświetl działy z budżetem większym niż średni budżet wszystkich działów. 

SELECT nazwa, budzet
from Dzialy
having budzet > (SELECT avg(budzet));
 

14. Wyświetl nazwy działów z więcej niż dwoma pracownikami 

SELECT dzialy.nazwa, Count(pracownicy.id)
FROM PRACOWNICY
INNER JOIN Dzialy ON Pracownicy.dzial= Dzialy.kod
GROUP by nazwa
having Count(pracownicy.id) > 2;



15. Wyświetl imiona i nazwiska pracowników, pracujących w działach (dziale) z najmniejszym budżetem.

SELECT imie, nazwisko, dzialy.nazwa
FROM PRACOWNICY
INNER JOIN Dzialy ON Pracownicy.dzial= Dzialy.kod
where budzet = (SELECT MIN(budzet) FROM dzialy);

16. Dodaj nowy dział  "Quality Assurance" z budżetem $40,000 i kodem 10. 

INSERT INTO Dzialy(kod,nazwa,budzet) VALUES(10,'Quality Assurence',40000);

17. Dodaj pracownika "Mary Moore", pracującą w dziale o kodzie 10, z ID 847-21-9811.\

INSERT INTO Pracownicy(ID,imie,nazwisko,dzial)  VALUES('847-21-9811','mary','more',10);

18. Zmniejsz budżet wszystkich działów o 10%.

update dzialy
set budzet = budzet*0.9;

19. przenieś pracowników z działu Research  do działu IT  .

UPDATE pracownicy
SET dzial = 14
WHERE dzial = 77;

20. Usuń wszystkich pracowników pracujących w dziale   IT.

DELETE FROM pracownicy
WHERE dzial = 14;

21. Usuń wszystkich pracowników, którzy pracują w działach z budżetem większym bądź równym $60,000 (60 tysięcy)

DELETE FROM pracownicy 
WHERE budzet <= 60000;

22. Usuń wszystkich pracowników

DELETE FROM pracownicy;