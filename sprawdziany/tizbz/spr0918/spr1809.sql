CREATE DATABASE mateusz_baran;

CREATE USER szef identified by '1234';

GRANT select on mateusz_baran.* to szef;


CREATE USER doradca identified by 'zaq1@WSX';
GRANT alter, delete, insert on mateusz_baran.lowisko to doradca;
GRANT alter, delete, insert on mateusz_baran.ryby to doradca;

REVOKE alter on mateusz_baran.lowisko from doradca;

SELECT od_miesiaca, do_miesiaca
from okres_ochronny
    inner join ryby on ryby.id = okres_ochronny.Ryby_id
WHERE ryby.nazwa = 'Szczupak';

DELETE from ryby 
where nazwa = 'Szczupak';

GRANT SELECT ON mateusz_baran.ryby to doradca;

ALTER USER szef identified by 'asdf';

CREATE ROLE przegladanie;

GRANT SELECT ON mateusz_baran.* to przegladanie;

GRANT przegladanie to szef;

DELETE USER doradca;

