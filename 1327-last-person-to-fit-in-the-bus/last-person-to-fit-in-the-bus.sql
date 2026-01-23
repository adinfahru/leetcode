/* Write your T-SQL query statement below */

select top 1
	person_name 
from (
	select
		person_name,
		sum(weight) over (order by turn) as total_berat
	from queue
) as tabel_bantu
where total_berat <= 1000
order by total_berat desc