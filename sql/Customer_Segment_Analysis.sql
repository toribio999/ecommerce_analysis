-- Customer Segment Revenue Analysis --

-- Customer Value Segmentation
WITH customer_sales AS (
    SELECT 
        customer_id,
        SUM(sales)      AS total_sales,
        COUNT(*)        AS total_orders,
        MAX(order_date) AS last_purchase
    FROM ecomm_sales
    GROUP BY customer_id
),
segmented AS (
    SELECT
        customer_id,
        total_sales,
        total_orders,
        last_purchase,
        CASE
            WHEN total_sales >= 5000 THEN 'VIP'
            WHEN total_sales >= 2000 THEN 'High Value'
            WHEN total_sales >= 1000 THEN 'Medium Value'
            ELSE                          'Low Value'
        END AS segment_name
    FROM customer_sales
)
SELECT
    segment_name,
    COUNT(*)                        AS customers,
    ROUND(AVG(total_sales), 2)      AS avg_revenue,
    ROUND(AVG(total_orders), 1)     AS avg_orders,
    ROUND(SUM(total_sales), 2)      AS segment_revenue,
    ROUND(
        SUM(total_sales) / SUM(SUM(total_sales)) OVER () * 100,
    2)                              AS revenue_share_pct
FROM segmented
GROUP BY segment_name
ORDER BY segment_revenue DESC;

-- Customer Retention Analysis

SELECT
    CASE 
        WHEN total_orders = 1 THEN 'One-time'
        ELSE 'Repeat'
    END                         AS customer_type,
    COUNT(*)                    AS customers,
    ROUND(AVG(total_sales), 2)  AS avg_revenue,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 
    2)                          AS pct_of_customers
FROM (
    SELECT
        customer_id,
        COUNT(*)   AS total_orders,
        SUM(sales) AS total_sales
    FROM ecomm_sales
    GROUP BY customer_id
) t
GROUP BY customer_type;