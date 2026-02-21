USE ecommerce;

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;

-- Total Revenue
SELECT SUM(quantity * price) AS total_revenue FROM orders;

-- Monthly Sales Trends
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
SUM(quantity * price) AS monthly_revenue
FROM orders
GROUP BY month
ORDER BY month;

-- TOP 5 CUSTOMERS BY REVENUE
SELECT c.customer_name, SUM(o.quantity * o.price) AS revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY revenue DESC
LIMIT 5;

-- TOP SELLING PRODUCTS
SELECT p.product_name, SUM(o.quantity) AS total_quantity_sold
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC;

-- CATEGORY WISE REVENUE
SELECT p.category,
SUM(o.quantity * o.price) AS category_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;

-- REPEAT VS New customers
SELECT 
customer_id ,
COUNT(order_id) AS total_orders,
CASE
  WHEN COUNT(order_id) > 1 THEN "Repeat Customer"
  ELSE "New Customer"
 END AS customer_type
 FROM orders
 GROUP BY customer_id;