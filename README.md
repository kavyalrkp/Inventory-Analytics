# Solving Inventory Inefficiencies — Urban Retail Co

## 📌 Project Overview
This project analyses inventory performance for **Urban Retail Co** using SQL analytics and an interactive Excel dashboard.  
The primary objective was to **identify inefficiencies in inventory management** by tracking and visualising key performance indicators (KPIs), including overstocked products, understocked products, forecast accuracy, and sales performance.

## 🛠 Tools & Technologies
- **MySQL** — for running analytical SQL queries and generating results.
- **Excel (PivotTables, PivotCharts, Slicers)** — for building an interactive KPI dashboard.

## 📊 Data Description
The dataset includes:
- `Date`
- `Store ID`
- `Product ID`
- `Category`
- `Region`
- `Inventory Level`
- `Units Sold`
- `Units Ordered`
- `Demand Forecast`
- `Price`
- `Discount`
- `Weather Condition`
- `Holiday/Promotion`
- `Competitor Pricing`
- `Seasonality`
- `AbsError` (Absolute Forecast Error)

## 📈 Key Features of the Dashboard
- **KPI Cards**
  - Total number of unique products
  - Total units sold
  - Average forecast error
  - Overall forecast accuracy
- **Overstocked Products** — Identifies products with inventory levels above a defined threshold.
- **Low Stock Products** — Identifies products with inventory levels below a defined threshold.
- **Forecast Error Trend Chart** — Visualises the monthly variation in forecast accuracy.
- **Interactive Filters (Slicers)** — Filter results by region, category, and store.

## 📌 Methodology
1. **Data Extraction** — Ran SQL queries to generate:
   - Stock report per product
   - Low-selling products
   - Top-selling products
   - Overstocked products
   - Forecast vs actual sales
   - Effect of discount on sales
   - Regional stock distribution
2. **Dashboard Creation** — Created KPI cards, pivot tables, pivot charts, and slicers.

