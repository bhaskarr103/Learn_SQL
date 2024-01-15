-- GROUPBY AND HAVING CLAUSE

-- DISPLAY ALL DEPARTMENT NAME.

SELECT dept FROM students
group by dept;

-- DISPLAY ALL DEPARTMENT NAME ALONG WITH NUMBER OF EMPLOYEES WORKING IN THAT.

SELECT dept, COUNT(*) as employee_count FROM students
group by dept;

/* The GROUP BY clause in SQL is used to arrange identical data into groups.
It operates on a set of columns specified in the query and groups the rows based on the unique combinations of values in those columns.
The primary purpose of the GROUP BY clause is to perform aggregate functions on each group independently.
This clause is often used with aggregate functions such as COUNT, SUM, AVG, MAX, or MIN to generate summary information for each group. */

-- WRITE A QUERY TO DISPLAY ALL DEPARTMENT NAMES WHERE NUMBER OF EMPLOYEES IS LESS THAN 2.

SELECT dept FROM students
group by dept
having COUNT(*) < 2;

/* The HAVING clause in SQL is used to filter the results of a GROUP BY query based on a specified condition.
 While the WHERE clause filters individual rows before they are grouped, the HAVING clause filters the grouped results 
 after the grouping has taken place. It is commonly used with aggregate functions to filter groups based on aggregated values. */

 -- SELECT NAME OF EMPLOYEE WORKING IN I.T.
 
 SELECT e_name FROM students
 WHERE dept IN (SELECT dept FROM students
 WHERE dept = 'IT');
 
 -- or
 
 SELECT e_name FROM students
 WHERE dept IN (SELECT dept FROM students
 group by dept
 HAVING COUNT(*) < 2);
 
 -- WRITE A QUERY TO DISPLAY HIGHEST SALARY DEPARTMENT-WISE & NAME OF EMPLOYEE WHO'S TAKING THAT SALARY.
 
 
 SELECT e_name FROM students
 WHERE salary IN (SELECT MAX(salary) FROM students
 group by dept);
