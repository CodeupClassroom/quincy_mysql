USE employees;

-- List the first 10 distinct last name sorted in descending order. 
SELECT last_name FROM employees
GROUP BY last_name DESC
LIMIT 10;

-- Find your query for employees born on Christmas and hired in the 90s
-- find just the first 5 employees 
SELECT * FROM employees 
WHERE hire_date > '199%'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45; 


-- Update the query to find the tenth batch of results
