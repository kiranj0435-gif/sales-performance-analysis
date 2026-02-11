-- ========================================
-- SALES PERFORMANCE ANALYSIS
-- ========================================

-- 1️⃣ Total Sales
SELECT 
    SUM(Sales) AS Total_Sales
FROM sales_dataset;

-- 2️⃣ Total Profit
SELECT 
    SUM(Profit) AS Total_Profit
FROM sales_dataset;

-- 3️⃣ Profit Margin %
SELECT 
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS Profit_Margin_Percentage
FROM sales_dataset;

-- 4️⃣ Monthly Sales Trend
SELECT 
    DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
    SUM(Sales) AS Monthly_Sales
FROM sales_dataset
GROUP BY Month
ORDER BY Month;

-- 5️⃣ Top 5 Products by Sales
SELECT 
    Product_Name,
    SUM(Sales) AS Total_Sales
FROM sales_dataset
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 5;

-- 6️⃣ Region-wise Sales Performance
SELECT 
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales_dataset
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 7️⃣ Running Total of Sales
SELECT 
    Order_Date,
    SUM(Sales) OVER (ORDER BY Order_Date) AS Running_Total
FROM sales_dataset;

-- 8️⃣ Rank Products by Sales
SELECT 
    Product_Name,
    SUM(Sales) AS Total_Sales,
    RANK() OVER (ORDER BY SUM(Sales) DESC) AS Sales_Rank
FROM sales_dataset
GROUP BY Product_Name;
