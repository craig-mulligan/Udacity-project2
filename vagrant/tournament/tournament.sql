-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Keep player data and matches data seperate
CREATE TABLE players(id SERIAL, name TEXT, primary key(id));

CREATE TABLE matches( id SERIAL primary key,
					 winner INT,
					 loser INT,
					 foreign key(winner) references players(id),
					 foreign key(loser) references players(id) 
					 );