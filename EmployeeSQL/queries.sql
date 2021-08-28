-- Select the employee number, last name, first name, sex, and salary of all employees, ordered by employee number
SELECT
	employees.emp_no,
    employees.last_name,
    employees.first_name,
    employees.sex,
	salaries.salary
FROM
	employees
INNER JOIN salaries ON
	employees.emp_no = salaries.emp_no;
	
-- Select the first name, last name, and hiring date for all employees hired in 1986 
SELECT 
	employees.first_name,
    employees.last_name,
	employees.hire_date
FROM
	employees
WHERE
	employees.hire_date >= '1986-01-01' AND employees.hire_date < '1987-01-01';
	
