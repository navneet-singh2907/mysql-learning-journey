CREATE DATABASE join_school;
use join_school;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL
    );
    
    
    
CREATE TABLE marks (
    mark_id INT AUTO_INCREMENT PRIMARY KEY,
    subject VARCHAR(50) NOT NULL,
    score INT NOT NULL,
    student_id INT, -- This is the link to the students table
    FOREIGN KEY (student_id) REFERENCES students(id)
        ON DELETE CASCADE
);
		

INSERT INTO students (student_name,id) VALUES 
('Navneet',1), 
('Arjun',2), 
('Sara',3),
('Vikram',4); -- Vikram will have no marks

select * from students;


INSERT INTO marks (student_id, subject, score) VALUES 
(1, 'Mathematics', 95), -- Navneet
(1, 'Physics', 88),     -- Navneet
(2, 'Mathematics', 76), -- Arjun
(3, 'Biology', 92),     -- Sara
(NULL, 'Chemistry', 85); -- A mark with no student assigned


SELECT students.student_name, marks.subject, marks.score
FROM students
INNER JOIN marks ON students.id = marks.student_id;

SELECT students.student_name, marks.subject, marks.score
FROM students
RIGHT JOIN marks ON students.id = marks.student_id;

SELECT students.student_name, marks.subject
FROM students
CROSS JOIN marks;


SELECT students.student_name, marks.subject, marks.score
FROM students
LEFT JOIN marks ON students.id = marks.student_id;







