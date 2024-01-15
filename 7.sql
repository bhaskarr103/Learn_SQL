USE learnSQL;

-- MAX AGGREGATE FUNCTIONS.

CREATE TABLE students (
    e_id INT PRIMARY KEY,
    e_name VARCHAR(255),
    dept VARCHAR(255),
    salary DECIMAL(10 , 2 )
);

INSERT INTO students VALUES 
(1,'RAM','HR',10000),
(2,'AMRIT','MARKET',20000),
(3,'RAVI','HR',30000),
(4,'NITIN','MARKET',40000),
(5,'VARUN','IT',50000);

--------------------------------------------------------------
--------------------------------------------------------------


-- DISPLAY MAXIMUM SALARY

SELECT MAX(salary) FROM students;

-- DISPLAY EMPLOYEES NAME WHO'S TAKING MAXIMUM SALARY.

SELECT e_name FROM students
WHERE salary = (SELECT MAX(salary) FROM students);


-- DISPLAY SECOND HIGHEST SALARY.

SELECT MAX(salary) FROM students
WHERE salary <> (SELECT MAX(salary) FROM students);


-- DISPLAY EMPLOYEES NAME WHO'S TAKING SECOND HIGHEST SALARY.

SELECT 
    e_name
FROM
    students
WHERE
    salary IN (SELECT 
            MAX(salary)
        FROM
            students
        WHERE
            salary <> (SELECT 
                    MAX(salary)
                FROM
                    students));

