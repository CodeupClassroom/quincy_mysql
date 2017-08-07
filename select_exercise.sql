USE codeup_test_db;

-- The name of all albums by Pink Floyd.

SELECT name as "Pink Floyd albums" from albums where artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date from albums where name = "Sgt. Pepper's Lonely Hearts Club Band";

-- The genre for Nevermind
SELECT genre from albums where name = "Nevermind";

-- Which albums were released in the 1990s
SELECT name from albums where release_date BETWEEN 1990 AND 1999;

-- Which albums had less than 20 million certified sales
SELECT name from albums where sales < 20000000;

-- All the albums in the rock genre. Is this all the rock albums in the table?
SELECT name from albums where genre like '%rock%';