
--7. How many Products have ListPrice more than $1000?

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME like '%price%'

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME like '%product%'

----

SELECT COUNT (ProductID)
FROM [Production].[Product] p 
WHERE ListPrice > 1000

