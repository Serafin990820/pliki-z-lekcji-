LOAD DATA INFILE 'C:\\Users\\Mateusz_Baran\\Downloads\\panstwa.txt'
INTO TABLE panstwa
FIELDS TERMINATED BY  '\t'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
