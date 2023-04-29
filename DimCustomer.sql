/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [CustomerKey]
      ,[FirstName] AS [First Name]
      --,[MiddleName] AS [Middle Name]
      ,[LastName] AS [Last Name],
	 [FirstName] + ' ' + [LastName] AS [Full Name],
       case Gender when 'M' then 'Male' when 'F' then 'Female' End As Gender
      ,[DateFirstPurchase] AS DateFirstPurchase,
  g.city AS [Customer City] -- Joined in Customer City from Geography Table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered List by CustomerKey