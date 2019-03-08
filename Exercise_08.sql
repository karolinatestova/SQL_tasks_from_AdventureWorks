--8. How many Products with ListPrice more than $1000 have been sold?

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME like '%price%'

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME like '%product%'

----

SELECT SUM (OrderQty)
FROM [Production].[Product] p 
INNER JOIN [Sales].[SpecialOfferProduct] sop
	ON p.[ProductID] = sop.[ProductID]
INNER JOIN [Sales].[SalesOrderDetail] sod
	ON sop.[ProductID] = sod.[ProductID]
	AND sop.[SpecialOfferID] = sod.[SpecialOfferID]
WHERE ListPrice > 1000

