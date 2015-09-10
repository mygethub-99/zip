-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Drop tournament if old one exists
DROP DATABASE IF EXISTS ziplab;

-- Drop any old tables
DROP TABLE IF EXISTS players CASCADE;
DROP TABLE IF EXISTS matches CASCADE;

-- Create a new tournament database
create database ziplab;

-- Connect to the database
 \c ziplab

 --Create zip basic info
	create zip (
		id SERIAL PRIMARY KEY,
		zip INTEGER,
		county TEXT,
		name TEXT,
		submarket TEXT,
		samplecount INTEGER,
		samplebase);

--Create table with zip traffic information
	create table traffic (
		id SERIAL PRIMARY KEY,
		ave_calls INTEGER,
		ave_sms INTEGER,
		ave_mb INTEGER);


