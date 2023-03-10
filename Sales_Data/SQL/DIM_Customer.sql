-- Cleansed DIM_Customer Table --
SELECT c.CustomerKey AS [CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.FirstName AS [FirstName]
      --,[MiddleName]
      ,c.LastName AS [LastName]
	  ,c.FirstName+' '+c.LastName AS [FullName]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
	  ,CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS [Gender]
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.DateFirstPurchase AS [DateFirstPurchase]
      --,[CommuteDistance]
	  ,g.City AS [CustomerCity]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c,
	[AdventureWorksDW2019].[dbo].[DimGeography] AS g
WHERE c.GeographyKey=g.GeographyKey
ORDER BY c.CustomerKey ASC