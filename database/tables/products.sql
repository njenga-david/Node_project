-- schema.sql
CREATE TABLE products (
  product_id INT PRIMARY KEY ,
  product_name VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
 
);
