# E-Commerce Sales Analytics Dashboard
An end-to-end data analytics project analyzing the Olist Brazilian E-Commerce dataset, covering data cleaning, SQL-based KPI analysis, and an interactive Power BI dashboard.

# 📊 Overview
This project analyzes ~100K orders from a real Brazilian e-commerce platform (Olist) to uncover insights around delivery performance, customer behavior, revenue trends, and payment patterns.

# 🛠️ Tools Used
**Python (Pandas)** – Data cleaning, merging multiple relational tables, feature engineering
**SQL (SQLite)** – KPI calculation and business queries
**Power BI** – Interactive dashboard with slicers and visuals
**Google Colab** – Development environment

# 📁 Dataset
Olist Brazilian E-Commerce dataset (public, via Kaggle) — 9 relational tables including orders, customers, order items, products, payments, and reviews.

# 🔍 Methodology
1. Loaded and cleaned 9 relational CSV files in Python (Pandas)
2. Converted date fields, engineered new features (`delivery_days`, `is_late`)
3. Merged tables to build a unified master dataset (customers, orders, items, products, payments, reviews)
4. Wrote SQL queries to compute key business KPIs
5. Built an interactive Power BI dashboard with year-wise filtering

# 💡 Key Insights
- **Late deliveries hurt satisfaction significantly** — orders delivered late received an average review score of 2.57/5 vs 4.21/5 for on-time orders.
- **Late orders take ~3x longer** — averaging 31 days vs 10.4 days for on-time deliveries.
- **~8% of all orders** were delivered after their estimated delivery date.
- **Top revenue categories**: Health & Beauty and Watches & Gifts led total revenue (~R$12.5L each).
- **Low repeat-purchase rate** — the vast majority of customers made only one purchase, highlighting a retention opportunity.
- **Credit card dominates payments**, used in ~74% of all transactions.
- Revenue growth peaked in **November 2017 (+51.6% MoM)**, likely tied to Black Friday seasonality, before stabilizing through 2018.

## 📈 Dashboard
The Power BI dashboard includes:
- KPI cards (Total Revenue, Total Orders, Average Rating)
- Revenue by product category
- Order status breakdown
- Late delivery vs. review score comparison
- Month-over-month order trend
- Payment method breakdown
- Interactive year slicer

## 📂 Files

- `Untitled0.ipynb` – Python/Pandas data cleaning and SQL analysis notebook
- `ecommerce olist sales analytics dashboard.pbix` – Power BI dashboard file

## 👤 Author

Harsh.
