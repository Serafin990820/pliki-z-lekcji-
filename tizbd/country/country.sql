CREATE TABLE IF NOT EXISTS countries(
    country_id INT,
    country_name varchar(255),
    region_id INT

);

CREATE TABLE dump_countries as SELECT * FROM countries

ALTER TABLE dump_countries
DROP region_id;

ALTER TABLE countries
MODIFY country_id int AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE countries CHANGE country_id id_country INT AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE countries
MODIFY country_name varchar(255) NOT NULL;

7. Zmodyfikuj tabelę countries tak, aby tylko wybrane cztery kraje (wymyśl jakie) będą mogły byc wpisane do tej tabeli

ADD CONSTRAINT CH_countries CHECK(country_name IN ('Polska', 'Niemcy', 'Dania', 'Włochy'))

8. Usuń tabelę dump_countries

DROP TABLE dump_countries;

9. Utwórz tabelę jobs zawierajacą pola id_job, job_title, min_salary, max_salary, dodaj regułę, która sprawi, że max_salary nie przekroczy limitu 25000

CREATE TABLE jobs (
    id_job int,
    job_title varchar(255),
    min_salary dec(7,2),
    max_salary dec(7,2) CHECK(max_salary<=25000)
);



10. Do tabeli jobs dodaj warunek pilnujący, aby wartości w polu job_title się nie powtarzały

ALTER TABLE jobs
ADD CONSTRAINT UNIQUE (job_title);


11. Do tabeli jobs dodaj wartość domyślną na polu min_salary 8000 oraz wartość domyślną NULL na polu max_salary

ALTER TABLE jobs 
ALTER min_salary SET DEFAULT 8000,
ALTER max_salary SET DEFAULT NULL;

12. Utwórz tabelę job_histry z polami: employee_id, start_date, end_date, job_id  oraz department_id . Określ klucz podstawowy (zakładamy, że pracownik nie pracuje jednocześnie na więcej niż jednym stanowisku) 

CREATE TABLE job_histry (
    employee_id int,
    start_date date,
    end_date date,
    job_id INT,
    department_id INT,
    PRIMARY KEY(job_id,employee_id,start_date)
);

13 zmodyfikuj tabelę job_histry przesuwając pole job_id na początek tabeli

ALTER TABLE job_histry 
MODIFY job_id int FIRST;


14. Do tabeli job_histry dodaj klucz obcy na polu job_id

ALTER TABLE job_histry
ADD 
FOREIGN KEY(job_id) REFERENCES jobs(id_job);

ALTER TABLE jobs
ADD PRIMARY KEY(id_job);

15. Do tabeli job_histry dodaj regułę, która będzie pilnowała wprowadzania daty w formacie rrrr-mm-dd

ALTER TABLE job_histry
ADD CONSTRAINT ch_date CHECK (
    start_date REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'
    AND
    end_date REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'
);

