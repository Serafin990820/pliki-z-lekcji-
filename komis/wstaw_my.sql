﻿
INSERT INTO Handlowcy (LOGIN, IMIE, NAZWISKO, DATA_WPISU, AUTOR_WPISU, EMAIL) VALUES ('ibn', 'Ilona', 'Nowosad', STR_TO_DATE('10/09/01', '%y/%m/%d'), 'ibn', 'ibn@komis.eu');
INSERT INTO Handlowcy (LOGIN, IMIE, NAZWISKO, DATA_WPISU, AUTOR_WPISU, EMAIL) VALUES ('ktc', 'Krzysztof', 'Czarkowski', STR_TO_DATE('10/09/02', '%y/%m/%d'), 'ktc', 'ktc@komis.eu');
INSERT INTO Handlowcy (LOGIN, IMIE, NAZWISKO, DATA_WPISU, AUTOR_WPISU, EMAIL) VALUES ('agam', 'Agata', 'Miastek', STR_TO_DATE('14/02/07', '%y/%m/%d'), 'agam', 'agam@komis.eu');

INSERT INTO Rezerwacje (ID, KLIENT, SAMOCHOD, DATA_REZ, DATA_WPISU, AUTOR_WPISU) VALUES ('1', '4', '5', STR_TO_DATE('15/03/01', '%y/%m/%d'), STR_TO_DATE('15/02/28', '%y/%m/%d'), 'ktc');
INSERT INTO Rezerwacje (ID, KLIENT, SAMOCHOD, DATA_REZ, DATA_WPISU, AUTOR_WPISU) VALUES ('2', '1', '3', STR_TO_DATE('15/02/28', '%y/%m/%d'), STR_TO_DATE('15/02/20', '%y/%m/%d'), 'ktc');

INSERT INTO Operacje (ID, RODZAJ, DATA_WPISU, AUTOR_WPISU) VALUES ('1', 'zakup',  STR_TO_DATE('15/01/01', '%y/%m/%d'), 'ibn');
INSERT INTO Operacje (ID, RODZAJ, DATA_WPISU, AUTOR_WPISU) VALUES ('2', 'sprzedaż',  STR_TO_DATE('15/01/14', '%y/%m/%d'), 'ktc');
INSERT INTO Operacje (ID, RODZAJ, DATA_WPISU, AUTOR_WPISU) VALUES ('3', 'rezerwacja',  STR_TO_DATE('15/02/10', '%y/%m/%d'), 'ibn');

INSERT INTO Rejestry (ID, OPERACJA, KLIENT, SAMOCHOD, KWOTA, DATA_WPISU, AUTOR_WPISU) VALUES ('1', '2', '3', '1', '45000', STR_TO_DATE('15/03/01', '%y/%m/%d'), 'ktc');
INSERT INTO Rejestry (ID, OPERACJA, KLIENT, SAMOCHOD, KWOTA, DATA_WPISU, AUTOR_WPISU) VALUES ('2', '1', '2', '2', '13000', STR_TO_DATE('15/01/14', '%y/%m/%d'), 'ktc');
INSERT INTO Rejestry (ID, OPERACJA, KLIENT, SAMOCHOD, KWOTA, DATA_WPISU, AUTOR_WPISU) VALUES ('3', '2', '1', '3', '15000', STR_TO_DATE('15/02/10', '%y/%m/%d'), 'ibn');


INSERT INTO Samochody (ID, MODEL, ROCZNIK, WARTOSC, DATA_WPISU, AUTOR_WPISU, TABLICA, PRZEBIEG, SILNIK) VALUES ('1', '3', '2011', '48000', STR_TO_DATE('15/01/01', '%y/%m/%d'), 'ktc', 'CTR123G', '90000', 'D');
INSERT INTO Samochody (ID, MODEL, ROCZNIK, WARTOSC, DATA_WPISU, AUTOR_WPISU, TABLICA, PRZEBIEG, SILNIK) VALUES ('2', '1', '2003', null, STR_TO_DATE('15/01/14', '%y/%m/%d'), 'ktc', 'ctr987D', '290000', 'BG');
INSERT INTO Samochody (ID, MODEL, ROCZNIK, WARTOSC, DATA_WPISU, AUTOR_WPISU, TABLICA, PRZEBIEG, SILNIK) VALUES ('3', '1', '2007', '18000', STR_TO_DATE('15/02/10', '%y/%m/%d'), 'ibn', 'Ctr6H7C', '240000', 'B');
INSERT INTO Samochody (ID, MODEL, ROCZNIK, WARTOSC, DATA_WPISU, AUTOR_WPISU, TABLICA, PRZEBIEG, SILNIK) VALUES ('4', null, '2006', '5000', STR_TO_DATE('15/02/10', '%y/%m/%d'), 'ibn', 'CT09876', '310000', 'B');
INSERT INTO Samochody (ID, MODEL, ROCZNIK, WARTOSC, DATA_WPISU, AUTOR_WPISU, TABLICA, PRZEBIEG, SILNIK) VALUES ('5', '2', '2006', '22000', STR_TO_DATE('15/03/05', '%y/%m/%d'), 'ktc', 'ct68790', '289000', 'D');
INSERT INTO Samochody (ID, MODEL, ROCZNIK, WARTOSC, DATA_WPISU, AUTOR_WPISU, TABLICA, PRZEBIEG, SILNIK) VALUES ('6', '1', '2010', '41000', STR_TO_DATE('15/02/10', '%y/%m/%d'), 'ktc', 'By21340', '98000', 'B');
INSERT INTO Samochody (ID, MODEL, ROCZNIK, WARTOSC, DATA_WPISU, AUTOR_WPISU, TABLICA, PRZEBIEG, SILNIK) VALUES ('7', '2', '2000', '33000', STR_TO_DATE('15/01/29', '%y/%m/%d'), 'ktc', 'by76098', '137000', 'BG');
