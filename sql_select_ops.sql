USE schooldb;


SELECT * FROM student;


SELECT name, grade FROM student;


SELECT * FROM student WHERE grade = '10th';


SELECT * FROM student WHERE age > 16;

-- This will not work as expected
SELECT * FROM student WHERE date_of_birth IS NULL;


SELECT * FROM student WHERE date_of_birth IS NOT NULL;

-- combining statements
SELECT * FROM student WHERE grade = '10th' AND age > 16;

SELECT * FROM student WHERE grade = '9th' OR grade = '12th';

SELECT * FROM student 
WHERE (grade = '10th' OR grade = '11th') AND age >= 16;



SELECT * FROM student ORDER BY age ASC;

SELECT * FROM student ORDER BY name DESC;


SELECT * FROM student LIMIT 5;


SELECT * FROM student LIMIT 2, 5;



-- Using Wildcards with LIKE
SELECT * FROM student
WHERE name LIKE 'A%';

