use world;
select distinct(continent)from country;
select name from country;
select distinct(name) from country;
select count(continent) from country;
select count(continent) ,count(distinct(continent)) from country;
select count(name),count(distinct(name)) from country;
select count(population) from country;
select count(population),sum(population),avg(population)from country;
select count(surfacearea),sum(surfacearea),max(surfacearea)  from country;
select count(continent),sum(continent) from country;-- the first count will work but sum will give wrong information
select avg(population),avg(replace(population,1,4))from country ;
select avg(population)-avg(replace(population,1,4))from country ;
select replace (population,0,' ') from country;
-- order by 
select name, continent,region,population from country order by name;
select name, continent,region,population from country order by name desc;
select * from country order by population ,name;
select name,continent,region,population from country order by continent,name;
select name,continent,region,population from country order by region ,name desc;-- first arrange region in asecending order than name in descending order




