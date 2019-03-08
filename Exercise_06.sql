
--6. Show Product number and List price of Product of name Paint - Yellow.  

USE AdventureWorks
GO

----

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME = 'ProductNumber'

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME like '%price%'

----

SELECT 
	ProductNumber, ListPrice, Name
FROM 
	[Production].[Product]
WHERE 
	Name = 'Paint - Yellow '

