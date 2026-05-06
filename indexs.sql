CREATE INDEX idx_lastname ON employees(last_name);



CREATE UNIQUE INDEX idx_email ON employees(email);


CREATE INDEX idx_fullname ON employees(last_name, first_name);


EXPLAIN SELECT * FROM employees WHERE last_name = 'Johnson';

-- See all indexes on a table
SHOW INDEX FROM employees;

-- Remove an index
ALTER TABLE employees DROP INDEX idx_lastname;


