/*                             CREATING A STORED PROCEDURE                        */

DELIMITER $$

CREATE PROCEDURE GetEmployeesByDept(IN p_department VARCHAR(50))
BEGIN
    SELECT emp_id, name, salary
    FROM Employees
    WHERE department = p_department;
END $$

DELIMITER ;

CALL GetEmployeesByDept('IT');
