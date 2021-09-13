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
	
-- Select the department number, department name, employee number, last name, and first name of all managers of each department
SELECT
	departments.dept_no,
	departments.dept_name,
	employees.emp_no,
	employees.last_name,
	employees.first_name
FROM
	dept_manager
INNER JOIN departments ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no;

-- Select the employee number, last name, first name, and department of each employee, ordered by employee number
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM
	dept_emp
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
ORDER BY employees.emp_no;

-- Select first name, last name, birth date, and sex of all employees whose first name is "Hercules" and last name begins with a "B"
SELECT
	*
FROM
	employees
WHERE
	employees.first_name = 'Hercules' AND employees.last_name LIKE 'B%';

-- Select employee number, last name, first name, and department name of all employees in the 'Sales' OR the 'Development' department, ordered by employee number
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM
	dept_emp
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE
	departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
ORDER BY employees.emp_no;

-- Count the number of employees, grouped by last name
SELECT
	employees.last_name,
	COUNT(*)
FROM
	employees
GROUP BY
	employees.last_name;
