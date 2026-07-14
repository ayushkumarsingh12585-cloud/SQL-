-- nummeric functions 
use world;
select * from country;
select lifeexpectancy from country;
select lifeexpectancy , round(lifeexpectancy)from country;
select 34.58,round(34.58);-- round 
select 34.58,round(34.9);
select 34.58,round(134.3);
select 74.469, round(76.469,1);
select 74.469, round(76.469,2);
select 74.469, round(76.369,2);
select 74.469, round(76.461,1);
-- round off to nearest 10 ,100,1000
select 9,round(9,-1);-- 10 
select 9,round(9.2,-1);
select 9,round(7.2,-1);
select 9,round(4.5,-1);
select 9,round(3,-1);

select 9,round(13.2,-2);
select 9,round(56.5,-2);
select 9,round(49,-2);
select 9,round(250.2,-2);
select 9,round(249,-2);
select 9,round(259.2,-1);
select 9,round(252.5,-1);
select 9,round(554.3,-3);
select 9,round(7554.3,-3);
select 9,round(7456.3,-3);
-- truncate 
select round(34.857,1),truncate(34.857,1);
select round(34.257,1),truncate(34.257,1);
select round(34.857,1),truncate(34.857,2);
select round(34.867,2),truncate(34.857,2);
select round(34.957,1),truncate(34.957,1);
select mod(4,2);-- mod
select mod(3,5);
select mod(5,3);
-- floor
select floor(34.1);
select floor(34.999);
-- ceil
select ceil(34.00001);
select ceil(34);
select ceil(34.999);
-- abs 
select abs(10.1);
select abs(-10.1);





