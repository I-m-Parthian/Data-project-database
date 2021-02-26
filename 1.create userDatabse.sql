-- Q. Write a SQL script that creates a new user, and database. Make the user the owner of the db.

-- Run these scripts inside the sql prompt with any user
-- having privilage of CREATEDB AND CREATE ROLE

CREATE USER parth WITH PASSWORD 'user123' CREATEDB;
CREATE DATABASE ipl OWNER parth;