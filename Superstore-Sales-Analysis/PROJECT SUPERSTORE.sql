DROP TABLE IF EXISTS SUPERSTORE;
SET client_encoding = 'WIN1252';
CREATE TABLE SUPERSTORE(
 Row_ID	int primary key,
 Order_ID varchar(100), 	
 Order_Date date,
 Ship_Date date,
 Ship_Mode varchar(100),
 Customer_ID varchar(100),
 Customer_Name varchar(100),
 Segment varchar(100),
 Country varchar(100),
 City varchar(100),
 State varchar(100),
 Postal_Code int,
 Region varchar(20),
 Product_ID varchar(100),
 Category varchar(100),
 Sub_Category varchar(100),
 Product_Name varchar(200),
 Sales numeric(10,2),
 Quantity int, 
 Discount numeric(10,2),
 Profit numeric(10,2)
);
SELECT*FROM SUPERSTORE;
--Which category has the highest profit?
SELECT Category, SUM(Profit) AS total_profit
FROM superstore
GROUP BY Category
ORDER BY total_profit DESC;

--Does Furniture category have higher discounts than Technology?
SELECT Category , 
AVG(Discount) as avg_total_discount from SUPERSTORE
GROUP BY Category
ORDER BY avg_total_discount DESC;

--Find TOP 5 loss-making products
SELECT Product_Name,Product_ID,
SUM(profit) as total_profit FROM SUPERSTORE
GROUP BY Product_Name,Product_ID
ORDER BY total_profit ASC
LIMIT 5;

--Which customer segment generates the highest sales and profit?
SELECT Segment,
SUM(Sales) as highest_sales,
SUM(Profit) as highest_profit FROM SUPERSTORE
GROUP BY Segment 
ORDER BY highest_sales,highest_profit DESC

--Which states are causing the highest losses to the company?
SELECT State,
sum(Profit) as highest_loss FROM SUPERSTORE
GROUP BY State
ORDER BY highest_loss ASC

--Which ship mode takes the highest average shipping time?
SELECT Ship_Mode,
AVG(Ship_Date - Order_Date) AS avg_shipping_days FROM SUPERSTORE
GROUP BY Ship_Mode
ORDER BY avg_shipping_days DESC;

--Does higher discount reduce profit?
SELECT AVG(discount) as avg_discount,
AVG(profit) as avg_profit,Category FROM SUPERSTORE 
GROUP BY Category 
ORDER BY avg_discount DESC;

--Which month has the highest sales?
SELECT EXTRACT(MONTH FROM Order_Date) as month,
SUM(Sales) as total_sales FROM SUPERSTORE
GROUP BY month 
ORDER BY total_sales DESC;

--Which sub-category generates high sales but very low profit?
SELECT Sub_Category,
SUM(Sales) AS SALES,
SUM(Profit) AS PROFIT FROM SUPERSTORE
GROUP BY Sub_Category
ORDER BY SALES DESC;












