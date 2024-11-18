-- Data cleaning and transformation for product
SELECT  p.[ProductKey]
      --,[ProductAlternateKey]
      --,[ProductSubcategoryKey]
     -- ,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] As [product Name]
	  ,ps.EnglishProductSubcategoryName As [Product Sub Category]
	  ,pc.EnglishProductCategoryName As [Product Category]
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
     -- ,[FinishedGoodsFlag]
      ,p.[Color] As [Product Color]
      --,[SafetyStockLevel]
      --[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] As [Product size]
      --,[SizeRange]
     -- ,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine]
      --,[DealerPrice]
      --,[Class]
     -- ,[Style]
      ,p.[ModelName] As [Product Model Name]
      --,[LargePhoto]
      ,p.[EnglishDescription] As [Product Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
     -- ,[ArabicDescription]
     --- ,[HebrewDescription]
     -- ,[ThaiDescription]
     -- ,[GermanDescription]
      ---,[JapaneseDescription]
      --,[TurkishDescription]
     -- ,[StartDate]
     -- ,[EndDate]
     -- ,[Status]
	, ISNULL(p.[status], 'outdated') as status
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] As p
  LEFT JOIN 
  [dbo].[DimProductSubcategory] As ps
  ON
  p.ProductSubcategoryKey = ps.ProductSubcategoryKey
  LEFT JOIN
  [dbo].[DimProductCategory] As Pc
  ON
  ps.ProductCategoryKey = pc.ProductCategoryKey

