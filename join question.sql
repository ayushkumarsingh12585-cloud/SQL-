use world;
select * from country;
select * from city;-- value  ka naam bhi same hona chhaiye not only the column name
select city.name ,city.countrycode,country.code ,country.name from city
join country
where city.countrycode=country.code
and city.name='kabul';
select city.name ,city.countrycode,country.code ,country.name from city
join country
where city.countrycode=country.code;-- primary key is a unique and not null key -- foreign key it is the common column beteween two or more column 
select c.name ,c.countrycode,cty.code ,cty.name from city as c
join country as cty
on c.countrycode=cty.code;-- iss mein left use kar yeah phir right usse kar koi fark nahi padega gaa bcoz there is no null value in code 
select c.name ,c.countrycode,cty.code ,cty.name from city as c
cross join country as cty
on c.countrycode=cty.code;-- cross join 
select c.name ,c.countrycode,cty.code ,cty.name from city as c
join country as cty;-- it will also work as croos jion if you not pass the condition
-- assigment w
select city.name ,city.countrycode,country.code ,country.name from city
join country
where city.countrycode=country.code;
select city.name ,city.countrycode,country.code ,country.name from city
natural join country;
select city.name ,city.countrycode,country.code ,country.name from city
self join country
where city.countrycode=country.code;


