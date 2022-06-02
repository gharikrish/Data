CREATE TABLE ADI(
   EMP_ID INT PRIMARY KEY,
   ENAME varchar(40),
   JobDesc VARCHAR(20),
   SALARY INT
);
USE ADI;
DESCRIBE ADI;

INSERT INTO ADI VALUES(1,"RAM","ADMIN",1000000),
(2,"HARINI","MANAGER",2500000),
(3,"GEORAGE","SALES",2000000),
(4,"RAMYA","SALES",1300000),
(5,"MEENA","HR",2000000),
(6,"ASHOK","MANAGER",3000000),
(7,"ABDUL","HR",2000000),
(8,"RAMYA","ENGINEER",1000000),
(9,"RAGHU","CEO",8000000),
(10,"ARAVIND","MANAGER",2800000),
(11,"AKSHAY","ENGINEER",1000000),
(12,"JOHN","ADMIN",2200000),
(13,"ABINAYA","ENGINEER",2100000);

SELECT * FROM ADI;

SELECT * FROM ADI
LIMIT 5;

SELECT * FROM ADI
WHERE ENAME = "RAMYA";

SELECT * FROM ADI
WHERE ENAME <> "RAMYA";

SELECT ENAME,SALARY FROM ADI
WHERE ENAME <> "RAMYA"
LIMIT 5;

SELECT * FROM ADI
WHERE SALARY >= 3000000;

SELECT * FROM ADI
WHERE SALARY <= 2500000 AND JOBDESC = "MANAGER";

SELECT * FROM ADI
WHERE JOBDESC = "HR" OR JOBDESC = "SALES";

SELECT * FROM ADI
WHERE JOBDESC IN ("HR","SALES");

SELECT * FROM ADI
WHERE JOBDESC NOT IN ("CEO","MANAGER");

select * FROM ADI
WHERE SALARY  BETWEEN 2000000  AND 3000000
LIMIT 5;

-- LIKE
-- WILDCARDS %(ZERO OR MORE CHARACTERS) - (ONE CHARACTER)alter

SELECT * FROM ADI
WHERE ENAME LIKE ('A%');
 
 SELECT * FROM ADI 
 WHERE ENAME LIKE '%A';
 
 SELECT * FROM ADI 
 WHERE ENAME NOT LIKE 'A%';

SELECT * FROM adi
WHERE ENAME LIKE '%I%';

SELECT * FROM ADI 
WHERE ENAME LIKE '__I%';

UPDATE ADI
SET JobDesc = "ANALYST" 
WHERE JobDesc ="ENGINEER";
SELECT * FROM ADI;

DELETE FROM ADI
WHERE EMP_ID = 12;

SELECT distinct JOBDESC FROM ADI; -- DISTINCT IS REMOVE DUPLICATES

-- SORT FUNCTION
SELECT * FROM ADI 
ORDER BY ENAME;

SELECT * FROM ADI
ORDER BY SALARY;

SELECT * FROM ADI
ORDER BY SALARY DESC;

SELECT * FROM ADI 
ORDER BY SALARY,ENAME;

SELECT * FROM ADI 
WHERE JOBDESC = "MANAGER"
ORDER BY SALARY;


-- CUSTOM PREFERENCWE  OR CUTSOM ORDER
SELECT * FROM ADI 
ORDER BY (CASE JOBDESC
WHEN "CEO" THEN 1
WHEN "MANAGER" THEN 2
WHEN "HR" THEN 3
WHEN "SALES" THEN 4
ELSE 100 END);
SELECT * FROM ADI;

SELECT * FROM ADI 
ORDER BY (CASE JOBDESC
WHEN "CEO" THEN 1
WHEN "MANAGER" THEN 2
WHEN "HR" THEN 3
WHEN "SALES" THEN 4
ELSE 100 END),ENAME;


SELECT count(*) FROM ADI;

SELECT COUNT(*)TOTAL FROM ADI;

SELECT COUNT(*) FROM ADI 
WHERE JOBDESC = "MANAGER"; 

SELECT COUNT(*)NO_OF_MANAGER FROM ADI 
WHERE JOBDESC = "MANAGER";