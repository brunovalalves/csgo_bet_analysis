create table matches (id int not null primary key, game varchar(255) not null , odd_team1 numeric, odd_team2 numeric);

alter table matches add column winner int null;

alter table matches add constraint ck_winner check (winner in (1,2));

/* select sum(odd_resultado) from (select *, 
  case 
   when odd_team2 > odd_team1 and winner = 2 then odd_team2 
   when odd_team1 > odd_team2 and winner = 1 then odd_team1
   else 0
  end as odd_resultado
   from matches
 where winner is not null) as underdog_winner;
 
select sum(odd_resultado) from (select *, 
  case 
   when odd_team2 < odd_team1 and winner = 2 then odd_team2 
   when odd_team1 < odd_team2 and winner = 1 then odd_team1
   else 0
  end as odd_resultado
   from matches
 where winner is not null) as favorite_winner; */