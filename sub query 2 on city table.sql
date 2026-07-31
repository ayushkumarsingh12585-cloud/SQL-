use world;
select name from city where district = (select district from city where name = 'haag');
select name from city where district = (select district from city where name = 'kabul');
select * from city; 
select * from city where population = (select max(population) from city);
select * from city where population = (select min(population) from city);
select district from city where countrycode=(select countrycode from city where name ='herat');  
select district,population from city where countrycode=(select countrycode from city where name ='amsterdam'); 
select district,population from city where countrycode=(select countrycode from city where name ='amsterdam') order by population;
select district,population from city where countrycode=(select countrycode from city where name ='amsterdam') order by district desc ;
select district,population from city where population in (select population from city where district='utrecht');

 