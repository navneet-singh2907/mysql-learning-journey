SELECT @@autocommit;


SET autocommit = 0;


SET autocommit = 1;


START TRANSACTION;

UPDATE accounts SET balance = balance - 100 WHERE id = 1;
UPDATE accounts SET balance = balance + 100 WHERE id = 2;

COMMIT;


START TRANSACTION;

UPDATE accounts SET balance = balance - 100 WHERE id = 1;

-- An error or condition check fails here
ROLLBACK;