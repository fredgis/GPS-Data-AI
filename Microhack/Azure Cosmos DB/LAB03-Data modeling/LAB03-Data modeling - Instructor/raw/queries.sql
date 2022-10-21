-- 1 container per table


SELECT * FROM categories c

SELECT VALUE c.CategoryId FROM categories c WHERE c.CategoryName = 'Clothing, Home & Computers'
SELECT * FROM product_categories c WHERE c.CategoryId = '3'
SELECT * FROM products c WHERE c.ProductId IN ('0', '4', '5')

SELECT VALUE c.SalesOrderId FROM sales_orders c WHERE c.CustomerId = '7'
SELECT * FROM sales_orders_details c WHERE c.SalesOrderId IN ('7','6')
