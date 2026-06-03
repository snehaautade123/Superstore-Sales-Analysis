# Superstore Sales Analysis using SQL & Power BI

## Project Overview

This project focuses on analyzing Superstore sales data using SQL and Power BI.

The objective was to understand business performance, identify loss-making areas, analyze sales and profit trends, and provide recommendations based on data.

## Tools Used

* SQL (PostgreSQL)
* Power BI
* Microsoft Excel

---

## Dataset Information

The dataset contains information about:

* Orders
* Customers
* Products
* Categories
* Sales
* Profit
* Discounts
* Shipping Details
* States and Regions

---

## Data Cleaning

Before analysis, the dataset was cleaned by:

* Checking missing values
* Checking duplicate records
* Converting Order Date and Ship Date into proper date format
* Verifying data types
* Keeping negative profit values because they represent business losses and are important for analysis

---

## Business Questions Analyzed

1. Which category generates the highest profit?
2. Which products generate the highest losses?
3. Which customer segment contributes the most sales?
4. Which states are generating losses?
5. Which shipping mode takes the most time?
6. What is the relationship between discount and profit?
7. Which month has the highest sales?
8. Which sub-categories generate high sales but low profit?

---

## SQL Analysis Findings

### Category Analysis

* Technology generated the highest profit.
* Furniture generated the lowest profit.

### Product Analysis

Top loss-making products included:

* Cubify CubeX 3D Printer Double Head Print
* Lexmark MX611dhe Monochrome Laser Printer
* Cubify CubeX 3D Printer Triple Head Print

### State Analysis

* Texas generated the highest loss.
* Ohio, Pennsylvania, and Illinois also showed losses.

### Shipping Analysis

* Standard Class had the highest average shipping time.
* Same Day had the lowest shipping time.

### Monthly Sales Analysis

* November recorded the highest sales.

### Sub-Category Analysis

* Tables generated high sales but negative profit.
* Bookcases showed lower profitability.

---

## Key Insights

* Texas generated the highest loss.
* Tables had high sales but negative profit.
* Some products generated losses despite strong sales.
* Furniture had higher discounts and lower profit.
* Technology had lower discounts and higher profit.
* Standard Class took the longest shipping time.
* High sales do not always mean high profit.

---

## Recommendations

* Review loss-making products.
* Avoid very high discounts on low-profit products.
* Focus on profitable categories such as Technology.
* Investigate the reasons behind losses in Texas.
* Improve Standard Class shipping performance.
* Maintain a balance between sales, discounts, and profit.

---

## Power BI Dashboard

### Page 1 – Business Overview

KPIs:

* Total Sales
* Total Profit
* Total Orders
* Average Discount
* Average Shipping Days

Visuals:

* Monthly Sales Trend
* Sales by State
* Sales by Category
* Profit by Category

### Page 2 – Problem Analysis

Visuals:

* Top Loss-Making States
* Top Loss-Making Products
* Orders by Segment
* Sales vs Profit by Sub-Category
* Shipping Analysis
* Insights and Recommendations

---

## Project Outcome

This project helped identify important business problems such as loss-making products, high-loss states, discount-related profitability issues, and shipping delays.

The analysis demonstrated how SQL and Power BI can be used together to convert raw data into actionable business insights.
