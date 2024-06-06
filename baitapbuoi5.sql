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

/*ex7:datalemur-cards-issued-difference.*/
SELECT card_name , (max(issued_amount)- min(issued_amount)) as difference
FROM monthly_cards_issued
GROUP BY (card_name)
ORDER BY difference DESC
  
/*ex8:https://datalemur.com/questions/cards-issued-difference.*/
SELECT manufacturer,
count(drug) as drug, abs(sum(cogs-total_sales)) as total_loss
FROM pharmacy_sales
where total_sales < cogs
group by (manufacturer)
order by  total_loss desc

/*ex9:leetcode-not-boring-movies.*/
select* from cinema
where id%2=1 and  description <>'boring'
order by rating desc

/*ex10: leetcode-number-of-unique-subject.*/
select teacher_id , 
count(distinct subject_id) as cnt
from teacher
group by teacher_id;

/*ex11: leetcode-find-followers-count..*/
select user_id, count(follower_id) as followers_count
from Followers
group by user_id
order by user_id 

/*ex11: leetcode-classes-more-than-5-students..*/
select class
from courses
group by class
having count(student) >=5

