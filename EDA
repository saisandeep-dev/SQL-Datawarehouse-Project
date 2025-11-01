---Retrive a list of unique categories,subcategories,and products  
select distinct 
category,subcategory,product_name
from gold.dim_products;

----Determine the first and last order date and the total duration in month
select 
min(order_date) as first_order,
max(order_date) as last_order,
DATEDIFF(MONTH,MIN(Order_date),max(order_date)) as Duration_in_Months
 from gold.fact_sales


---Generating a report which shows KPI's of business
select 'TOTAL SALES' , Sum(sales_amount) from gold.fact_sales 
union all
select 'TOTAL Qty', sum(quantity) from gold.fact_sales;

------what is distributionof sold items across countries
SELECT
    c.country,
    SUM(f.quantity) AS total_sold_items
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
    ON c.customer_key = f.customer_key
GROUP BY c.country
ORDER BY total_sold_items DESC;

------which 5 products generating the highest revenue
SELECT TOP 5
    p.product_name,
    SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
    ON p.product_key = f.product_key
GROUP BY p.product_name
ORDER BY total_revenue DESC;

-- Find the total sales
SELECT SUM(sales_amount) AS total_sales FROM gold.fact_sales;

-- Find how many items are sold
SELECT SUM(quantity) AS total_quantity FROM gold.fact_sales;

-- Find the average selling price
SELECT AVG(price) AS avg_price FROM gold.fact_sales;

-- Find the total number of orders
SELECT COUNT(order_number) AS total_orders FROM gold.fact_sales;
SELECT COUNT(DISTINCT order_number) AS total_orders FROM gold.fact_sales;

-- Find the total number of products
SELECT COUNT(product_name) AS total_products FROM gold.dim_products;

-- Find the total number of customers
SELECT COUNT(customer_key) AS total_customers FROM gold.dim_customers;

-- Find the total number of customers that have placed an order
SELECT COUNT(DISTINCT customer_key) AS total_customers FROM gold.fact_sales;
