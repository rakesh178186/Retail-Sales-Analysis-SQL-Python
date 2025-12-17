-- Sales by region and segment
SELECT
    Region,
    Segment,
    SUM(Sales) AS total_sales
FROM orders
GROUP BY Region, Segment
ORDER BY Region, total_sales DESC;

-- Average shipping delay by ship mode
SELECT
    Ship_Mode,
    AVG(DATEDIFF(Ship_Date, Order_Date)) AS avg_ship_days
FROM orders
GROUP BY Ship_Mode
ORDER BY avg_ship_days;
