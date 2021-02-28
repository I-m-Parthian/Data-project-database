-- Initiate deliveries table

-- create schema for the table
CREATE TABLE deliveries(
    id BIGSERIAL PRIMARY KEY,
    match_id SMALLSERIAL,
    inning SERIAL,
    batting_team VARCHAR(100),
    bowling_team VARCHAR(100),
    over SMALLSERIAL,
    ball SMALLSERIAL,
    batsman VARCHAR(100),
    non_striker VARCHAR(100),
    bowler VARCHAR(100),
	is_super_over BOOLEAN,
	wide_runs SMALLSERIAL,
	bye_runs SMALLSERIAL,
	legbye_runs SMALLSERIAL,
	noball_runs SMALLSERIAL,
	penalty_runs SMALLSERIAL,
	batsman_runs SMALLSERIAL,
	extra_runs SMALLSERIAL,
	total_runs SMALLSERIAL,
	player_dismissed VARCHAR(100),
	dismissal_kind VARCHAR(100),
	fielder varchar(100)
);

-- set path variable
\set deliveries_path `pwd` '/dataset/deliveries.csv'

-- insert data from csv into the table
COPY deliveries(match_id, inning, batting_team, bowling_team, over, ball, batsman, non_striker, bowler, is_super_over, wide_runs, bye_runs, legbye_runs, noball_runs, penalty_runs, batsman_runs, extra_runs, total_runs, player_dismissed, dismissal_kind, fielder)
FROM :'deliveries_path'
DELIMITER ','
CSV HEADER;




-- Initiate matches table

CREATE TABLE matches(
    match_id SMALLSERIAL PRIMARY KEY,
    season SMALLSERIAL,
    city VARCHAR(100),
    date DATE,
    team1 VARCHAR(100),
    team2 VARCHAR(100),
    toss_winner VARCHAR(100),
	toss_decision VARCHAR(100),
	result VARCHAR(100),
	dl_applied BOOLEAN,
	winner VARCHAR(100),
	win_by_runs SMALLSERIAL,
	win_by_wickets SMALLSERIAL,
	player_of_match VARCHAR(100),
	venue VARCHAR(100),
	umpire1 VARCHAR(100),
	umpire2 VARCHAR(100),
	umpire3 VARCHAR(100) 
);

\set matches_path `pwd` '/dataset/matches.csv'

COPY matches
FROM :'matches_path'
DELIMITER ','
CSV HEADER;


-- Initiate umpires table

CREATE TABLE umpires(
    ump_id SMALLSERIAL PRIMARY KEY,
    umpire VARCHAR(100) NOT NULL,
    nationality VARCHAR(100) NOT NULL,
    first_officiated SMALLSERIAL NOT NULL,
    last_officiated SMALLSERIAL NOT NULL,
    No_of_matches SMALLSERIAL NOT NULL
);

\set umpires_path `pwd` '/dataset/umpires.csv'

COPY umpires(umpire, nationality, first_officiated, last_officiated, no_of_matches)
FROM :'umpires_path'
DELIMITER ','
CSV HEADER;