/* Write your T-SQL query statement below */

select 
	p.product_name,
	sum (o.unit) as unit
from orders as o
left join products as p
	on o.product_id = p.product_id
where month(o.order_date) = 02 and year (o.order_date) = 2020
group by 
	p.product_id,
	p.product_name
having sum(o.unit) >= 100;
