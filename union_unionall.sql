

CREATE TABLE employees (

employee_id INT AUTO_INCREMENT PRIMARY KEY,

first_name VARCHAR(50),

last_name VARCHAR(50), department VARCHAR(50),

hire_date DATE,

salary DECIMAL(10, 2),

is_active TINYINT(1)

);




INSERT INTO employees (first_name, last_name, department, hire_date, salary, is_active) VALUES

('Alice', 'Johnson', 'Engineering', '2020-03-15', 75000.00, 1),

('Bob', 'Smith', 'Marketing', '2019-07-01', 68000.00, 1),

('Charlie', 'Davis', 'Finance', '2021-01-20', 72000.00, 1),
 
('Dana', 'Lee', 'Human Resources', '2018-11-05', 66000.00, 0), 

('Evan', 'Taylor', 'Engineering', '2022-06-10', 80000.00, 1), 

('Fiona', 'Clark', 'Sales', '2023-02-25', 62000.00, 1),

('George', 'Wright', 'IT Support', '2017-09-12', 59000.00, 0);

select * from employees;




-- Select all Active employees
SELECT first_name, last_name, 'Active' AS status
FROM employees
WHERE is_active = 1

UNION

-- Select all Inactive employees
SELECT first_name, last_name, 'Terminated' AS status
FROM employees
WHERE is_active = 0;


(SELECT first_name, department, salary, 'High Earner' AS category
 FROM employees
 ORDER BY salary DESC
 LIMIT 1)

UNION

(SELECT first_name, department, salary, 'Low Earner' AS category
 FROM employees
 ORDER BY salary ASC
 LIMIT 1);


-- Query 1: Engineering Department
SELECT first_name, department, salary
FROM employees
WHERE department = 'Engineering'

UNION ALL

-- Query 2: High Salaries
SELECT first_name, department, salary
FROM employees
WHERE salary > 70000;









