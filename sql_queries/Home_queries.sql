use ecomm;

-- MoM Sales & Profit

WITH monthly AS (
    SELECT
        DATE_FORMAT(Order_Date, '%Y-%m')  AS month,
        ROUND(SUM(Sales), 2)              AS total_sales,
        ROUND(SUM(Profit), 2)             AS total_profit
    FROM ecomm_sales
    GROUP BY month
)
SELECT
    month,
    total_sales,
    ROUND(total_sales - LAG(total_sales) OVER (ORDER BY month), 2)        AS sales_diff,
    ROUND((total_sales - LAG(total_sales) OVER (ORDER BY month))
        / LAG(total_sales) OVER (ORDER BY month) * 100, 2)                AS sales_mom_pct,
    total_profit,
    ROUND(total_profit - LAG(total_profit) OVER (ORDER BY month), 2)      AS profit_diff,
    ROUND((total_profit - LAG(total_profit) OVER (ORDER BY month))
        / LAG(total_profit) OVER (ORDER BY month) * 100, 2)               AS profit_mom_pct
FROM monthly
ORDER BY month;

-- QoQ%

WITH quarterly AS (
    SELECT
        CONCAT('Q', QUARTER(Order_Date)) AS quarter,
        SUM(Sales) AS total_sales,
        SUM(Profit) AS total_profit
    FROM ecomm_sales
    GROUP BY quarter
)

SELECT
    quarter,
    ROUND(total_sales, 2) AS total_sales,
    ROUND(total_profit, 2) AS total_profit,

    ROUND(total_profit / total_sales * 100, 2) AS profit_margin_pct,

    ROUND(total_sales / SUM(total_sales) OVER () * 100, 2) AS revenue_share_pct,

    -- Sales QoQ %
    ROUND(
        (total_sales - LAG(total_sales) OVER (ORDER BY quarter)) /
        LAG(total_sales) OVER (ORDER BY quarter) * 100,
    2) AS sales_pct_change,

    -- Profit QoQ %
    ROUND(
        (total_profit - LAG(total_profit) OVER (ORDER BY quarter)) /
        LAG(total_profit) OVER (ORDER BY quarter) * 100,
    2) AS profit_pct_change

FROM quarterly
ORDER BY quarter;

-- Sales by Category

SELECT
    Product_Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(
        SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER (),
        2
    ) AS revenue_share_pct
FROM ecomm_sales
GROUP BY Product_Category
ORDER BY total_sales DESC;

-- AVG Profit Margin per Category 

SELECT
    Product_Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(
        SUM(Profit) / NULLIF(SUM(Sales), 0) * 100,
        2
    ) AS avg_profit_margin_pct
FROM ecomm_sales
GROUP BY Product_Category
ORDER BY avg_profit_margin_pct DESC;




