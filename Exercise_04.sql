
--4. Show all people ('Person') with an address in City 'Colma'.

USE AdventureWorks
GO

SELECT
	FirstName, Middlename, LastName, City
FROM
			   [Person].[person] p
	INNER JOIN [Person].[BusinessEntityAddress] bea
		ON p.[BusinessEntityID] = bea.[BusinessEntityID] 
	INNER JOIN [Person].[Address] pa
			ON  bea.[AddressID] = pa.[AddressID]
		WHERE city = 'Colma'

