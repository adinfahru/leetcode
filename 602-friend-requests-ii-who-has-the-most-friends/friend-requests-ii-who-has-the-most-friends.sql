-- Write your PostgreSQL query statement below
WITH all_id AS (
select requester_id as id
    from requestaccepted

    union all

    select accepter_id as id
    from requestaccepted
)

SELECT 
	id,
	count(id) AS num
FROM all_id
GROUP BY id
ORDER BY num desc
LIMIT 1