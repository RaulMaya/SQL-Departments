--- Creating and Showing Departments Table
CREATE TABLE departments(
	dept_no VARCHAR(20) PRIMARY KEY,
	dept_name VARCHAR(20)
);

SELECT * FROM departments;

--- Creating and Showing Titles Table
CREATE TABLE titles (
	title_id VARCHAR(20) PRIMARY KEY,
	title VARCHAR(20)
);

SELECT * FROM titles;

--- Creating and Showing Salaries Table
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT
);

SELECT * FROM salaries;

--- Creating and Showing Employees Table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title VARCHAR(20),
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(20),
	hire_date DATE,
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

SELECT * FROM employees;

--- Creating and Showing Department Employees Table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(20),
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

--- Creating and Showing Department Managers Table
CREATE TABLE dept_manager (
	dept_no VARCHAR(20),
	emp_no INT,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;