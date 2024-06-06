/* Câu 1: https://www.hackerrank.com/challenges/weather-observation-station-3*/
select distinct city from station 
where id % 2=0

/* ex2: hackerrank-weather-observation-station-4.*/
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) 
FROM STATION;

/*ex4: datalemur-alibaba-compressed-mean.*/
SELECT round(cast(sum(item_count*order_occurrences)/sum(order_occurrences)as decimal),1) as mean 
FROM items_per_order
  
/*ex5:datalemur-matching-skills.*/
  SELECT candidate_id FROM candidates
where skill in ('Python','Tableau','PostgreSQL')
group by (candidate_id)
  
/*ex6:datalemur-verage-post-hiatus-1..*/
SELECT user_id, date(max(post_date))-date(min(post_date)) as days_between
FROM posts
where  post_date >='2021-01-01' and post_date <='2022-01-01'
group by (user_id)
having count (post_id) >=2
