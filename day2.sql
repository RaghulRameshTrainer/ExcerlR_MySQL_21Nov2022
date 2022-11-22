-- create database training;
use training;

CREATE TABLE IF NOT EXISTS customer(
custid INT,
custname  VARCHAR(100),
gender  CHAR(1),
age INT,
city VARCHAR(50),
contact VARCHAR(50)
);

-- DATA TYPES:
-- INT ( INTEGER FOR STORING NUMBERS) 
-- LONG ( STORE BIG INT NUMBER)
-- FLOAT ( STORING DECIMAL VALUE )  
-- DECIMAL ( TO STORE BIG DECIMAL VALUE) 
-- CHAR ( to store character), CHAR(50)
-- VARCHAR (Variable Character)
-- DATE ( date value)

-- LOAD DATA
INSERT INTO customer VALUES(1000,'Raghul Ramesh','M',40,'Chennai','9987665431');

SELECT * FROM customer;

INSERT INTO customer VALUES(1001,'Malini Sekar','F',35,'Pune','9987665421');
INSERT INTO customer VALUES(1001,'Thrani Sekar','F',30,'Bangalore','9987665111');
INSERT INTO customer VALUES(1001,'Thrani Sekar','F',3000,'Bangalore','9987665111');

INSERT INTO customer(custid,custname,gender,city,contact) VALUES(1002,'Ashwin Sekar','F','Bangalore','9987665222');
INSERT INTO customer(custid,custname,gender,city) VALUES(1003,'Siva Murugan','M','Hyderabad');
INSERT INTO customer(custid,custname,contact,age,gender,city) VALUES(1004,'Prabhakaran','9911123456',38,'M','Pune');

-- UPDATE 
SET sql_safe_updates=0;

UPDATE customer SET age=17 WHERE custid=1002;
UPDATE customer SET age=35,city='Delhi',contact='9876543211' WHERE custid=1003;
UPDATE customer SET age=100 WHERE city='Bangalore';

-- START TRANSACTION;
-- UPDATE customer SET age=99 WHERE custname='Malini Sekar';
-- -- ROLLBACK;
-- COMMIT;
-- DROP TABLE company;