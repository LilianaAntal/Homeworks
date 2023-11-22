/* 1 Retrieve all orders and their corresponding customer names, specifically for individuals.
1.1.Retrieve only the rows where the PersonType column in the Person.Person table has the value 'IN' (Individual consumers).
Returns 27659 rows */
SELECT
	SOH.SalesOrderID,
	StatusOrder = CASE SOH.Status
		WHEN '1' THEN 'In process'
		WHEN '2' THEN 'Approved'
		WHEN '3' THEN 'Backordered'
		WHEN '4' THEN 'Rejected'
		WHEN '5' THEN 'Shipped'
		WHEN '6' THEN 'Cancelled'
	END,
	PP.FirstName,
	PP.MiddleName,
	PP.LastName,
	PP.PersonType,
	SOH.OrderDate,
	SOH.TotalDue
FROM Sales.SalesOrderHeader AS SOH
JOIN Sales.Customer AS C
	ON SOH.CustomerID = C.CustomerID
JOIN Person.Person AS PP
	ON PP.BusinessEntityID = C.PersonID
WHERE PP.PersonType = 'IN';

/* 1.2.Include the following columns in your results:
	- FirstName, MiddleName, LastName from the Person.Person table.
	- OrderDate, TotalDue from the Sales.SalesOrderHeader table.
Returns: 31465 rows.*/
SELECT
	PP.FirstName,
	PP.MiddleName,
	PP.LastName,
	PP.PersonType,
	SOH.OrderDate,
	SOH.TotalDue
FROM Sales.SalesOrderHeader AS SOH
JOIN Sales.Customer AS C
	ON SOH.CustomerID = C.CustomerID
JOIN Person.Person AS PP
	ON PP.BusinessEntityID = C.PersonID;

/* 2.Retrieve the product names and corresponding categories from the Products table and the ProductCategory table.
Include the following columns in your results:
	Name (use alias ProductName) from the Production.Product table.
	Name (use alias CategoryName) from the Production.ProductCategory table.
Returns: 295 rows.*/
SELECT
	P.Name AS ProductName,
	PSUBC.Name AS CategoryName
FROM Production.Product AS P
JOIN Production.ProductSubcategory AS PSUBC
	ON P.ProductSubcategoryID = PSUBC.ProductSubcategoryID
JOIN PRODUCTION.ProductCategory AS PC
	ON PSUBC.ProductCategoryID = PC.ProductCategoryID;

/* 3. Retrieve a specific product using its location.
Retrieve the product name for the product stored in Subassembly location, Shelf W and Bin 9.
Include the following columns in your results:
	Name (use alias ProductName) from the Production.Product table.
	Quantity from the Production.ProductInventory table.
Results:
	ProductName: HL Mountain Pedal
	Quantity: 153				*/
SELECT
	P.[Name] AS ProductName,
	PINV.Quantity
FROM Production.Product AS P
JOIN Production.ProductInventory AS PINV
	ON P.ProductID = PINV.ProductID
JOIN Production.[Location] AS L
	ON PINV.LocationID = L.LocationID
WHERE L.[Name] = 'Subassembly'
	AND PINV.Shelf = 'W' 
	AND PINV.Bin = 9;
