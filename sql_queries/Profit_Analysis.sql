use ecomm;


-- Basic KPIs

SELECT 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_pct,
    AVG(discount) AS avg_discount
FROM ecomm_sales;

-- Product Category Analysis
SELECT 
    product_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS margin_pct,
    AVG(discount) AS avg_discount
FROM ecomm_sales
GROUP BY product_category
ORDER BY total_profit DESC;


-- Product Analysis
SELECT 
    product,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS margin_pct,
    AVG(discount) AS avg_discount
FROM ecomm_sales
GROUP BY product
ORDER BY margin_pct DESC
limit 10;



-- Impact of the Discount Level

SELECT 
    CASE 
        WHEN discount = 0 THEN 'No Discount'
        WHEN discount <= 0.1 THEN 'Low Discount'
        WHEN discount <= 0.3 THEN 'Medium Discount'
        ELSE 'High Discount'
    END AS discount_segment,
    COUNT(*) AS orders,
    SUM(profit) AS total_profit,
    ROUND(AVG(profit), 2) AS avg_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS margin_pct
FROM ecomm_sales
GROUP BY discount_segment
ORDER BY total_profit DESC;


-- Profit and Discount Level by Product
SELECT 
    discount,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(AVG(profit), 2) AS avg_profit
FROM ecomm_sales
GROUP BY discount
ORDER BY discount;


-- Top 10 Most profitable products and the associated discount level
SELECT 
    product,
    SUM(profit) AS total_profit,
    ROUND(AVG(discount), 2) AS avg_discount
FROM ecomm_sales
GROUP BY product
ORDER BY total_profit DESC
LIMIT 10;













