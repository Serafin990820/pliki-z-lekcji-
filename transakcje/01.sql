CREATE TABLE Dane{
    numer INT
};

INSERT INTO Dane ('numer')
    VALUES (1), (2), (3), (4), (5), (6);

START TRANSACTION;

update dane
SET numer = 20;

ROLLBACK;

START TRANSACTION;

update dane
SET numer = 30;

COMMIT;

-----------------------------

11 Utwórz tabelę Dane z dwoma polami typu int: numer i kwota. Wpisz dwa wiersze: (1, 10) oraz (2, 20).

CREATE TABLE Dane{
    numer INT,
    kwota INT
};

INSERT INTO Dane ('numer', 'kwota')
    VALUES (1, 10), (2, 20);

12. Otwórz dwa wiersze okna poleceń Rozpocznij w obu transakcje.

START TRANSACTION;

update dane
    SET kwota = 20;

ROLLBACK;

START TRANSACTION;

update dane
    SET kwota = 30;

COMMIT;

13. Pokaż zawartość tabeli dane;

SELECT * FROM Dane;

14. W pierwszej zmodyfikuj kwotę w wierszu o numerze 1, w drugiej kwotę w wierszu o numerze 2 (udało się? ____ )

update dane
SET kwota = 20
    WHERE numer = 1;

update dane
    SET kwota = 30
    WHERE numer = 2;


15. Zatwierdź transakcję w tym oknie, w którym jest to możliwe. Co się stało w drugim oknie? 
COMMIT;






16. Jaka jest zawartość tabeli Dane?

SELECT * FROM Dane;



17. Zatwierdź drugą transakcję. Jaka jest zawartość tabeli Dane?

COMMIT;
