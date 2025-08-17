CREATE DATABASE myDataBase;

USE myDataBase;

/*                    CREATING A TABLE                   */

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

/*                          INSERTING THE DATA TO THE TABLE                 */

INSERT INTO Employees (name, department, salary) VALUES
('Ravi Kumar', 'HR', 45000),
('Priya Sharma', 'IT', 60000),
('Amit Verma', 'Finance', 52000),
('Sneha Reddy', 'IT', 70000),
('Karthik Iyer', 'Marketing', 48000);

/*                       FETCHIG ALL THE COLUMNS FROM THE TABLE              */

SELECT * FROM Employees;


