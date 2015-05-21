-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Keep player data and matches data seperate
CREATE TABLE players 
  ( 
     id   SERIAL, 
     NAME TEXT, 
     PRIMARY KEY(id) 
  ); 

CREATE TABLE matches 
  ( 
     id     SERIAL PRIMARY KEY, 
     winner INT, 
     loser  INT, 
     FOREIGN KEY(winner) REFERENCES players(id), 
     FOREIGN KEY(loser) REFERENCES players(id) 
  ); 