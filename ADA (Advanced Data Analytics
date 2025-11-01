-- Change over time Analysis

SELECT 
Year(order_date),
Month(order_date),
Sum(sales_amount) AS total_sales,
Count(DISTINCT customer_key) AS total_customers,
Sum(price) AS total_quantity
from gold.fact_sales
Where order_date IS NOT NULL
Gruop BY YEAR(order_date), MONTH(order_date)
Order BY YEAR(order_date), MONTH(order_date);

-- Performance Analysis
with yearly_product_sales as(
select year(f.order_date) as order_year,p.product_name,sum(f.sales_amount) as current_sales
from gold.fact_sales f
left join gold.dim_products p on f.product_key=p.product_key
where f.order_date is not null
group by year(f.order_date),p.product_name)
select order_year,product_name,current_sales,
avg(current_sales) over(partition by product_name) as avg_sales,
current_sales-avg(current_sales) over(partition by product_name) as diff_avg,
case when current_sales-avg(current_sales) over(partition by product_name)>0 then 'above avg'
when current_sales-avg(current_sales) over(partition by product_name)<0 then 'below avg'
else 'avg' end as avg_change,
lag(current_sales) over(partition by product_name order by order_year) as py_sales,
current_sales-lag(current_sales) over(partition by product_name order by order_year) as diff_py,
case when current_sales-lag(current_sales) over(partition by product_name order by order_year)>0 then 'increase'
when current_sales-lag(current_sales) over(partition by product_name order by order_year)<0 then 'decrease'
else 'no change' end as py_change
from yearly_product_sales;



-- Part to Whole Analysis
WITH category_sales AS (
SELECT
p.category,
sum(f.sales_amount) AS total_sales
FROM gold.fact_sales f
left join gold.dim_products p
ON p.product_key = f.product_key
GROUP BY p.category
)
SELECT
category,total_sales,
SUM(total_sales) OVER () AS overall_sales,
Round((CAST(total_sales AS FLOAT) / SUM(total_sales) OVER () * 100), 2) AS percentage_of_total
from category_sales
order by total_sales DESC;

-- Segmenting customers based on their lifespan and spending behaviour
WITH customer_spending AS (
SELECT c.customer_key,
SUM(f.sales_amount) AS total_spending,
MIN(order_date) AS first_order,
MAX(order_date) AS last_order,
DATEDIFF(month, MIN(order_date), MAX(order_date)) AS lifespan
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON c.customer_key = f.customer_key
GROUP BY c.customer_key
)
SELECT
customer_segment,
COUNT(customer_key) AS total_customers
FROM (
SELECT
customer_key,
CASE
WHEN lifespan >= 12 and total_spending > 5000 then 'VIP'
WHEN lifespan >= 12 and total_spending <= 5000 then 'Regular'
ELSE 'New'
END AS customer_segment
FROM customer_spending
) 
AS segmented_customers
GROUP BY customer_segment
ORDER BY total_customers DESC;
