# SQL Queries Documentation
This document explains all **25 advanced time intelligence SQL queries** included in this project.

---

## Query 1 – Total Sales by Day

**Purpose:** Calculates total sales for each day across all stores and products.

**Business Insight:** Helps identify peak days for sales, track daily trends, and prepare inventory and staffing.

**SQL Code:**
```sql
SELECT d.full_date, SUM(f.sales_amount) AS total_sales
FROM fact_sales f
JOIN dim_date d ON f.date_key = d.date_key
GROUP BY d.full_date
ORDER BY d.full_date;

