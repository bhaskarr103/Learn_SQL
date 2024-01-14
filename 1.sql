-- Create a new Schema
CREATE DATABASE learnSQL;

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

/* he DROP statement is used to delete an entire table from the database, along with all its data,
indexes, triggers, and other associated objects. Be careful when using DROP because it permanently removes the table and its contents. */

DROP TABLE student;

/* The TRUNCATE statement is used to delete all the rows from a table but retains the structure of the table for future use.
It is a more efficient way of deleting all records compared to using DELETE, especially for large tables.
Like DROP, be cautious when using TRUNCATE as it removes all data from the table. */

TRUNCATE TABLE student;

