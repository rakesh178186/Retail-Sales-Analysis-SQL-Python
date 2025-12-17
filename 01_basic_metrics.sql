-- Total orders, total quantity, total sales, total profit
SELECT
    COUNT(*)        AS total_orders,
    SUM(Quantity)   AS total_quantity,
    SUM(Sales)      AS total_sales,
    SUM(Profit)     AS total_profit
FROM orders;

-- Yearly sales and profit
SELECT
    YEAR(Order_Date) AS order_year,
    SUM(Sales)       AS total_sales,
    SUM(Profit)      AS total_profit
FROM orders
GROUP BY YEAR(Order_Date)
ORDER BY order_year;

