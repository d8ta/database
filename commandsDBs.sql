drop database firsDB;
show tables;

create database Games;
use Games;
create table game (
	game_Nr Integer not null,
	gamename varchar (100) not null,
	jahr year
);

insert into game 
(game_Nr, gamename, jahr)
values
(2, "Half life 2", 2002),
(3, "SWTOR", 2012);

update game
set gamename = "Star Wars: The Old Republic"
where game_nr = 3;
