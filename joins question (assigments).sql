create database regex1;
use regex1;
CREATE TABLE departments ( 
    dept_id   INT PRIMARY KEY, 
    dept_name VARCHAR(50), 
    location  VARCHAR(50) 
); 
  
INSERT INTO departments VALUES 
(10,'HR','Jaipur'), 
(20,'IT','Bangalore'), 
(30,'Finance','Mumbai'), 
(40,'Marketing','Delhi'), 
(50,'Legal','Pune'); 
  
CREATE TABLE employees ( 
    emp_id   INT PRIMARY KEY, 
    emp_name VARCHAR(50), 
    dept_id  INT, 
    salary   INT, 
    city     VARCHAR(50) 
); 
  
INSERT INTO employees VALUES 
(101,'Amit',10,45000,'Jaipur'), 
(102,'Bhavna',20,72000,'Bangalore'), 
(103,'Chirag',20,68000,'Bangalore'), 
(104,'Divya',30,55000,'Mumbai'), 
(105,'Esha',NULL,39000,'Delhi'), 
(106,'Farhan',40,61000,'Delhi'), 
(107,'Gaurav',60,50000,'Kolkata'), 
(108,'Hina',30,83000,'Mumbai'); 
  
CREATE TABLE projects ( 
    proj_id   INT PRIMARY KEY, 
    proj_name VARCHAR(50), 
    dept_id   INT, 
    budget    INT 
); 
  
INSERT INTO projects VALUES 
(1,'Payroll Revamp',10,120000), 
(2,'Cloud Migration',20,500000), 
(3,'Mobile App',20,300000), 
(4,'Audit Automation',30,250000), 
(5,'Brand Refresh',40,180000), 
(6,'Data Lake',70,400000); 
select emp_id,emp_name from employees;
select dept_id,dept_name from departments;
select e.emp_id,e.emp_name ,d.dept_name,d.location from employees as e join departments as d on e.dept_id = d.dept_id;-- 1
select p.proj_id,p.proj_name,d.dept_name,p.budget from projects as p join departments as d on p.dept_id = d.dept_id;-- 2
select e.emp_name,d.dept_name,p.proj_name from employees as e join departments as d,projects as p where e.dept_id=p.dept_id and p.dept_id =d.dept_id;-- 3
select e.emp_name,d.dept_name,p.proj_name from employees as e join departments as d,projects as p where e.dept_id=p.dept_id and p.dept_id =d.dept_id;-- 3

SELECT e.emp_id,e.emp_name,d.dept_id,d.dept_name FROM employees AS e LEFT JOIN departments AS d ON e.dept_id = d.dept_id;-- 4
select d.dept_id,d.dept_name,p.proj_name,p.budget from departments as d left join projects as p on d.dept_id = p.dept_id;-- 5
select e.emp_id,e.emp_name,d.dept_id from employees as e left join departments as d on e.dept_id = d.dept_id where d.dept_id is null;-- 6
select e.emp_name,d.dept_id,d.dept_name from employees as e right join departments as d on e.dept_id = d.dept_id;-- 7
select d.dept_name,p.proj_id,p.proj_name,d.dept_id from departments as d join projects as p on d.dept_id = p.dept_id ;-- 8
select d.dept_id,d.dept_name,d.location
from departments as d left join employees as e on d.dept_id=e.dept_id where e.emp_id is null ;-- 9
select d.dept_name, e.emp_name, e.salary
FROM departments AS d CROSS JOIN employees AS e WHERE d.dept_name IN ('Finance', 'Legal')
AND e.salary > 70000;-- 10
select p.proj_name,p.budget,d.dept_name,d.location from projects as p cross join departments
as d where d.location in ('mumbai','pune') and p.budget >=400000;-- 11
select count(*) from employees as e cross join departments as d;-- 12
select e.emp_id,e.emp_name,d.dept_id,e.salary,e.city from employees 
as e join departments as d on e.dept_id =d.dept_id where e.salary>60000;-- 13
select e.emp_id,e.emp_name,d.dept_id,e.salary,e.city from employees 
as e join departments as d 
on e.dept_id =d.dept_id where d.location in ('delhi','mumbai');-- 14
select e.emp_id,e.emp_name,d.dept_id,e.salary from employees 
as e  left join departments as d 
on e.dept_id =d.dept_id where d.dept_id is null;-- 15
select DISTINCT d.dept_id, d.dept_name, d.location
FROM departments AS d
JOIN employees AS e
ON d.dept_id = e.dept_id
WHERE d.location IN ('Bangalore', 'Delhi');-- 16
select distinct d.dept_id, d.dept_name, d.location
FROM departments AS d left JOIN employees AS e
ON d.dept_id = e.dept_id
WHERE d.dept_id >= 30;-- 17
SELECT distinct d.dept_id, d.dept_name, d.location
FROM departments AS d
left JOIN employees AS e
ON d.dept_id = e.dept_id
WHERE d.dept_name like 'f%' or d.dept_name like 'l%' ;-- 18
SELECT DISTINCT p.proj_id, p.proj_name, d.dept_id,p.budget
FROM projects AS p
left JOIN departments AS d
ON p.dept_id = d.dept_id
WHERE p.budget between 200000 and 400000 ;-- 19
SELECT DISTINCT p.proj_id, p.proj_name, d.dept_id,p.budget
FROM projects AS p
left JOIN departments AS d
ON p.dept_id = d.dept_id
WHERE d.dept_id = 20 ;-- 20
SELECT DISTINCT p.proj_id, p.proj_name,p.budget
FROM projects AS p
left JOIN departments AS d
ON p.dept_id = d.dept_id
WHERE p.proj_name like '%a%' and p.budget < 300000;-- 21
select e.emp_name,d.dept_name,d.location,p.proj_name,p.budget from employees
as e join departments as d on e.dept_id=d.dept_id join projects as p ON e.dept_id = p.dept_id;-- 22
select e.emp_id,e.emp_name,d.dept_name,p.proj_name from employees
as e left join departments as d 
on e.dept_id=d.dept_id left join projects as p ON e.dept_id = p.dept_id;-- 23
select e.emp_name,e.salary,d.dept_name,p.proj_name,p.budget from employees
as e left join departments as d 
on e.dept_id=d.dept_id left join projects as p ON e.dept_id = p.dept_id where e.salary>60000
and p.budget>250000;-- 24
select d.dept_id,d.dept_name,e.emp_name,p.proj_name from departments
as d left join employees as e 
on e.dept_id=d.dept_id left join projects as p ON d.dept_id = p.dept_id;-- 25

select e.emp_name,d.location,
    p.proj_name
from Employees e
join Departments d
    on e.dept_id = d.dept_id
join Projects p
    on d.dept_id = p.dept_id
where d.location IN ('Bangalore', 'Mumbai');-- 26
select e1.emp_name AS employee_1, e2.emp_name AS employee_2, e1.city
from Employees e1 JOIN Employees e2
on e1.city = e2.city
and e1.emp_id < e2.emp_id;-- 27
select p.proj_name, p.dept_id,e.emp_name
from Projects p
left join Employees e
on p.dept_id = e.dept_id;












