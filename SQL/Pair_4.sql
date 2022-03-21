USE Northwind;

/*1 productos + baratos y caros*/
SELECT MIN(UnitPrice) AS 'LowestPrice'
FROM Products;

SELECT MAX(UnitPrice) AS 'highestPrice'
FROM Products;

/*2  precio medio de todos los productos*/
SELECT AVG(UnitPrice) AS 'preciomedio'
FROM Products;

/*3 Carga máxima y mínima de los pedidos de UK*/
SELECT MIN(Freight)
FROM Orders
WHERE ShipCountry = 'UK';

SELECT MAX(Freight)
FROM Orders
WHERE ShipCountry = 'UK';

/*4 productos que se venden por encima de preciomedio*/
SELECT AVG(UnitPrice) AS 'preciomedio'
FROM Products;

SELECT ProductID, ProductName, Unitprice
FROM Products
WHERE UnitPrice >= 'preciomedio';

/*5 productos descontinuados*/
SELECT COUNT(ProductID)
FROM Products
WHERE Discontinued = '1';

/*6 productid y productname de productos no descontinuados; solo 10 con id + elevado*/
SELECT ProductID, ProductName
FROM Products
WHERE NOT Discontinued = '1'
ORDER BY ProductID DESC
LIMIT 10;
