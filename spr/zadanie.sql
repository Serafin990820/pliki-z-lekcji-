CREATE TABLE Pojazdy (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rok_prod INT NOT NULL,
    data_rej date DEFAULT(CURDATE())
);

CREATE TABLE Modele (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nazwa_modelu VARCHAR(50) NOT NULL UNIQUE
    
);

ALTER TABLE Pojazdy 
    ADD id_modelu INT,
    ADD CONSTRAINT FK_modelu FOREIGN KEY (id_modelu) REFERENCES Modele(id);

    BARAN MATEUSZ TO JA 



CREATE TABLE Film (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nazwa_film VARCHAR(50) NOT NULL UNIQUE
    
);

CREATE TABLE Kino (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nazwa_kino VARCHAR(50) NOT NULL UNIQUE

);

CREATE TABLE Klucz_obcy (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_film INT,
    id_kino INT

);

ALTER TABLE Klucz_obcy 
    ADD CONSTRAINT fk_filmu FOREIGN KEY(id_film) REFERENCES Film(id),
    ADD CONSTRAINT fk_kino FOREIGN KEY(id_kino) REFERENCES Kino(id);