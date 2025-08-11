SELECT *
FROM dataset.inventory_forecasting;
select count(*) from dataset.inventory_forecasting;
describe dataset.inventory_forecasting;

-- Stock Status Report per Product --
/*Shows each product in each store along with how many units are in stock.
  Sorts by lowest stock first, so we can immediately see which items are running low.*/
select `Product ID`, `Store ID`, `Inventory Level`
from dataset.inventory_forecasting
ORDER BY `Inventory Level`;

/* Filters products where stock is below 20 units.
   These are the priority products for restocking.*/
select `Product ID`, `Store ID`, `Inventory Level`
FROM dataset.inventory_forecasting
WHERE `Inventory Level` < 20;

-- Top Selling Products --
/* Adds up all units sold per product
    and shows the top 10 best-selling products*/
SELECT `Product ID`, SUM(`Units Sold`) AS Total_Sold
FROM dataset.inventory_forecasting
GROUP BY `Product ID`
ORDER BY Total_Sold DESC
LIMIT 10;

-- Overstocked Products (Inventory > 200) --
/* Filters out products that have too much stock*/
SELECT `Product ID`, `Store ID`, `Inventory Level`
FROM dataset.inventory_forecasting
WHERE `Inventory Level` > 200;

-- Compare Forecast vs Actual Sales --
/*Compares how much was predicted (forecast) vs how much actually sold*/
SELECT `Product ID`, `Store ID`, `Units Sold`, `Demand Forecast`,
       (`Units Sold` - `Demand Forecast`) AS Difference
FROM dataset.inventory_forecasting
ORDER BY ABS(`Units Sold` - `Demand Forecast`) DESC;

-- Effect of Discounts on Sales --
/*Groups products by the discount applied and shows the average sales per discount level*/
SELECT `Discount`, AVG(`Units Sold`) AS Avg_Sales
FROM dataset.inventory_forecasting
GROUP BY `Discount`
ORDER BY `Discount`;

-- Regional Stock Distribution --
/*Adds up total stock in each region*/
SELECT `Region`, SUM(`Inventory Level`) AS Total_Inventory
FROM dataset.inventory_forecasting
GROUP BY `Region`;

