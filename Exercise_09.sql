--9. How many Products with ListPrice more than $1000 have not been sold?

USE AdventureWorks
GO

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME like '%ListPrice%'

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME like '%sale%'

----------------------------------------------------------------------------

----
-- Shows all products 
----

SELECT COUNT (DISTINCT ProductID)
FROM [Production].[Product] p 
WHERE ListPrice > 1000

----
-- Shows sold products 
----
SELECT COUNT (DISTINCT p.ProductID)
FROM [Production].[Product] p 
INNER JOIN [Sales].[SpecialOfferProduct] sop
	ON p.[ProductID] = sop.[ProductID]
INNER JOIN [Sales].[SalesOrderDetail] sod
	ON sop.[ProductID] = sod.[ProductID]
	AND sop.[SpecialOfferID] = sod.[SpecialOfferID]
WHERE ListPrice > 1000 

----
-- Shows not sold products 
----

SELECT COUNT (DISTINCT p.ProductID)
FROM [Production].[Product] p 
LEFT JOIN [Sales].[SalesOrderDetail] sod
	ON p.[ProductID] = sod.[ProductID]
WHERE ListPrice > 1000  AND sod.[ProductID] IS NULL
