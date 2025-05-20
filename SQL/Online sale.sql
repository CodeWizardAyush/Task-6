
use `online_sales`;
select * from `online sales data`;

#Q1. Total orders placed
select count(*) as Total_Orders 
from `online sales data`;

#Q2. Top 5 most ordered products
SELECT `Product Category`, SUM(`units sold`) AS ordercount
FROM `online sales data`
GROUP BY `Product Category`
ORDER BY ordercount DESC
LIMIT 5;

#Q3. total revenue by product category
select `Product Category`, round(sum(`Total Revenue`),2) as total_revenue
from  `online sales data`
GROUP BY `Product Category`
ORDER BY total_revenue DESC;

#Q4. Monthly wise order count
SELECT extract(month from `Date`) as order_month,
       COUNT(*) AS order_count
FROM  `online sales data`
GROUP BY order_month
ORDER BY order_month desc;

#Q5. orders made using each payment method
select `Payment Method`, count(*) as total_orders
from `online sales data`
group by `Payment Method`;

