-- Co-locate customer documents and sales documents in the same container (partitioned by CustomerId)
-- Co-locate Category and Tag in the same container (partitioned by Type)

SELECT * FROM product_metadata_2 c WHERE c.Type = "Category"
SELECT * FROM products_1 c WHERE c.ProductCategoryName='Sports, Shoes & Health'
SELECT * FROM sales_orders_1 s WHERE s.CustomerId = '7'
