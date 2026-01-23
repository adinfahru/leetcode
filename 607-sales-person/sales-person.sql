/* Write your T-SQL query statement below */

select sp.name
from salesperson sp
where sp.sales_id NOT IN (
	select o.sales_id 
	from orders o
	left join company c
		on o.com_id = c.com_id
	where c.name = 'RED'
)