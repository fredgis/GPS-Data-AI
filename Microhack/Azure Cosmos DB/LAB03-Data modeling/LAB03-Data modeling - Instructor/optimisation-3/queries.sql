-- Add SalesOrderCount field to customer documents
-- Increment SalesOrderCount with Stored Procedure

SELECT * FROM product_metadata_2 c WHERE c.Type = "Category"
SELECT * FROM products_1 c WHERE c.ProductCategoryName='Sports, Shoes & Health'
SELECT * FROM sales_orders_1 s WHERE s.CustomerId = '7'
SELECT TOP 2 * FROM customers_3 c WHERE c.Type = 'Customer' ORDER BY c.SalesOrderCount DESC
