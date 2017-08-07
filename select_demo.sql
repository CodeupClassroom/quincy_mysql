USE codeup_test_db;

-- how to get all rows and all columns
SELECT * from albums;

-- SELECT specified columns from a table
SELECT sales from albums;

-- Selecting Multiple columns
SELECT name, artist FROM albums; 

SELECT name, artist, release_date FROM albums;


SELECT * FROM albums WHERE artist = 'Michael Jackson';

SELECT sales from albums where artist = "Bruce Springsteen";

SELECT * from albums where release_date > 1990;

SELECT artist, name from albums where release_date between 1995 AND 1998;

-- How to select with wildcards, % is the wildcard symbol
-- Searches for any record where the artist column as "Bru" in there somewhere
SELECT * from albums where artist like '%Bru%';