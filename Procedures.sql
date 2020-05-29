use ecommerce
CREATE PROCEDURE InsertProduct
@productName nvarchar(75),
@productDescription nvarchar(200),
@stockQuantity int,
@price decimal,
@categoryId int
AS
BEGIN
INSERT INTO Product(ProductName,ProductDescription,StockQuantity,Price,CategoryId)
VALUES (@productName,@productDescription,@stockQuantity,@price,@categoryId)
END

EXEC InsertProduct 
@productName='MSI XCF',
@productDescription='I7 8700K 16GB RAM',
@stockQuantity=20,
@price=9000,
@categoryId=1

CREATE PROCEDURE UpdateProduct
@id int,
@productName nvarchar(75),
@productDescription nvarchar(200),
@stockQuantity int,
@price decimal,
@categoryId int
AS
BEGIN

UPDATE Product SET 
ProductName=@productName,
ProductDescription=@productDescription,
StockQuantity=@stockQuantity,
Price=@price,
CategoryId=@categoryId
WHERE id=@id
END

EXEC UpdateProduct
@id=14,
@productName='Dell xps',
@productDescription='core i7 3.8ghz ram-32gb',
@stockQuantity=30,
@price=11000,
@categoryId=1

ALTER PROCEDURE DeleteProduct
@id int
AS
BEGIN
DELETE FROM Product WHERE id=@id
END

EXEC DeleteProduct @id=14

CREATE PROCEDURE GetById
@id int
AS
BEGIN
SELECT * FROM Product WHERE id=@id
END

EXEC GetById @id=1

CREATE PROCEDURE GetList
AS
BEGIN
SELECT * FROM Product
END

EXEC GetList


SELECT * FROM Product

