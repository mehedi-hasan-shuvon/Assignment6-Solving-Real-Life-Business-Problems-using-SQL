-- Active: 1698768500977@@127.0.0.1@3306@Assignment6
#Task 1 

#Write a SQL query to retrieve all the customer information along with the total number of orders placed by each customer. Display the result in descending order of the number of orders.

SELECT c.id as customer_id, c.name, c.email, c.location, COUNT(o.id) AS total_orders
FROM customers AS c
LEFT JOIN orders AS o ON c.id = o.customer_id
GROUP BY c.id, c.name, c.email, c.location
ORDER BY total_orders DESC;