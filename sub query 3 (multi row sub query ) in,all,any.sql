create database con;
use con;
create table employee_b(id int,name varchar(20),salary int);
insert into employee_b values(1,'a',100),(2,'b',250),(3,'c',400),(4,'d',380),(5,'a',300);
select * from employee_b;
select * from employee_b where salary in (select salary from employee_b where name ='a'); -- we can not use operator with in 
select * from employee_b where salary =any (select salary from employee_b where name ='a');-- instead off using (in) we can also use any ,all,exits 
select * from employee_b where salary > any (select salary from employee_b where name ='a');
select * from employee_b where salary >all (select salary from employee_b where name ='a');-- we can not use equal to with all 
select * from employee_b where salary <all (select salary from employee_b where name ='a');
select name,salary from employee_b where salary > (select avg(salary) from employee_b);
select name from employee_b where salary in (select salary from employee_b);
select name from employee_b where salary any(select salary from employee_b); -- any always used with operator 
select name from employee_b where salary =any(select salary from employee_b);
select name from employee_b where salary >any(select salary from employee_b);
select name from employee_b where salary <any(select salary from employee_b);
select name from employee_b where salary all (select salary from employee_b);-- all always used with operator
select name from employee_b where salary <all (select salary from employee_b);-- no output 
select name from employee_b where salary >all (select salary from employee_b);-- no output
select name from employee_b where salary =all (select salary from employee_b);-- no output bcoz one salary is compare with all the salary
