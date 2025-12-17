-- Sales and profit by category and sub-category
SELECT
    Category,
    Sub_Category,
    SUM(Sales)  AS total_sales,
    SUM(Profit) AS total_profit
FROM orders
GROUP BY Category, Sub_Category
ORDER BY total_sales DESC;

-- Top 5 most profitable sub-categories
SELECT
    Sub_Category,
    SUM(Profit) AS total_profit
FROM orders
GROUP BY Sub_Category
ORDER BY total_profit DESC
LIMIT 5;

-- Products with negative total profit (loss-making)
SELECT
    Product_ID,
    Product_Name,
    SUM(Sales)  AS total_sales,
    SUM(Profit) AS total_profit
FROM orders
GROUP BY Product_ID, Product_Name
HAVING SUM(Profit) < 0
ORDER BY total_profit;


