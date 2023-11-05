-- Active: 1698768500977@@127.0.0.1@3306@Assignment6
#Task 2

#Write a SQL query to retrieve the product name, quantity, and total amount for each order item. Display the result in ascending order of the order ID.

#here Both products table and order_items table have price/ unit price, I am considering  unit_price * quantity as total_order_amount
SELECT oi.order_id as order_id, p.name as product_name, oi.quantity as order_quantity, (oi.quantity * oi.unit_price) AS total_order_amount
FROM order_items AS oi
JOIN products AS p ON oi.product_id = p.id
ORDER BY oi.order_id ASC;