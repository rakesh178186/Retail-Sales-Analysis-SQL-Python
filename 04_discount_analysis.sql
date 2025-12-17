-- Impact of discount on average profit
SELECT
    CASE
        WHEN Discount = 0 THEN '0%'
        WHEN Discount BETWEEN 0.01 AND 0.20 THEN '0-20%'
        WHEN Discount BETWEEN 0.21 AND 0.40 THEN '21-40%'
        ELSE '>40%'
    END AS discount_band,
    AVG(Profit) AS avg_profit
FROM orders
GROUP BY discount_band
ORDER BY discount_band;

-- Orders with high discount but negative profit
SELECT
    Order_ID,
    Order_Date,
    Discount,
    Sales,
    Profit
FROM orders
WHERE Discount > 0.3
  AND Profit < 0
ORDER BY Discount DESC;



