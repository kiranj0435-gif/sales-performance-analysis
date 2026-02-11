# 📊 Sales Performance Analysis

End-to-end sales data analysis project using SQL and Power BI.

---

## 🎯 Project Objective

The goal of this project is to analyze sales data to identify:

- Revenue trends
- Profit performance
- Top-performing products
- Underperforming regions
- Key business insights for decision-making

---

## 🛠 Tools Used

- SQL (Data extraction & analysis)
- Power BI (Dashboard development)
- DAX (KPI calculations)
- Power Query (Data cleaning & transformation)

---

## 📂 Project Workflow

1️⃣ Data Cleaning  
- Handled missing values  
- Standardized date formats  
- Removed duplicates  
- Created calculated columns  

2️⃣ SQL Analysis  
- Total Sales & Profit calculation  
- Top N Products  
- Region-wise performance  
- Monthly sales trend  
- Running totals & ranking  

3️⃣ Power BI Dashboard  
- KPI Cards (Total Sales, Profit, Growth %)  
- Monthly Sales Trend Chart  
- Top 10 Products  
- Region-wise Performance  
- Slicers for dynamic filtering  

---

## 📊 Key KPIs Created

- Total Sales  
- Total Profit  
- Profit Margin %  
- Year-over-Year Growth  
- Top Performing Product  

---

## 📈 Business Insights

- Identified top revenue-generating products  
- Found regions with declining profit margins  
- Observed seasonal sales trends  
- Recommended focus areas for revenue growth  

## 📐 DAX Measures Used

### Total Sales
Total Sales = SUM(sales_dataset[Sales])

### Total Profit
Total Profit = SUM(sales_dataset[Profit])

### Profit Margin %
Profit Margin % = 
DIVIDE([Total Profit], [Total Sales]) * 100

### Year-over-Year Growth
YoY Growth % =
DIVIDE(
    [Total Sales] - CALCULATE([Total Sales], SAMEPERIODLASTYEAR(Date[Date])),
    CALCULATE([Total Sales], SAMEPERIODLASTYEAR(Date[Date]))
) * 100

### Top N Products
Top 5 Sales =
CALCULATE(
    [Total Sales],
    TOPN(5, ALL(sales_dataset[Product_Name]), [Total Sales], DESC)
)


