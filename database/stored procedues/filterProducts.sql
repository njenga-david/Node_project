USE Njenga;
GO

CREATE OR ALTER PROCEDURE filterProducts
    @min_price DECIMAL(10, 2),
    @max_price DECIMAL(10, 2),
    @product_name VARCHAR(255)
AS
BEGIN
    SELECT * FROM products
    WHERE price >= @min_price
    AND price <= @max_price
    AND product_name LIKE '%' + @product_name + '%';
END;
GO
