-- ================================= UPDATE STATEMENTS

-- create books table (this code would normally be in a seperate migration file)

USE test_db;

DROP TABLE IF EXISTS books;

CREATE TABLE IF NOT EXISTS books  (

    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50) NOT NULL DEFAULT 'Unknown',
    date_published DATE NOT NULL,
    description TEXT,
    bestseller_weeks INT NOT NULL DEFAULT 0,
    PRIMARY KEY (id)

);


-- this code would normally be in a seperate database seeder file

TRUNCATE books;

INSERT INTO books (title, author, date_published, description, bestseller_weeks)
VALUES 
("To Kill a Mockingbird", "Harper Lee", "1960-07-11", "This is a book about birds.", 0),
("The Great Gatsby", "F. Scott Fitzgerald", "1925-04-10", "This is a book about a great thing.", 10),
("Harry Potter and the Sorcerer`s Stone", "J.K. Rowling", "1997-06-26", "This is a book about wizards.", 70),
("The Hobbit", "J.R.R. Tolkien", "1937-07-21", "This is a book about hobbits.", 5);



-- Update values 
**Test alterations first with SELECT statements** 


-- Updating a single record
SELECT * FROM books
WHERE id = 2;

UPDATE books
SET author = 'bob'
WHERE id = 2;

-- Update single record multiple columns
SELECT * FROM books
WHERE id = 1\G

UPDATE books
SET author = 'Steve', title = 'The Facts of Life'
WHERE id = 1\G



-- Update single value in multiple records
SELECT * FROM books
WHERE id < 3\G

UPDATE books
SET author = 'George'
WHERE id < 3\G

-- Leaving off Where Clause (DANGEROUS!!!)
UPDATE books
SET author = 'George';




