SELECT CURDATE();

SELECT DATE_FORMAT(data_zatrudnienia, '%d/%m/%Y')
    FROM pracownicy;

SELECT DATE_FORMAT(data_zatrudnienia, '%M')
    FROM pracownicy;

INSERT INTO pracownicy(imie, nazwisko, data_zatrudnienia)
    VALUES
    ('Mateusz', 'Baran', CURDATE());


SELECT  MONTH(data_zatrudnienia) as Miesiac_zatrudnienia, COUNT(*) as liczba
FROM pracownicy
    GROUP BY MONTH(data_zatrudnienia)
    ORDER BY data_zatrudnienia;
    

Kolumna imie_nazwisko  zawiera połączone dane: imie i nazwisko oddzielone spacją (wpisane jest tylko jedno imię). Twoim zadaniem jest znormalizować tabelę, czyli przenieść te dane do osobnych kolumn. W tym celu:

1. Dodaj do tabeli dwie nowe kolumny, dobierz odpowiednio ich typy

ALTER TABLE zaloga
    ADD COLUMN imie VARCHAR(20),
    ADD COLUMN nazwisko VARCHAR(20);

2. Przenieś imię do kolumny imie

UPDATE zaloga
    SET imie = SUBSTRING_INDEX(imie_nazwisko,'', 1)
    WHERE imie_nazwisko IS NOT NULL;


3. Przenieś nazwisko do kolumny nazwisko

UPDATE zaloga
    SET nazwisko = SUBSTRING_INDEX(imie_nazwisko,'', 2)
    WHERE imie_nazwisko IS NOT NULL;

4. Usuń kolumnę imie_nazwisko

ALTER TABLE zaloga
    DROP COLUMN imie_nazwisko;

Dołącz plik ze zrzutami potwierdzającymi wykonanie zadania, pokaż efekt - zawartość poprawionej tabeli

Tekst odpowiedzi Pytanie 12














