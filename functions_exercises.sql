-- Update your query for 'Irena', 'Vidya', or 'Maya'. 
-- Use count(*) and GROUP BY to find 
-- the number of employees for each gender with those names

SELECT CONCAT(COUNT(*), ' ', gender) 
FROM employees 
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
 

-- Update your queries for employees whose names start and end with 'E'. 
-- Use concat() to combine their first and 
-- last name together as a single column in your results

SELECT CONCAT(first_name, ' ', last_name) FROM employees 
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E'
ORDER BY emp_no DESC;


-- For your query of employees born on Christmas 
-- and hired in the 90s, use datediff() 
-- to find how many days they have been working at the company 
SELECT CONCAT(first_name, ' ', last_name) AS 'Name', datediff(NOW(), hire_date) / 365
FROM employees 
WHERE hire_date > '199%'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC; 



-- Add a GROUP BY clause to your query for last names 
-- with 'q' and not 'qu' to find the 
-- distinct combination of first and last names

 -- Add a count() to your results and use ORDER BY 
 -- to make it easier to find employees 
 -- whose unusual name is shared with others

SELECT *, COUNT(*) FROM employees 
WHERE last_name NOT LIKE '%qu%'
  AND last_name LIKE '%q%'
GROUP BY first_name, last_name
ORDER BY COUNT(*) DESC;

