/* Câu 1: https://www.hackerrank.com/challenges/weather-observation-station-3*/
select distinct city from station 
where id % 2=0

/* ex2: hackerrank-weather-observation-station-4.*/
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) 
FROM STATION;

/*ex4: datalemur-alibaba-compressed-mean.*/
SELECT round(cast(sum(item_count*order_occurrences)/sum(order_occurrences)as decimal),1) as mean 
FROM items_per_order
