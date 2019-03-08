
--2. Show all the addresses for Person 'Amanda S. Cook'

USE AdventureWorks
GO

SELECT FirstName, Middlename, LastName, AddressLine1, AddressLine2, AddressTypeID, City, StateProvinceID, PostalCode
FROM
				[Person].[Person] p
     INNER JOIN [Person].[BusinessEntityAddress] bea
		ON p.BusinessEntityID = bea.BusinessEntityID
	 INNER JOIN [Person].[Address] a
		ON bea.AddressID = a.AddressID
WHERE p.FirstName = 'Amanda' and p.LastName = 'Cook'
