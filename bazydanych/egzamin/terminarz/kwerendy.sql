-- – Zapytanie 1: wybierające jedynie niepowtarzające się wartości z pola wpis dla zadań z pierwszych 7 dni lipca roku 2020 (od 1 do 7 lipca) oraz takich, gdzie pole wpis nie jest puste

SELECT DISTINCT wpis
FROM zadania
where (dataZadania BETWEEN '2020-07-01' AND '2020-07-07') AND wpis is not null AND wpis != '';



-- – Zapytanie 2: wybierające jedynie pola dataZadania i wpis dla zadań z miesiąca lipca

SELECT dataZadania, wpis
from zadania
where miesiac = "lipiec";

-- – Zapytanie 3: wybierające jedynie pole miesiac i wpis dla wpisów zaczynających się na literę „S”

SELECT miesiac, wpis
FROM zadania
WHERE wpis like 'S%';


-- – Zapytanie 4: aktualizujące pole wpis dla zadania w dniu 2020-07-18, nowy wpis to „Wycieczka nad morze”

UPDATE zadania
set wpis = 'Wycieczka nad morze'
where dataZadania = '2020-07-18';