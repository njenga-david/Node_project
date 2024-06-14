USE Njenga;
GO

CREATE OR ALTER PROCEDURE searchProducts
    @search_term VARCHAR(255)
AS
BEGIN
    SELECT * FROM products
    WHERE product_name LIKE '%' + @search_term + '%';
END;
GO


