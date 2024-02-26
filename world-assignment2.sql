#Task 1 - Using count, get the number of cities in the USA​

SELECT count(*) from city where CountryCode = 'USA';

#Task 2 - Find out what the population and average life expectancy for people in Argentina (ARG) is.
select Population,avg(LifeExpectancy) from country where code = 'ARG';

#Task 3 - Using ORDER BY, LIMIT, what country has the highest life expectancy?​

select * from country order by LifeExpectancy desc limit 0,1;

#Task 4 - Select 25 cities around the world that start with the letter 'F' in a single SQL query.​

SELECT * from city where name like 'F%' limit 0,25;

#Task 5 - Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.​

SELECT ID,Name,population from city order by id limit 0,10;

#Task 6 - Create a SQL statement to find only those cities from city table whose population is larger than 2000000.​

SELECT * FROM city where Population > 2000000;

#Task 7 - Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.​

SELECT * FROM city where name like 'Be%';

#Task 8 - Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.​

SELECT * FROM city where Population between 500000 and 1000000;

#Task 9 - Create a SQL statement to find a city with the lowest population in the city table.​
SELECT population,name,CountryCode from city order by population asc limit 0,1;


#Task 10 - Create a SQL statement to find the capital of Spain (ESP).​

SELECT * from city c join Country cc on c.CountryCode = cc.Code where Code = 'ESP' and capital = 653;
select * from country where Code = 'ESP'
Create a SQL statement to list all the languages spoken in the Caribbean region.​

Create a SQL statement to find all cities from the Europe continent.