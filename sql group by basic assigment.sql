create database regex;
use regex;
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Dept VARCHAR(30),
    City VARCHAR(30),
    Gender CHAR(1),
    Salary INT,
    JoinDate DATE,
    Role VARCHAR(30)
);
INSERT INTO Employee
(EmpID, Name, Dept, City, Gender, Salary, JoinDate, Role)
VALUES
(1,'Alice','HR','New York','F',55000,'2019-03-15','Manager'),
(2,'Bob','IT','Chicago','M',72000,'2020-07-22','Developer'),
(3,'Carol','Finance','New York','F',68000,'2018-11-01','Analyst'),
(4,'David','HR','Chicago','M',52000,'2021-01-10','Executive'),
(5,'Eve','IT','Houston','F',85000,'2017-06-30','Senior Dev'),
(6,'Frank','Finance','New York','M',74000,'2019-09-14','Manager'),
(7,'Grace','Marketing','Chicago','F',60000,'2022-02-28','Executive'),
(8,'Hank','IT','Houston','M',90000,'2016-04-05','Lead'),
(9,'Ivy','HR','New York','F',58000,'2020-12-19','Executive'),
(10,'Jack','Finance','Chicago','M',65000,'2021-03-07','Analyst'),
(11,'Karen','Marketing','Houston','F',62000,'2018-08-23','Manager'),
(12,'Leo','IT','New York','M',78000,'2019-11-11','Developer'),
(13,'Mia','HR','Chicago','F',53000,'2022-05-16','Executive'),
(14,'Nate','Finance','Houston','M',71000,'2017-12-02','Manager'),
(15,'Olivia','Marketing','New York','F',66000,'2020-06-18','Analyst'),
(16,'Paul','IT','Chicago','M',82000,'2018-03-27','Senior Dev'),
(17,'Quinn','HR','Houston','F',57000,'2021-09-09','Executive'),
(18,'Rita','Finance','New York','F',76000,'2019-01-25','Lead'),
(19,'Sam','Marketing','Chicago','M',63000,'2022-07-14','Executive'),
(20,'Tina','IT','Houston','F',88000,'2016-10-31','Lead'),
(21,'Uma','HR','New York','F',60000,'2020-04-03','Manager'),
(22,'Victor','Finance','Chicago','M',69000,'2018-07-19','Analyst'),
(23,'Wendy','Marketing','Houston','F',64000,'2021-11-27','Manager'),
(24,'Xander','IT','New York','M',95000,'2015-02-14','Architect'),
(25,'Yara','HR','Chicago','F',54000,'2022-09-08','Executive'),
(26,'Zoe','Finance','Houston','F',73000,'2019-05-21','Manager'),
(27,'Aaron','Marketing','New York','M',67000,'2020-10-15','Analyst'),
(28,'Bella','IT','Chicago','F',80000,'2017-08-06','Senior Dev'),
(29,'Carlos','HR','Houston','M',56000,'2021-06-24','Executive'),
(30,'Diana','Finance','New York','F',77000,'2018-02-09','Lead');
select dept , count(name) from employee group by dept;
select dept , sum(salary) from employee group by dept;
select city , avg(salary) from employee group by city;
select dept , max(salary) from employee group by dept;
select dept , min(salary) from employee group by dept;
select dept , count(name) from employee group by dept order by count(name) desc;
select city , sum(salary) from employee group by city order by sum(salary);
select name,dept,salary from employee order by dept,salary desc;
select name,city,joindate from employee order by city ,joindate desc ;
select name,role,salary from employee order by role ,salary  ;
select dept ,count(name) from employee group by dept having count(*) > 7;
SELECT dept, avg(salary) FROM employee GROUP BY dept HAVING avg(salary) > 65000;
SELECT city, sum(salary) FROM employee GROUP BY city HAVING sum(salary) > 650000;
SELECT dept, max(salary) FROM employee GROUP BY dept HAVING max(salary) >= 80000;
use regex;
select role, count(role) from employee group by role having count(role) > 5; 
select avg(salary) from employee;
select dept ,count(gender) from employee where gender ='f' group by dept ;
select gender ,avg(salary) from employee group by gender ;
select dept ,city ,count(name) from employee group by dept,city;
select dept ,gender,avg(salary) from employee group by dept,gender;-- 22
select city ,role ,sum(salary) from employee group by city,role order by sum(salary) desc;
select dept ,role ,count(name) from employee group by dept,role having count(name) >1;
select city,gender,max(salary) from employee group by city ,gender;
select dept, avg(salary) from employee group by dept having avg(salary)>60000 order by avg(salary);
select city,dept, count(name) from employee group by city ,dept having count(name)>1 order by count(name) desc,city desc;

select role ,sum(salary) from employee group by role having sum(salary)>300000 order by sum(salary); 
select upper(name),year(joindate) from employee ;
select year(joindate) ,count(name) as joiners from employee group by year(joindate);















