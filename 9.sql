USE learnsql;

CREATE TABLE emp(
e_id int primary key,
e_name VARCHAR(255),
address VARCHAR(255)
);

INSERT INTO emp VALUES
(1,'Ravi','chd'),
(2,'Varun','delhi'),
(3,'Nitin','pune'),
(4,'Robin','bang'),
(5,'Ammy','chd');

CREATE TABLE project (
    e_id INT,
    p_id VARCHAR(255) PRIMARY KEY,
    pname VARCHAR(255),
    loc VARCHAR(255),
    FOREIGN KEY (e_id) REFERENCES emp(e_id)
);


INSERT INTO project (e_id, p_id, pname, loc)
VALUES
    (1, 'P001', 'ProjectA', 'bang'),
    (5, 'P003', 'ProjectC', 'delhi'),
    (3, 'P004', 'ProjectD', 'mumbai'),
    (4, 'P005', 'ProjectE', 'hyd');
    
    
--     IN AND NOT IN KEYWORD

--  DEATIL OF EMP WHO BELONGS TO DELHI OR CHD OR PUNE

 
SELECT * FROM emp WHERE address IN ('delhi','chd','pune');


-- FIND THE NAME OF EMPLOYEE WHO ARE WORKING ON A PROJECT

SELECT e_name FROM emp
WHERE e_id IN (SELECT e_id FROM project);

    


