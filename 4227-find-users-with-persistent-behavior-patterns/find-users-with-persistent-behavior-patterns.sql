-- Write your PostgreSQL query statement below

SELECT
	user_id,
	ACTION,
	count(activity) AS streak_length,
	min(action_date) AS start_date,
	max(action_date) AS end_date
FROM activity
GROUP BY user_id, ACTION
HAVING count(activity) > 4
ORDER BY streak_length desc, user_id asc