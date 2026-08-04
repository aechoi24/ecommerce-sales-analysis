-- =====================================================================================
	-- Business Question: Which product categories generated he highest revenue?
	-- Tables Used: order_items, products
	-- Skills: JOIN, GROUP BY, SUM, ORDER BY
-- =====================================================================================
SELECT
	p.product_cattegory_name,
    SUM(OI.price) AS revenue
FROM order_items oi
JOIN products p
	ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY revenue DESC;
