1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.
   Ans: Product_category refers to what we have similar to in amazom, flipkart etc applications where the product_category is electronics, appliances, fashion and furniture etc. And each product_category can have multiple products. For example headphones, speaker, smart-watch etc in electronics category. Hence the relationship from PRODUCT TO PRODUCT_CATEGORY AS MANY TO ONE.

2. How could you ensure that each product in the "Product" table has a valid category assigned to it?
   Ans: This can be established through FOREIGN KEY relationship which ensures referential integrity. Referential integrity refers to no unwanted data which is not present in product_category table is populated in product table of category_id.
