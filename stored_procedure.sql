-- DELIMITER //

-- CREATE PROCEDURE list_employees()
-- BEGIN
--     SELECT * FROM employees;
-- END //

-- DELIMITER ;

DELIMITER //

CREATE PROCEDURE get_employee_by_id(IN emp_id INT)
BEGIN
    SELECT * FROM employees WHERE emp_id;
END //

DELIMITER ;

CALL get_employee_by_id(3);

DROP PROCEDURE IF EXISTS get_employee_by_id;