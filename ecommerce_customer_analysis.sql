SELECT 
	COUNT(*) AS total_orders,
    COUNT(DISTINCT customer_id) AS unique_customers,
    COUNT(*) - COUNT(DISTINCT customer_id) AS repeat_orders
FROM orders;