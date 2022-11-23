use training;

SELECT * FROM CUSTOMER;

-- DELETE
SELECT * FROM customer WHERE custid=1003;

DELETE FROM customer WHERE custid=1003;

SELECT * FROM CUSTOMER WHERE AGE=100;
DELETE FROM CUSTOMER WHERE AGE=100;

-- START TRANSACTION;
-- DELETE FROM CUSTOMER;
-- ROLLBACK;

-- DELETE DROP TRUNCATE
SET sql_safe_updates=0;
-- SELETE
-- SELECT <COLUMN NAMES> FROM TABLE WHERE CONDITION
SELECT custname FROM customer WHERE city='CHENNAI';

SELECT * FROM customer WHERE city='Chennai';

SELECT gender,custname, city,contact FROM customer WHERE city='CHENNAI';

SELECT * FROM CUSTOMER WHERE CITY != 'CHENNAI';
SELECT * FROM CUSTOMER;


SELECT * FROM company;

-- DDL - Data Definition Langauge (CREATE , ALTER , DROP, TRUNCATE)
-- DML - Data Manipulation Language (INSERT, UPDATE, DELETE)
-- DCL - Data Control Language ( GRANT, REVOKE)
-- TCL - Transaction Control Language (COMMIT, ROLLBACK)
-- DQL - Data Query Language (SELECT)

SELECT * FROM company WHERE company='Infosys' and Place='Mumbai' and salary>5000;
SELECT count(*) FROM company;

-- UPDATE company SET gender='M' WHERE gender=0;
DESC company;
SELECT * FROM company WHERE age<25 and Place!='';
SELECT * FROM company WHERE age<25 and Place!=''  and company='TCS';


SELECT count(*) FROM company;

SELECT count(distinct Company,Age,Salary,Place,Country,Gender ) FROM company;

SELECT * FROM company;

SELECT max(salary) FROM company;
SELECT sum(salary) FROM company;
SELECT avg(salary) FROM company;
