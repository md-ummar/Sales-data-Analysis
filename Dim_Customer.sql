SELECT  c.[CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
     -- ,[Title]
      ,c.[FirstName] As [First Name]
      --,[MiddleName]
      ,c.[LastName] As [Last Name]
	  , c.[firstName] + ' ' + c.[LastName] As FullName  --Concatenated the FirstName and LastName 
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
  ,CASE c.gender when 'M' THEN 'Male' When 'F' Then 'Female' END As Gender   --Used CASE to abbrevate the M as Male and F as Female
      --,[Gender]
     -- ,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      ,c.[EnglishOccupation] As Occupation
      --,[SpanishOccupation]
     -- ,[FrenchOccupation]
      --,[HouseOwnerFlag]
     -- ,[NumberCarsOwned]
     -- ,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.[DateFirstPurchase] As dateFirstPurchased
      --,[CommuteDistance]
	  ,g.[city] As City       --City colummn from the geography table
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] As c
  LEFT JOIN [dbo].[DimGeography] As g
  ON c.[GeographyKey] = g.[GeographyKey]    --left Joined customer table and geography table to get each customer city
  Order By 
  CustomerAlternateKey ASC    --Ordered By customerkey in ascending order
