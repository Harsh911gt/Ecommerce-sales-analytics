-- KPI Queries for E-Commerce Sales Analytics
-- Purpose: Calculate key business metrics for Power BI dashboard

-- 1. On-time vs Late Delivery Analysis
SELECT 
  CASE WHEN delivery_days <= 0 THEN 'On-Time'
       ELSE 'Late' END as delivery_status,
  COUNT(*) as order_count,
  ROUND(AVG(review_score), 2) as avg_rating,
  ROUND(AVG(delivery_days), 1) as avg_delivery_days
FROM orders_master
GROUP BY delivery_status;

-- 2. Revenue by Product Category
SELECT 
  product_category,
  COUNT(*) as order_count,
  ROUND(SUM(price), 2) as total_revenue
FROM order_items
GROUP BY product_category
ORDER BY total_revenue DESC;

-- 3. Payment Method Distribution
SELECT 
  payment_type,
  COUNT(*) as order_count,
  ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM payments), 2) as percentage
FROM payments
GROUP BY payment_type;

-- 4. Monthly Order Trends
SELECT 
  DATE(order_purchase_timestamp) as order_date,
  COUNT(*) as daily_orders
FROM orders
GROUP BY order_date
ORDER BY order_date;
