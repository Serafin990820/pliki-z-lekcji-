ALTER TABLE my_contacts
    ADD City varchar(255),
    ADD State char(2);


SELECT location, City, State
FROM my_contacts;


SELECT location, RIGHT(location,2) as State,
SUBSTRING_INDEX(location,",",1) as City
    FROM my_contacts;


UPDATE my_contacts
    SET City = SUBSTRING_INDEX(location,",",1),
    State = RIGHT(location,2)
    WHERE City IS NULL OR State IS NULL;
    
    
SELECT location, City, State
    FROM my_contacts;
    
    
ALTER TABLE my_contacts
    DROP location;

ALTER TABLE my_contacts
    ADD ID INT PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE my_contacts
    MODIFY ID INT FIRST;

SELECT interests
    FROM my_contacts;

ALTER TABLE my_contacts
    ADD i_1 varchar(255),
    ADD i_2 varchar(255),
    ADD i_3 varchar(255);

UPDATE my_contacts
    SET i1 = SUBSTRING_INDEX(interests,",",1);
    
    