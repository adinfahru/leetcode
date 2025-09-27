-- Write your PostgreSQL query statement below
select user_id, max(time_stamp) as last_stamp
from Logins
where time_stamp >= '2020-01-01' and time_stamp < '2021-01-01'
group by user_id

-- Write your PostgreSQL query statement below
SELECT user_id, MAX(time_stamp) as last_stamp FROM Logins 
WHERE time_stamp BETWEEN '2020-01-01 00:00:00' AND '2020-12-31 23:59:59'
GROUP BY user_id
ORDER BY user_id DESC
