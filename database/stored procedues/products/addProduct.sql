USE Njenga;
GO

CREATE OR ALTER PROCEDURE addProduct
    @product_id INT,
    @product_name VARCHAR(255),
    @price DECIMAL(10, 2)
  
AS
BEGIN
    INSERT INTO products (product_id, product_name, price)
    VALUES (@product_id, @product_name, @price);
END;
GO
