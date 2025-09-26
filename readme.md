# Task 4: Aggregate Functions and Grouping (SQL Developer Internship)

## 📌 Objective
The goal of this task is to practice:
1. Applying aggregate functions on numeric columns  
2. Using `GROUP BY` to categorize data  
3. Filtering groups using `HAVING`

This strengthens SQL skills in **summarizing and analyzing data**.

---

## 🗂 Table Schema
We use an `employees` table:

```sql
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    job_title VARCHAR(50),
    salary DECIMAL(10,2)
);

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

✅ Task Queries
 Apply Aggregate Functions on Numeric Columns
-- Total salary of all employees
SELECT SUM(salary) AS total_salary FROM employees;

-- Average salary of all employees
SELECT AVG(salary) AS average_salary FROM employees;

-- Highest and lowest salary
SELECT MAX(salary) AS highest_salary, MIN(salary) AS lowest_salary
FROM employees;


 Filter Groups Using HAVING
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

📌 Key Learnings

SUM, AVG, COUNT, MAX, MIN → summarize numeric columns

GROUP BY → groups rows into categories before aggregation

HAVING → filters aggregated groups (while WHERE filters rows before grouping)



