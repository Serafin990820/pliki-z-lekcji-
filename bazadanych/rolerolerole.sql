7. Dodaj rolę usuwanie

CREATE ROLE usuwanie

8. Nadaj prawo do usuwania danych z wszystkich tabel dla roli usuwanie

GRANT DELETE ON 5e2_perfumy.* to usuwanie;

9. Dodaj użytkownika selektor oraz edytor do roli usuwanie

GRANT usuwanie to 'selektor';
GRANT usuwanie to 'edytor';

10. Sprawdź czy selektor oraz edytor mają prawa do usuwania danych z bazy (usuń skład perfum p_2 oraz p_3)


11. Odmów selektorowi praw do usuwania (deny) z tabeli skład i sprawdź ponownie jego prawa do usuwania

revoke usuwanie on 5e2_perfumy.sklad to selektor; 




Utwórz użytkowników: dev1 z hasłem 1234 oraz read1, write1 bez hasła  (dev2, read2, write2)

CREATE USER dev2 identified by '1234';
CREATE USER write2;
CREATE USER read2;

Zmodyfikuj ustawienia kont:
A. hasło dla użytkownika dev powinno wygasnąć za miesiąc

ALTER USER 'dev2' 
password expire interval 31 day;

B. zablokuj konto read

ALTER USER 'read2' account lock;

C. ustaw hasło dla konta write

ALTER USER 'write2'@'localhost'
IDENTIFIED by '1234';

D. użytkownik write powinien mieć prawo tylko do 100 operacji UPDATE na godzinę

ALTER USER write WITH
MAX_UPDAES_PER_HOUR 100;


E. odblokuj konto read

ALTER USER 'read2' account unlock;





Określ uprawnienia:
Nadaj wszystkie prawa dla użytkownika dev dla wszystkich tabel w bazie crm

GRANT ALL on crm.* to dev;

Daj prawo użytkownikowi write do modyfikowania struktury tabel w bazie crm

GRANT MODIFY ON crm.* to write;

daj prawo użytkownikowi read do przeglądania oraz usuwania danych w tabeli customers w bazie crm

Odbierz użytkownikowi read prawo do przeglądania danych w tabeli customers
Zmień nazwę użytkownika dev na admin

Ustaw hasło użytkownikowi read '1234' (użyj set password)

Sprawdź uprawnienia:
użytkownika admin
użytkownika write
Utwórz role write_customers oraz read_customers

Nadaj uprawnienia rolom:
write_customers prawa do wstawiania oraz modyfikowania i usuwania wybranych rekordów
read_customers z prawem do przeglądania tabeli customers

Przypisz role użytkownikom:
write_customers dla write
read_customers dla read

Sprawdź uprawnienia:
użytkownika write
użytkownika read (czy ma prawo do usuwania danych?)

Zaloguj się i sprawdź uprawnienia. Jeśli jest taka potrzeba użyj SET ROLE i/lub SET DEFAULT ROLE

usuń rolę write_customers

Usuń użytkownika read