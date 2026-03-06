-- Write your PostgreSQL query statement below

SELECT 
	a.id
FROM weather a
JOIN weather b
	ON a.recorddate = b.recorddate + INTERVAL '1 days'
WHERE a.temperature > b.temperature