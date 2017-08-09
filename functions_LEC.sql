
-- STRING FUNCTIONS (string manipulation) --

-- CONCAT() - used to concatenate strings together

SELECT 'Something';

SELECT CONCAT('Hello', ' ', 'World');

SELECT CONCAT(first_name, ' ', last_name, ' was born ', birth_date), emp_no
FROM employees;


-- LENGTH() - used to find the length of a string
SELECT LENGTH('supercalifragilisticexpialidocious');

-- LEFT() - used to return a given number of characters from a string
SELECT LEFT('supercalifragilisticexpialidocious', 5);

-- UPPER() - used to return an uppercased version of string
SELECT UPPER('test');

-- COMBINING FUNCTIONS
SELECT UPPER(CONCAT("Hello", TRIM(" world")));

-- TRIM() - used to trim leading and trailing white space
SELECT TRIM('  test  ');

-- SUBSTR() - used to return a portion of a string
SELECT SUBSTR('test', 2);








-- DATE FUNCTIONS (return units of time) --

-- NOW()
SELECT NOW();

-- CURDATE()
SELECT CURDATE();

-- CURTIME()
SELECT CURTIME();

-- UNIX_TIMESTAMP()


SELECT CONCAT(
    'Teaching people to code for ',
    UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
    ' seconds'
);




-- AGGREGATE FUNCTIONS (info about results) --

-- /////// COUNT()

-- count all table records
SELECT COUNT(*) FROM employees;

-- count total filtered results
SELECT COUNT(*) 
FROM employees
WHERE birth_date = '1953-09-02';

-- count each unique instance of a value
SELECT COUNT(DISTINCT birth_date)
FROM employees;


-- count each set of identical results
SELECT birth_date, COUNT(birth_date)
FROM employees
GROUP BY birth_date;


-- MAX() / MIN()
SELECT MAX(birth_date) FROM employees;
SELECT MIN(birth_date) FROM employees;

-- SUM()

SELECT salary, from_date
FROM salaries
WHERE emp_no = 10001
ORDER BY from_date ASC;

SELECT SUM(salary)
FROM salaries
WHERE emp_no = 10001
ORDER BY from_date ASC;



-- AVG()

SELECT AVG(salary)
FROM salaries;





-- MATH FUNCTIONS (perform calculations) --

-- ROUND()
SELECT ROUND(AVG(salary))
FROM salaries;

-- COS()

SELECT COS(2);

-- RAND()
SELECT RAND();




