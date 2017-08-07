USE codeup_test_db;

-- drop the table if it already exists
DROP TABLE IF EXISTS albums;

-- create the albums table
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(128),
    name VARCHAR(128),
    release_date YEAR(4),
    sales FLOAT(10, 2),
    genre VARCHAR(128),
    PRIMARY KEY (id)
);