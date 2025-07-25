# Write your MySQL query statement below
select c.name as Customers
FROM Customers as c
LEFT JOIN Orders as o
ON c.id = o.customerId
WHERE o.id is NULL