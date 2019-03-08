
--3. Show the 'Home' address for Person 'Amanda S. Cook'

USE AdventureWorks
GO

SELECT
	* 
FROM
			   [Person].[Person] p
	INNER JOIN [Person].[BusinessEntityAddress] bea
		ON p.[BusinessEntityID] = bea.[BusinessEntityID] 
	INNER JOIN [Person].[Address] pa
		ON bea.[AddressID] = pa.[AddressID]
	INNER JOIN [Person].[AddressType] at1
		ON bea.[AddressTypeID] = at1.[AddressTypeID]
WHERE
	FirstName = 'Amanda' and LastName = 'Cook'
AND Name = 'Home'

----shows only home address for Person 'Amanda S. Cook'

SELECT
	FirstName, MiddleName, LastName, AddressLine1, AddressLine2, City, StateProvinceID, PostalCode, Name
FROM
			   [Person].[Person] p
	INNER JOIN [Person].[BusinessEntityAddress] bea
		ON p.[BusinessEntityID] = bea.[BusinessEntityID] 
	INNER JOIN [Person].[Address] pa
		ON bea.[AddressID] = pa.[AddressID]
	INNER JOIN [Person].[AddressType] at1
		ON bea.[AddressTypeID] = at1.[AddressTypeID]
WHERE
	FirstName = 'Amanda' and LastName = 'Cook'
AND Name = 'Home'
