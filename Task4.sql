#Task 4 

#Write a SQL query to retrieve the top 5 customers who have made the highest total purchase amount. Display the customer name along with the total purchase amount in descending order of the purchase amount.

SELECT c.name as customer_name, SUM(o.total_amount) AS total_purchase_amount
FROM customers AS c
LEFT JOIN orders AS o ON c.id = o.customer_id
GROUP BY c.name
ORDER BY total_purchase_amount DESC
LIMIT 5;