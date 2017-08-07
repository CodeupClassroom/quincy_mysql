USE codeup_test_db;

INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES ('Bob', 'Bobberson', 'it\'s an ill wind that blows no minds');

INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES ('Douglas', 'Adams', 'Time is an illusion. Lunchtime doubly so.'),
       ('Mark',    'Twain',    'Clothes make the man. Naked people have little or no influence on society.'),
       ('Kurt',    'Vonnegut', 'The universe is a big place, perhaps the biggest.');

-- how to see all the entries on a table
-- SELECT * from quotes;

