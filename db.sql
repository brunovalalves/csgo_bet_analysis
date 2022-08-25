create table matches (id int not null primary key, game varchar(255) not null , odd_team1 numeric, odd_team2 numeric);

alter table matches add column winner int null;

alter table matches add constraint ck_winner check (winner in (1,2));