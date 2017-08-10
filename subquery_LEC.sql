-- SUBQUERY - a nested SELECT within another query...

	SELECT column_a, column_b, column_c
	FROM table_a
	WHERE column_a IN (
	    SELECT column_a
	    FROM table_b
	    WHERE column_b = true
	);


-- Joins: often used when data is needed from two or more tables
	-- returns only rows of data
	-- tend to be faster than subqueries
	-- syntax can be more complex

-- Subqueries: often used when the data of one table needs to be filtered by additional tables
	-- may return... 
		-- rows of data (another table)
		-- a single row 
		-- a column of values
		-- a single value (scaler)
	-- tend to be more readable than joins
	-- must be a nested SELECT (can't nest an Insert, for example)
	-- subqueries may be nested infinitely (avoid double nested queries, if possible)


-- Simple Examples

	SELECT dept_no FROM departments WHERE dept_name = 'Customer Service'; -- subquery part

	SELECT *
	FROM departments
	WHERE dept_no = (
		SELECT dept_no FROM departments WHERE dept_name = 'Customer Service'
	);


-- Concatenate the first two employee salaries with the highest level income

	SELECT MAX(salary)
	FROM salaries
	WHERE emp_no = 10001
	GROUP BY emp_no;

	SELECT CONCAT (
		(
			SELECT MAX(salary)
			FROM salaries
			WHERE emp_no = 10001
		), 
		' ',
		(
			SELECT MAX(salary)
			FROM salaries
			WHERE emp_no = 10002
		)
	); 

-- Can achieve same results as an inner join

	-- find first name and last of all department managers
	SELECT e.first_name, e.last_name
	FROM employees AS e
	JOIN dept_manager AS dm
		ON dm.emp_no = e.emp_no;


	SELECT first_name, last_name
	FROM employees
	WHERE emp_no IN (
		SELECT emp_no FROM dept_manager
	);




-- Getting information from multiple tables
	
	SELECT CONCAT (
		(
			SELECT CONCAT(first_name, ' ', last_name)
			FROM employees
			WHERE emp_no = 10001
		), 
		' works in a department called ',
		(
			SELECT dept_name
			FROM departments
			WHERE dept_no = 'd005'
		),
		'.'
	);


-- Department manager employee number of Sales department

	SELECT emp_no
	FROM dept_manager
	WHERE dept_no IN (

		SELECT dept_no
		FROM departments
		WHERE dept_name = 'Sales'

	)
	AND to_date > NOW();


-- Name and hire_date of earliest-hired department employees

	SELECT first_name, hire_date
	FROM employees
	WHERE emp_no IN (

		SELECT emp_no
		FROM dept_emp
		WHERE from_date = (SELECT MIN(from_date) FROM dept_emp)
		
	);


-- all senior engineers from Customer Service department

	SELECT *
	FROM titles
	WHERE title = 'Senior Engineer'
	  AND emp_no IN (

		SELECT emp_no
		FROM dept_emp
		WHERE dept_no IN (
		
			SELECT dept_no
			FROM departments
			WHERE dept_name = 'Customer Service'

		)

	);

