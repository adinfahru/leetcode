-- Write your PostgreSQL query statement below

SELECT
	name,
	bonus 
FROM employee e
LEFT JOIN bonus b
	ON e.empId = b.empid
WHERE bonus < 1000 OR bonus IS null
