/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [DateKey]
      ,[FullDateAlternateKey] as Date
      ,[EnglishDayNameOfWeek] AS Day
      ,[EnglishMonthName] AS Month,
	  LEFT([EnglishMonthName],3) AS Monthshort	     	  	  
      ,[MonthNumberOfYear] AS MonthNum
      ,[CalendarQuarter] AS CalendarQuarter
      ,[CalendarYear] As Year
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  where CalendarYear >= 2019