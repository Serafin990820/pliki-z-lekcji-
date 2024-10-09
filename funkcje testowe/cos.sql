
SELECT UPPER(LEFT(Tablica,2))
    FROM auta;

SELECT SUBSTRING_INDEX(email, '@', 1) AS identyfikator_mailowy
    FROM Handlowcy
    WHERE email LIKE '%@%';

SELECT CONCAT(imie, ' ', nazwisko, ' ', email)
FROM Handlowcy;

SELECT CONCAT(LEFT(imie,1), LEFT(nazwisko,1)) AS INICJALY
FROM Handlowcy;

SELECT nazwa
FROM Producenci
WHERE CHAR_LENGTH(nazwa)=5;

SELECT NOW();

SELECT DATE(NOW()) AS data, TIME(NOW()) AS czas;

SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y') AS data;

SELECT DATEDIFF('2024-06-21', CURDATE()) AS 'ilośc dni do konca roku';



