
create database uwierz;

use uwierz;

create table uwierzytelnieni_uzytkownicy (
        uzytkownik      varchar(20) not null,
        haslo           varchar(40) not null,
        primary key     (uzytkownik)
);

insert into uwierzytelnieni_uzytkownicy values 
  ('uzytkownik', 'haslo');

insert into uwierzytelnieni_uzytkownicy values
  ( 'testowy', sha1('haslo') );

grant select on uwierz.*
to uwierzytel@localhost 
identified by 'uwierzytel';

flush privileges;