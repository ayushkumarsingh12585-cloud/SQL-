create database windows10db;
use windows10db;
create table employees(id int, name varchar(20), dept varchar(20), salary int);

insert into employees values(1, 'a', 'hr', 100), (2, 'b', 'hr', 200),(3, 'c', 'marketing', 300),
(4, 'd', 'marketing', 400), (5, 'e', 'hr', 500);

select sum(salary) from employees; -- aggreagate
select dept, sum(salary) from employees; -- Error ( without group by koi aur column select nhi ho sakta)
select dept,sum(salary) from employees group by dept;
select name,dept,sum(salary) from employees group by dept,name;
select*,(select sum(salary)from employees) from employees;-- sub query 
select* ,(select sum(salary) from employees as e where e.dept=e1.dept) from employees as e1; -- correlated
-- windows function
select* , sum(salary) from employees ;
select*,sum(salary) over() from employees;
select*,sum(salary) over() ,max(salary) over() from employees;-- over 
select*,sum(salary) over() ,avg(salary) over() from employees;-- over 
select*,sum(salary) over() ,min(salary) over() from employees;
select*,sum(salary) over() ,max(salary) over()  ,min(salary) over() from employees;
select * ,sum(salary) over() - salary as differnece from employees;
select * ,sum(salary) over(partition by name) from employees;
select * ,sum(salary) over() ,sum(salary) over(partition by dept) from employees;-- partition by