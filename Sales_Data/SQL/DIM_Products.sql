-- Cleansed DIM_Products Table--
SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] AS ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] AS ProductName
	  ,pc.[EnglishProductCategoryName] AS [Product Category]
	  ,ps.[EnglishProductSubcategoryName] AS [Sub Category] 
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,p.[Color] AS [Product Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] AS [Product Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] AS [ProductLine]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName] AS [Product ModelName]
      --,[LargePhoto]
      ,p.[EnglishDescription] AS [Product Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
	  --,p.Status
      ,ISNULL (p.Status,'outdated') AS [Product Status]
  FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as p
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS ps ON ps.ProductSubcategoryKey  = p.ProductSubcategoryKey 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY
  p.[ProductKey] ASC