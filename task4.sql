create database task3
use task3

-----creation of Table------
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    job_title VARCHAR(50),
    salary DECIMAL(10,2)
);

--------Inserting values to table ----------
INSERT INTO employees (emp_id, name, department, job_title, salary) VALUES
(1, 'Amit', 'HR', 'HR Manager', 55000),
(2, 'Neha', 'HR', 'Recruiter', 35000),
(3, 'Raj', 'IT', 'Developer', 60000),
(4, 'Simran', 'IT', 'Developer', 62000),
(5, 'Vikas', 'IT', 'Tester', 40000),
(6, 'Anjali', 'Finance', 'Accountant', 45000),
(7, 'Rohit', 'Finance', 'Analyst', 48000),
(8, 'Priya', 'Finance', 'Manager', 70000),
(9, 'Karan', 'Sales', 'Sales Executive', 30000),
(10, 'Meena', 'Sales', 'Sales Manager', 65000);

-----viewing values ---------
select * from employees

-----Aggregate Queries------
1) sum
SELECT  SUM(salary) AS total_salary
FROM employees

2) avg salary
SELECT  AVG(salary) AS avg_salary
FROM employees

3)max and min function
SELECT MAX(salary) AS highest_salary, MIN(salary) AS lowest_salary
FROM employees;


----Filtering using Group by and having Clause
-- Departments with more than 2 employees
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

-- Departments where average salary is greater than 50,000
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;




