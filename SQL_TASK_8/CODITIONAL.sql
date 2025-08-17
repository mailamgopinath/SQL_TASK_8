/*Function with Parameters + Conditional Logic

A function that categorizes an employee’s salary level:

< 50,000 → "Low"

50,000 - 70,000 → "Medium"

> 70,000 → "High"

*/

DELIMITER $$

CREATE FUNCTION SalaryLevel(p_emp_id INT)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE empSalary DECIMAL(10,2);
    DECLARE level VARCHAR(20);

    -- Get salary
    SELECT salary INTO empSalary
    FROM Employees
    WHERE emp_id = p_emp_id;

    -- Apply conditional logic
    CASE 
        WHEN empSalary < 50000 THEN 
            SET level = 'Low';
        WHEN empSalary BETWEEN 50000 AND 70000 THEN 
            SET level = 'Medium';
        ELSE 
            SET level = 'High';
    END CASE;

    RETURN level;
END $$

DELIMITER ;


SELECT name, department, SalaryLevel(emp_id) AS Salary_Category
FROM Employees;


