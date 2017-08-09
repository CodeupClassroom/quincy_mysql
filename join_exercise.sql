--  write a query that shows each department along with the name of the current manager for that department.

select departments.dept_name, concat(employees.first_name, " ", employees.last_name) as "current manager"
from employees
join dept_manager on dept_manager.emp_no = employees.emp_no
join departments on departments.dept_no = dept_manager.dept_no
where dept_manager.to_date > now();

-- Find the name of all departments currently managed by women.
select concat(employees.first_name, " ", employees.last_name) as "Manager Name", departments.dept_name as "Department Name"
from employees
join dept_manager on dept_manager.emp_no = employees.emp_no
join departments on departments.dept_no = dept_manager.dept_no
where dept_manager.to_date > now()
AND employees.gender = "F";

-- Find the current titles of employees currently working in the Customer Service department.
select titles.title as "Title", count(*) as "Count"
from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join titles on titles.emp_no = dept_emp.emp_no
where dept_emp.to_date > now()
AND titles.to_date > now()
and departments.dept_name = "Customer Service"
group by titles.title;


-- Find the current salary of all current managers.
select departments.dept_name, concat(employees.first_name, " ", employees.last_name) as "Manager", salaries.salary
from salaries
join dept_manager ON dept_manager.emp_no = salaries.emp_no
join employees on employees.emp_no = dept_manager.emp_no
join departments on departments.dept_no = dept_manager.dept_no
where dept_manager.to_date > now()
AND salaries.to_date > now();


-- Find the names of all current employees, their department name, and their current manager's name.
select concat(e.first_name, " ", e.last_name) as "Employee Name", departments.dept_name as "Department Name", concat(managers.first_name, " ", managers.last_name) as "Manager Name"
from employees as e
join dept_emp on dept_emp.emp_no = e.emp_no
join departments on departments.dept_no = dept_emp.dept_no
join dept_manager on dept_manager.dept_no = departments.dept_no
join employees as managers on dept_manager.emp_no = managers.emp_no
where dept_emp.to_date > now()
and dept_manager.to_date > now();


