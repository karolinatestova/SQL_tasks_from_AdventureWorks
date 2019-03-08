--1. Show the first name and the email address of Person 'Kramer' (Kramer is LastName).

USE AdventureWorks
GO

SELECT  FirstName, 
		EmailAddress
FROM			[Person].[Person] 
	INNER JOIN  [Person].[EmailAddress]
		ON  [Person].[Person].BusinessEntityID = [Person].[EmailAddress].BusinessEntityID
WHERE LastName = 'Kramer'

