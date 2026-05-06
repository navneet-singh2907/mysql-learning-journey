CREATE VIEW public_employees AS
SELECT first_name, department, salary
FROM employees;


select*from employees;


SELECT * FROM public_employees;


SELECT * FROM public_employees
WHERE department = 'IT';

CREATE OR REPLACE VIEW public_employees AS
SELECT first_name, department
FROM employees;


DROP VIEW public_employees;