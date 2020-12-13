-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, 
	employees.last_name, 
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

-- Test that the above is right
SELECT * FROM employees;
-- WHERE last_name = 'Zallocco';


--2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.hire_date
FROM employees
WHERE hire_date > '1985-12-31' and hire_date < '1987-01-01';


--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT * FROM departments
SELECT * FROM dept_manager

SELECT departments.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.first_name,
	employees.last_name
FROM dept_manager
INNER JOIN departments ON
departments.dept_no = dept_manager.dept_no
LEFT JOIN employees ON
dept_manager.emp_no = employees.emp_no;	



