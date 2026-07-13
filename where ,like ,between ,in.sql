show databases;
use world;
describe country;
select * from country;
select name,continent from country;
select continent,name ,continent from country;
select name,continent,population+500 from country;
select *
from 
country;
select name,continent,population+1000 from country;
select * from country where continent="Asia";
select * from country where name="Bahrain";
select name,continent, population from counrty where name="Pakistan";
select name,continent from country where population=156483000;
select * from country where continent="Europe";
select * from country where continent="Europe" and indepyear>1900;
show tables;
select * from country where continent="Europe";
select * 
from 
city;
select district , population from city;

select name ,district, population, countrycode from city where countrycode='IND' and population>2000000;
select name ,district, population, countrycode from city where countrycode='IND' and population<2000000;

select * from city where population>100000 and population <150000;
select * from city where population between 100000 and 150000;-- between operator
select * from city where population=129170 or population=117196;
select * from city where population in (129170,117196);-- in operator

-- like operator
select * from city where name like 'b%';
select * from city where name like 'breda'; 


select * from city where name like '%da';
select * from city where name like '%a';
select * from city;
select name , population from city where name like '%e%';
select name , population from city where name like '%b';
select name , population from city where name like '_a%r_';
select name , population from city where name like '%aa%';












