/*                                  CREATING A FUNCTION                          */

DELIMITER $$

CREATE FUNCTION AnnualSalary(p_emp_id INT)
RETURNS DECIMAL(12,2)
DETERMINISTIC
BEGIN
    DECLARE annual DECIMAL(12,2);

    SELECT salary * 12
    INTO annual
    FROM Employees
    WHERE emp_id = p_emp_id;

    RETURN IFNULL(annual, 0);
END $$

DELIMITER ;

SELECT name, department, AnnualSalary(emp_id) AS annual_salary
FROM Employees;

