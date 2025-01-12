# Write your MySQL query statement below
SELECT 
    product_name,
    SUM(unit) AS unit
FROM Orders o
JOIN Products p
USING(product_id)
WHERE YEAR(order_date) = 2020
    AND MONTH(order_date) = 02
GROUP BY product_name
HAVING unit >= 100;