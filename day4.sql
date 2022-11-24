use training;

SELECT * FROM company;

SELECT min(salary) as min_salary,
max(salary) as max_salary,
sum(salary) as total_salary,
avg(salary) as average FROM company;

SELECT distinct company from company;

--  CASE
-- WHEN <condition> THEN <what to do>
-- WHEN <condition2> THEN <what to do>
-- ELSE <what to do>
-- END as column_name

SET sql_safe_updates=0;

SELECT distinct office from company;

SELECT min(salary) as min_salary,max(salary) as max_salary,sum(salary) as total_salary,avg(salary) as average FROM company;

SELECT office,min(salary) as min_salary,max(salary) as max_salary,sum(salary) as total_salary,avg(salary) as average FROM company
group by office;

SELECT office, Place,CASE WHEN min_salary='' THEN 0 END as min_salary,max_salary,total_salary,average FROM (
SELECT office,Place,min(salary) as min_salary,max(salary) as max_salary,sum(salary) as total_salary,avg(salary) as average FROM company
group by office,Place ) x;

ALTER TABLE company RENAME COLUMN company TO office;

SELECT * FROM company;
UPDATE company set office='TCS' WHERE office='Tata Consultancy Services';
UPDATE company set office='Infosys' WHERE office='Infosys Pvt Lmt';
UPDATE company set office='CTS' WHERE office='Congnizant';
UPDATE company set office='Wipro' WHERE office;

SELECT office,Place,min(salary) as min_salary,max(salary) as max_salary,sum(salary) as total_salary,avg(salary) as average 
FROM company
WHERE Place!=''
group by office,Place 
having min_salary>0
order by Place,min_salary desc;


SELECT office,Place,min(salary) as min_salary,max(salary) as max_salary,sum(salary) as total_salary,avg(salary) as average 
FROM company
group by office,Place 
order by max(salary);




SELECT office,Place,max(salary)
FROM company
WHERE office in ('TCS','Infosys')
group by office,Place
having max(salary)>0
order by max(salary) desc;

SELECT office,Place,count(salary)
FROM company
WHERE office in ('TCS','Infosys')
group by office,Place
order by count(salary);

