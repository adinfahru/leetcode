-- Write your PostgreSQL query statement below
select p.product_id from Products as p where p.low_fats = 'Y' AND p.recyclable ='Y';