create database con_db;
use con_db;
create table employee_c(id int,name varchar(20),salary int);
insert into employee_c values(1,'a',100),(2,'b',250),(3,'c',400),(4,'d',380);
select * from employee_c;
select max(salary) from employee_c;-- break down of sub query 
select * from employee_c where salary = 400;-- break down of sub query 
select name from employee_c where salary = ( select max(salary) from employee_c); -- sub query 
select * from employee_c where salary = ( select max(salary) from employee_c);-- sub query
select salary from employee_c where name = 'b';-- brakdown
select * from employee_c where salary =250;-- breakdown
select * from employee_c where salary= (select salary from employee_c where name ='b');-- sub query 
select * from employee_c where salary=(select min(salary) from employee_c );
select * from employee_c;
select * from employee_c where salary= (select salary from employee_c where name ='d');-- sub query 

