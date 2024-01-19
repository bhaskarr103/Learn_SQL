CREATE DATABASE bhaskardb;

USE bhaskardb;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(255)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(255),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Inserting values into the 'departments' table
INSERT INTO departments (department_id, department_name)
VALUES
    (1, 'HR'),
    (2, 'IT'),
    (3, 'Marketing');

-- Inserting values into the 'employees' table
INSERT INTO employees (employee_id, employee_name, department_id)
VALUES
    (101, 'John Doe', 1),
    (102, 'Jane Smith', 2),
    (103, 'Bob Johnson', 3),
    (104, 'Alice Brown', 1),
    (105, 'Charlie Green', 2);
    
    
-- INNER JOIN

SELECT *
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id;

-- LEFT JOIN

SELECT *
FROM employees
LEFT JOIN departments ON employees.department_id = departments.department_id;

-- RIGHT JOIN

SELECT *
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.department_id;

-- FULL OUTER JOIN

SELECT *
FROM employees
FULL OUTER JOIN departments ON employees.department_id = departments.department_id;

-- CROSS

SELECT *
FROM employees
CROSS JOIN departments;





