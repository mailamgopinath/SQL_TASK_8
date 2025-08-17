/*                             Procedure with Parameters + Conditional Logic       

A procedure to give a bonus to employees depending on their department.

IT employees → 10% bonus

HR employees → 5% bonus

Others → 3% bonus                 

 */

DELIMITER $$

CREATE PROCEDURE GiveBonus(IN p_emp_id INT)
BEGIN
    DECLARE empDept VARCHAR(50);
    DECLARE empSalary DECIMAL(10,2);
    DECLARE bonus DECIMAL(10,2);

    -- Get department and salary of employee
    SELECT department, salary 
    INTO empDept, empSalary
    FROM Employees
    WHERE emp_id = p_emp_id;

    -- Apply conditional logic
    IF empDept = 'IT' THEN
        SET bonus = empSalary * 0.10;
    ELSEIF empDept = 'HR' THEN
        SET bonus = empSalary * 0.05;
    ELSE
        SET bonus = empSalary * 0.03;
    END IF;

    -- Show result
    SELECT p_emp_id AS Employee_ID, empDept AS Department, empSalary AS Salary, bonus AS Bonus;
END $$

DELIMITER ;

CALL GiveBonus(2);  -- For employee with emp_id = 2

