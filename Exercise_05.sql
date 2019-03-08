
--5. Show OrderQty, the Name and the ListPrice of the order made by CustomerID 29520.

USE AdventureWorks
GO

----
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME = 'OrderQty'

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME = 'name'

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME = 'listPrice'

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME = 'CustomerID'

----

SELECT  [Name], 
		[ListPrice], 
		[OrderQty],
		c.[CustomerID]

FROM			[Production].[Product] p
	INNER JOIN  [Sales].[SpecialOfferProduct] sop
			ON p.[ProductID] = sop.[ProductID]
	INNER JOIN [Sales].[SalesOrderDetail] sod
			ON sop.[SpecialOfferID] = sod.[SpecialOfferID]
			AND  sop.[ProductID] = sod.[ProductID]
	INNER JOIN [Sales].[SalesOrderHeader] soh
			ON sod.[SalesOrderID] = soh.[SalesOrderID]
	INNER JOIN [Sales].[Customer] c
			ON soh.[CustomerID] = c.[CustomerID]
WHERE
		c.CustomerID = 29520

