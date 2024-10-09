CREATE TABLE Filmy (
    Kod INT AUTO_INCREMENT PRIMARY KEY,
    Tytul VARCHAR(255),
    Rating VARCHAR(50)
);

CREATE TABLE Kina (
    Kod INT AUTO_INCREMENT PRIMARY KEY,
    Nazwa VARCHAR(255) NOT NULL,
    Film INT,
    FOREIGN KEY (Film) REFERENCES Filmy(Kod)
);



 INSERT INTO Filmy(Kod,Tytul,Rating) VALUES(9,'Citizen King','G');
 INSERT INTO Filmy(Kod,Tytul,Rating) VALUES(1,'Citizen Kane','PG');
 INSERT INTO Filmy(Kod,Tytul,Rating) VALUES(2,'Singin'' in the Rain','G');
 INSERT INTO Filmy(Kod,Tytul,Rating) VALUES(3,'The Wizard of Oz','G');
 INSERT INTO Filmy(Kod,Tytul,Rating) VALUES(4,'The Quiet Man',NULL);
 INSERT INTO Filmy(Kod,Tytul,Rating) VALUES(5,'North by Northwest',NULL);
 INSERT INTO Filmy(Kod,Tytul,Rating) VALUES(6,'The Last Tango in Paris','NC-17');
 INSERT INTO Filmy(Kod,Tytul,Rating) VALUES(7,'Some Like it Hot','PG-13');
 INSERT INTO Filmy(Kod,Tytul,Rating)  VALUES(8,'A Night at the Opera',NULL);
 
 INSERT INTO Kina(Kod,Nazwa,Film) VALUES(1,'Odeon',5);
 INSERT INTO Kina(Kod,Nazwa,Film) VALUES(2,'Imperial',1);
 INSERT INTO Kina(Kod,Nazwa,Film) VALUES(3,'Majestic',NULL);
 INSERT INTO Kina(Kod,Nazwa,Film) VALUES(4,'Royale',6);
 INSERT INTO Kina(Kod,Nazwa,Film) VALUES(5,'Paraiso',3);
 INSERT INTO Kina(Kod,Nazwa,Film) VALUES(6,'Nickelodeon',NULL);
 

 1. Wyświetl tytuły wszystkich filmów

 SELECT Tytul
 from filmy; 

2. Ile różnych poziomów ratingu jest zapisane w bazie? Wyświetl je (dane nie powinny się powtarzać). 

SELECT distinct rating
from filmy;


3. Wyświetl wszystkie filmy z nieustalonym ratingiem.

SELECT * 
FROM Filmy
WHERE Rating IS NULL;

4. Wyświetl wszystkie  kina, w których aktualnie nie są wyświetlane żadne filmy. 

SELECT * 
FROM Kina
WHERE Film IS NULL;


5. Wyświetl wszystkie dane o kinach i filmach, uwzględnij tylko dane o filmach, które są wyświetlane w tych kinach i dane o kinach, w których są wyświetlane jakieś filmy.

SELECT Kina.Kod, Kina.Nazwa, Filmy.Tytul, Filmy.Rating
FROM Kina
    INNER JOIN Filmy ON Kina.Film = Filmy.Kod;

6. Wyświetl wszystkie dane o kinach i filmach, uwzględnij w zestawieniu także te kina, w których aktualnie nie są wyświetlane żadne filmy.

SELECT Kina.Kod AS KodKina, Kina.Nazwa, Filmy.Tytul, Filmy.Rating
FROM Kina
    LEFT JOIN Filmy ON Kina.Film = Filmy.Kod;

7. Wyświetl wszystkie dane o kinach i filmach, uwzględnij w zestawieniu także te filmy, które nie są aktualnie wyświetlane w żadnych kinach.

SELECT Kina.Kod AS KodKina, Kina.Nazwa, Filmy.Tytul, Filmy.Rating
FROM Kina
    RIGHT JOIN Filmy ON Kina.Film = Filmy.Kod;

8. Wyświetl wszystkie dane o kinach i filmach, uwzględnij w zestawieniu także te kina, w których aktualnie nie są wyświetlane żadne filmy oraz  te filmy, które nie są aktualnie wyświetlane w żadnych kinach. 

SELECT Kina.Kod AS KodKina, Kina.Nazwa, Filmy.Tytul, Filmy.Rating
FROM Kina
    LEFT JOIN Filmy ON Kina.Film = Filmy.Kod

UNION 

SELECT Kina.Kod AS KodKina, Kina.Nazwa, Filmy.Tytul, Filmy.Rating
FROM Kina
    RIGHT JOIN Filmy ON Kina.Film = Filmy.Kod;

9. Dodaj film  "One, Two, Three" (bez ratingu)

INSERT INTO Filmy (Tytul, Rating) VALUES ('One, Two, Three', NULL);
 
10. Ustal rating wszystkich filmów bez ratingu na  "G".

UPDATE Filmy
SET Rating = 'G'
WHERE Rating IS NULL;

11. usuń kina wyświetlające filmy z ratingiem "NC-17".

DELETE FROM Kina
WHERE Film IN (SELECT Kod FROM Filmy WHERE Rating = 'NC-17');
