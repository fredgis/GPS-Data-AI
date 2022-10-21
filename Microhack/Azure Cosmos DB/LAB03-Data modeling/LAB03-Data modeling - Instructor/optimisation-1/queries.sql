-- Embed SalesOrderDetail in SalesOrder document
-- Embed Category and Tag in Product document

SELECT * FROM categories c

SELECT * FROM products_1 c WHERE c.CategoryName='Sports, Shoes & Health'

SELECT * FROM sales_orders_1 s WHERE s.CustomerId = '7'
