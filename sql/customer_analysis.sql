-- Sales and Profit by Gender

SELECT 
    Gender,
    sum(sales) AS total_sales,
    round(sum(profit), 2) AS total_profit
FROM ecomm_sales
GROUP BY Gender;

-- Sales and Profit by Login type and gender
SELECT 
	Customer_Login_type,
	gender, 
    sum(sales) AS total_sales
FROM ecomm_sales
GROUP BY Customer_Login_type, gender;

-- Sales and Profit by Payment Method
SELECT 
    Payment_method,
    sum(sales) AS total_sales,
    round(sum(profit), 2) AS total_profit
FROM ecomm_sales
GROUP BY Payment_method;

-- Sales and Profit by Device Type

SELECT 
    Device_Type,
    sum(sales) AS total_sales,
    round(sum(profit), 2) AS total_profit
FROM ecomm_sales
GROUP BY Device_Type;

-- New Clients and Tendencies per month
SELECT
    DATE_FORMAT(first_purchase, '%Y-%m') AS month,
    COUNT(*)                             AS new_customers
FROM (
    SELECT
        customer_id,
        MIN(order_date) AS first_purchase
    FROM ecomm_sales
    GROUP BY customer_id
) t
GROUP BY month
ORDER BY month; 

-- Top Clients

SELECT 
    customer_id,
    SUM(sales) AS total_sales,
    RANK() OVER (ORDER BY SUM(sales) DESC) AS rank_sales
FROM ecomm_sales
GROUP BY customer_id
LIMIT 10;

-- Repeat Rate

SELECT
    ROUND(
        SUM(CASE WHEN total_orders > 1 THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS repeat_customer_rate_pct
FROM (
    SELECT
        customer_id,
        COUNT(*) AS total_orders
    FROM ecomm_sales
    GROUP BY customer_id
) t;
