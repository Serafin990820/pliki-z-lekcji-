SELECT nazwa, potoczna
FROM grzyby
WHERE jadalny = TRUE;

SELECT grzyby.nazwa, potoczna, rodzina.nazwa
FROM grzyby
    INNER JOIN rodzina ON grzyby.rodzina_id = rodzina.id
    INNER JOIN potrawy ON grzyby.potrawy_id = potrawy.id
WHERE potrawy.nazwa = 'sos';

SELECT nazwa_pliku, potoczna
FROM grzyby;

ALTER TABLE rodzina
ADD opis VARCHAR(255);

