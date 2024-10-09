CREATE TABLE Klienci(
    ID int AUTO_INCREMENT PRIMARY KEY,
    Imie varchar(30) NOT NULL,
    Nazwisko varchar(50) NOT NULL,
    email varchar(50) UNIQUE check(email LIKE '%@%')
);

CREATE TABLE Uslugi (
    ID int AUTO_INCREMENT PRIMARY KEY,
    Nazwa varchar(50),
    Opis varchar(512),
    Cena decimal(9,2)
);


ALTER TABLE Uslugi
MODIFY nazwa varchar(50) NOT NULL UNIQUE;

ALTER TABLE Uslugi
    ADD CONSTRAINT ch_cena CHECK(cena>10);

CREATE TABLE Klucze (
    ID int AUTO_INCREMENT PRIMARY KEY,
    ID_Klienci int,
    ID_Uslugi int

);

ALTER TABLE Klucze  
    ADD CONSTRAINT fk_klienci FOREIGN KEY(ID_Klienci) REFERENCES Klienci(ID);

ALTER TABLE Klucze  
    ADD CONSTRAINT fk_uslugi FOREIGN KEY(ID_Uslugi) REFERENCES Uslugi(ID);


INSERT INTO Klienci(imie, nazwisko, email)
    VALUES ('Błażej', 'Wojtas', 'blaz.woj@gmail.com'),
    ('Michal', 'Wojtas', 'michal.woj@gmail.com');


INSERT INTO Klucze(ID_Klienci, ID_Uslugi)
    VALUES (1, (SELECT id FROM Uslugi where nazwa = 'sprzatanie'));
   

