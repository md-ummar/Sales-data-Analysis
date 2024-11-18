-- Script for Data cleaning and Data Tranformation 
--data by removing unwanted columns and renaming the columns 

SELECT [DateKey]
      ,[FullDateAlternateKey] as Date
      ,[DayNumberOfWeek] As DayNum
      ,[EnglishDayNameOfWeek] As Day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      ,[DayNumberOfMonth] As DayMonth
      ,[DayNumberOfYear] As DayYear
      ,[WeekNumberOfYear] As weekNum
      ,[EnglishMonthName] As Month
	  ,LEFT([EnglishMonthName], 3) As MonthShort
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] As MonthNum
      ,[CalendarQuarter] As Quarter
      ,[CalendarYear] As Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE CalendarYear >= 2022
