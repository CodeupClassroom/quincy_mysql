-- Now add a condition to find everybody with those names who is also male — 441 rows, 
SELECT *
from employees
where (first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya')
   AND gender = 'M';

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT *
from employees
where last_name like 'E%' OR last_name like '%E';

-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT *
from employees
where last_name like 'E%' AND last_name like '%E';

-- Find all employees hired in the 90s and born on Christmas — 362 rows.
select *
from employees where hire_date like '199%'
AND birth_date like '%-12-25';
 
-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
select *
from employees
where last_name like '%q%'
AND last_name not like '%qu%';

