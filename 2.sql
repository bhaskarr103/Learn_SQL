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

-- ALTERTABLE - add column
ALTER TABLE student
ADD COLUMN roll_no INT;

-- ALTER TABLE - drop column
ALTER TABLE student
DROP COLUMN roll_no;

-- Modify the datatype of a column in MySQL
ALTER TABLE your_table_name
MODIFY COLUMN your_column_name new_data_type;


-- Rename 'old_table' to 'new_table' in MySQL
ALTER TABLE old_table
RENAME TO new_table;
