-- Top 10 customers by sales
SELECT
    Customer_ID,
    Customer_Name,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM orders
GROUP BY Customer_ID, Customer_Name
ORDER BY total_sales DESC
LIMIT 10;

-- Average order value per customer segment
SELECT
    Segment,
    SUM(Sales) / COUNT(DISTINCT Order_ID) AS avg_order_value
FROM orders
GROUP BY Segment;

-- Customer lifetime revenue
SELECT
    Customer_ID,
    Customer_Name,
    SUM(Sales) AS lifetime_revenue
FROM orders
GROUP BY Customer_ID, Customer_Name
ORDER BY lifetime_revenue DESC;

