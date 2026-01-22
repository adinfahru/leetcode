/* Write your T-SQL query statement below */

-- filter yang primary flag nya Y
-- kalo yang cuma satu berarti distinct trus ambil aja, gausah peduli primary flagnya
-- lalu gabungin datanya


select 
	employee_id,
	department_id
from Employee
where primary_flag = 'Y'
OR
employee_id IN 
(
select
	employee_id
from Employee
group by employee_id
having count(primary_flag) = 1
)