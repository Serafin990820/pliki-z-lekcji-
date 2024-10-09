CREATE TABLE Jezyki(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    jezyk varchar(20) NOT NULL UNIQUE
);

CREATE TABLE Ludzie (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    imie varchar(30) NOT NULL,
    nazwisko varchar(50) NOT NULL ,
    wiek INT CHECK(wiek>18)
);

ALTER TABLE Ludzie
    ADD jezyk int,
    ADD CONSTRAINT fk_jezyki FOREIGN KEY (jezyk) REFERENCES Jezki(ID);

ALTER TABLE Jezyki
    ADD CONSTRAINT ch_jezyki
    CHECK (jezyk IN ('angielski', 'francuski', 'niemiecki'));