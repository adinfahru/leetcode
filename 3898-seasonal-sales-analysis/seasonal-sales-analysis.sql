-- Write your PostgreSQL query statement below

WITH agg AS (
	SELECT 
		CASE 
			WHEN EXTRACT(MONTH FROM s.sale_date) IN (12,1,2) THEN 'Winter'
			WHEN EXTRACT(MONTH FROM s.sale_date) IN (3,4,5) THEN 'Spring'
			WHEN EXTRACT(MONTH FROM s.sale_date) IN (6,7,8) THEN 'Summer'
			WHEN EXTRACT(MONTH FROM s.sale_date) IN (9,10,11) THEN 'Fall'
		END AS season,
		--TO_CHAR(s.sale_date, 'Month') AS Month,
		p.category,
		sum(s.quantity) AS total_quantity,
		sum(s.quantity * s.price) AS total_revenue
		
	FROM sales s
	JOIN products p 
		ON s.product_id = p.product_id 
	GROUP BY category, season
),
ranked AS (
	SELECT
		season,
		category,
		total_quantity,
		total_revenue,
		row_number() OVER (
		PARTITION BY season 
		ORDER BY total_quantity DESC, total_revenue DESC, category ASC  
	) AS rn
	FROM agg
)

SELECT 
	season,
	category,
	total_quantity,
	total_revenue
FROM ranked
WHERE rn = 1
ORDER BY season