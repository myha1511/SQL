/* Câu 1: https://www.hackerrank.com/challenges/revising-the-select-query-2/problem */
select name from city
where countrycode = 'USA'
and population > 120000;

/* Câu 2:https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=true */
select * from city
where COUNTRYCODE = 'JPN';

/* Câu 3: https://www.hackerrank.com/challenges/weather-observation-station-1/problem */
select city, state from station

/* Câu 4: hackerank-weather-observation-station-6.  */
select distinct CITY from STATION 
where CITY like 'A%' or CITY like 'E%' or CITY like 'I%' or CITY like 'O%' or CITY like 'U%';

/* Câu 5: https://www.hackerrank.com/challenges/weather-observation-station-7/submissions/code/384806727.  */
select distinct CITY from STATION
where CITY like '%a' or 
CITY like '%e' or
CITY like '%i' or
CITY like '%o' or
CITY like '%u';

/* Câu 6: https://www.hackerrank.com/challenges/weather-observation-station-7/submissions/code/384806727., *with not like operator we use And not or */
select distinct city from station 
where city not like 'a%' 
and city not like 'e%' 
and city not like 'i%' 
and city not like 'o%' 
and city not like 'u%'

/* Câu 7: hackerank-name-of-employees.   */

select name from employee
order by name asc;

/* Câu 8: hackerank-salary-of-employees.   */
select name from employee
where salary >2000 and
months < 10 
order by employee_id  asc;

/* Câu 9: leetcode-recyclable-and-low-fat-products.   */
select product_id from products
where low_fats= 'Y'
and recyclable = 'Y';

/* Câu 10: leetcode-find-customer-referee.    */

select name
from customer
where referee_id <> 2 or referee_id is null;

/* Câu 11 leetcode-big-countries. */
select name, population, area
from world
where area >=3000000
or population >=25000000;

/* Câu 11 leetcode-article-views.  */








