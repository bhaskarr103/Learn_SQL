USE bhaskardb;

CREATE TABLE records (
    record_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    description TEXT,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO records (description) VALUES
    ('Entry 1'),
    ('Entry 2'),
    ('Entry 3');
    
-- Select All Records:
SELECT * FROM records;

-- Select Records with Timestamp Condition:
SELECT * FROM records
WHERE timestamp >= '2024-01-01 00:00:00';

-- Update Record:
UPDATE records
SET description = 'Updated Entry'
WHERE record_id = 1;

SELECT * FROM records;

-- Delete Record:
DELETE FROM records
WHERE record_id = 2;


SELECT DATE(timestamp) AS date_portion
FROM records;

SELECT TIME(timestamp) AS time_portion
FROM records;


-- If you want to format the date or time in a specific way, you can use the DATE_FORMAT() function.
-- For example, to format the date as 'dd-mm-yy', you can use:

SELECT DATE_FORMAT(timestamp, '%d-%m-%y') AS formatted_date
FROM records;

SELECT DATE_FORMAT(timestamp, '%H:%i:%s') AS formatted_time
FROM records;

/* In SQL, you can use the CAST() or CONVERT() functions to convert a string representation of a date and time into a DATETIME data type. 
The actual function to use may vary depending on the specific database system you are using. */

SELECT CAST('2024-01-19 14:30:00' AS DATETIME) AS converted_datetime;

-- or ---

SELECT STR_TO_DATE('2024-01-19 14:30:00', '%Y-%m-%d %H:%i:%s') AS converted_datetime;

/* In this case, the STR_TO_DATE() function takes the input string and a format specifier ('%Y-%m-%d %H:%i:%s') that describes the expected format of the input string.

Adjust the format specifier according to the actual format of your string representation. %Y, %m, %d, %H, %i, and %s are placeholders for the
 year, month, day, hour, minute, and second components, respectively. */











