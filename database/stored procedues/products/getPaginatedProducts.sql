USE Njenga;
GO

CREATE OR ALTER PROCEDURE getPaginatedProducts
    @offset INT,
    @limit INT
AS
BEGIN
    SELECT * FROM (
        SELECT *, ROW_NUMBER() OVER (ORDER BY product_id) AS RowNum
        FROM products
    ) AS ProductsWithRowNumbers
    WHERE RowNum > @offset AND RowNum <= @offset + @limit;
END;
GO
