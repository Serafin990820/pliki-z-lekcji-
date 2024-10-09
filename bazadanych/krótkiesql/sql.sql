
1. Utwórz użytkowników jeden i dwa (bez hasła).

 A. Nadaj uprawnienia wprowadzania, zmiany i usuwania danych w całej bazie komis dla użytkownika jeden

B. nadaj wszystkie uprawnienia do tabeli Auta użytkownikowi dwa

C. odbierz użytkownikowi jeden prawa usuwania danych 

D. odbierz wszystkie uprawnienia użytkownikowi dwa do tabeli 
Auta

2. 

A. Zaloguj się jako użytkownik jeden i ustaw hasło 'zaq1@WSX'
mysql -u jeden;
SET PASSWORD = PASSWORD('zaq1@WSX');

B. Ustaw hasło dla użytkownika dwa na 'zaq1@WSX'
mysql -u root;
SET PASSWORD FOR dwa = PASSWORD('zaq1@WSX');

C. z poziomu konta root zmień hasło dla użytkownika jeden na 'haslo'
mysql -u root;
SET PASSWORD FOR 'jeden' = PASSWORD('haslo');
