USE Northwind;

/*1 10 productos según su ID, nomnbres y precios*/
SELECT ProductID, ProductName, UnitPrice
FROM Products
ORDER BY ProductID
LIMIT 10;

/* 2 últimos 10 productos según su ID*/
SELECT ProductID, ProductName, UnitPrice
FROM Products
ORDER BY ProductID DESC
LIMIT 10;

/* 3 Pedidos distintos, eliminando entradas duplicadas*/
SELECT DISTINCT OrderID
FROM OrderDetails; 

/* 4 =3 pero solo 2 primeros pedidos*/
SELECT DISTINCT OrderID
FROM OrderDetails
LIMIT 2;

/* 5 3 pedidos con mayor montaje = ImporteTotal*/
SELECT UnitPrice * Quantity - Discount AS ImporteTotal
FROM OrderDetails
ORDER BY ImporteTotal DESC
LIMIT 3;

/* 6 queremos ID de los pedidos 5 hasta 10 de ImporteTotal*/
SELECT OrderID, UnitPrice * Quantity - Discount AS ImporteTotal
FROM OrderDetails
ORDER BY ImporteTotal DESC
LIMIT 5
OFFSET 5;

/* 7 Lista de las categorías que componen los pedidos = NombreDeCategoria*/
SELECT CategoryName AS NombreDeCategoria
FROM Categories;

/* 8 Añadir 5 días de retraso a la fecha de envío*/
SELECT DATE_ADD("ShippedDate", INTERVAL 5 DAY) AS FechaRetrasada
FROM Orders;
