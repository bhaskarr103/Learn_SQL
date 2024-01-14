USE learnSQL;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);


-- Inserting dummy values into the employees table
INSERT INTO employees (employee_id, first_name, last_name, department, salary)
VALUES
  (1, 'John', 'Doe', 'IT', 60000),
  (2, 'Jane', 'Smith', 'Finance', 55000),
  (3, 'Alice', 'Johnson', 'HR', 50000),
  (4, 'Bob', 'Williams', 'IT', 62000),
  (5, 'Charlie', 'Davis', 'Finance', 58000),
  (6, 'Eva', 'Miller', 'Marketing', 54000);


-- The AND operator is used to retrieve rows that meet multiple conditions simultaneously.
/*SELECT column1, column2
FROM your_table
WHERE condition1 AND condition2;
*/

SELECT first_name, last_name
FROM employees
WHERE department = 'IT' AND salary > 50000;


-- The OR operator is used to retrieve rows that meet at least one of the specified conditions.
/*SELECT column1, column2
FROM your_table
WHERE condition1 OR condition2;
*/

SELECT first_name, last_name
FROM employees
WHERE department = 'IT' OR department = 'Finance';


-- The NOT operator is used to retrieve rows that do not meet a specified condition.
/*SELECT column1, column2
FROM your_table
WHERE NOT condition;
*/

SELECT first_name, last_name
FROM employees
WHERE NOT department = 'HR';


-- multiple conditions and parentheses:

SELECT first_name, last_name
FROM employees
WHERE (salary>50000 AND salary<60000) OR (department='HR' AND NOT department='Finance');
