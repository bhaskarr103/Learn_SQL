-- Use the created Schema
USE learnSQL;

-- Create a table in the Schema
CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255)
);

-- Insert data in the tables.
INSERT INTO student VALUES ('1','bhaskar','bhaskar@mail'),
('2','ravi','ravi@mail'),
('3','suraj','suraj@mail');


-- Retrieve data from one or more tables.
-- SELECT column1, column2 FROM table_name WHERE condition;
SELECT username FROM student WHERE id='2';
-- 'ravi'

-- Add new records to a table.
-- INSERT INTO table_name (column1, column2) VALUES (value1, value2);
INSERT INTO student (id, username, email) VALUES (4, 'viraj', 'viraj@mail');


-- Modify existing records in a table.
-- UPDATE table_name SET column1 = value1 WHERE condition;
UPDATE student SET id = 23 WHERE id='3';






