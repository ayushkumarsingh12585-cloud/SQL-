use world;
select continent from country group by continent;
select distinct(continent) from country; -- there is no diffrence between both
select distinct(continent) ,name from country; -- distinct idar fail ho jayega
select continent,count(name) from country group by continent;
select count(name) from country where continent ='asia';
select continent ,count(name) from country group by continent;
select name , count(name) from country group by name ;
select  count(name),count(distinct(name)) from country ;
select name , count(name) from country group by name ;
select name , count(name) from country group by name ;
select count(name) from city where district ='zuid-holland';
select district from city group by district;
select district ,count(name) from city group by district;
select district ,count(name),sum(population) from city group by district;
select * from city where countrycode = 'afg';
select count(name) from city where countrycode='afg';
select * from city group by countrycode;-- this will give error because we have to pass an argument
select count(name) from city group by countrycode;
select countrycode,count(name) from city group by countrycode;
select * from country;
select count(name) from country where lifeexpectancy between 17.1 AND 83.57 ;
select sum(population) from country where indepyear>'1990';
select count(name) from country where indepyear is null;
select count(name),sum(surfacearea) from country group by region;
select continent,count(name) from country group by continent;
select continent,region ,count(name) from country group by continent,region;









