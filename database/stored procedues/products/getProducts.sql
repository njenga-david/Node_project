USE Njenga;
GO

CREATE OR ALTER PROCEDURE getProducts
AS
BEGIN
    SELECT * FROM products;
END;
GO
