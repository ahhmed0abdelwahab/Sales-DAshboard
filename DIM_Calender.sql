SELECT 
[DateKey]
,[FullDateAlternateKey] as Date
--,[DayNumberOfWeek]
,[EnglishDayNameOfWeek] as Day
--,[SpanishDayNameOfWeek]
--,[FrenchDayNameOfWeek]
--,[DayNumberOfMonth]
--,[DayNumberOfYear]
--,[WeekNumberOfYear]
,[EnglishMonthName] as Month
--,[SpanishMonthName]
--,[FrenchMonthName]
,[MonthNumberOfYear] as MonthNo
,[CalendarQuarter] as Quarter
,[CalendarYear] as Year
--,[CalendarSemester]
--,[FiscalQuarter]
--,[FiscalYear]
--,[FiscalSemester]
FROM
	[AdventureWorksDW2019].[dbo].[DimDate]
where
	CalendarYear >= 2019