-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT Employees.emp_no, 
	Employees.last_name, 
	Employees.first_name,
	Employees.sex,
	Salaries.salary
FROM Employees
INNER JOIN Salaries ON
Employees.emp_no = Salaries.emp_no;

-- Test that the above is right
SELECT * FROM employees;
-- WHERE last_name = 'Zallocco';


--2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT employees.emp_no,
	employees.first_name,
	employees.last_name
FROM employees
WHERE hire_date > 12/31/1985 and hire_date < 1/1/1987;


SELECT employees.emp_no,
	employees.first_name,
	employees.last_name,
FROM employees
WHERE hire_date > '12/31/1985' and hire_date < '01/01/1987';

