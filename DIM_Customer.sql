SELECT 
c.customerkey as CustomerKey
--      ,[GeographyKey]
--      ,[CustomerAlternateKey]
--      ,[Title]
,c.FirstName as [First Name]
--      ,[MiddleName]
,c.LastName as [Last Name]
,c.firstname+' '+c.lastname as [Full Name]
--      ,[NameStyle]
--      ,[BirthDate]
--      ,[MaritalStatus]
--      ,[Suffix]
,case c.gender when 'M' then 'Male' when 'F' then 'Female' end as Gender
--      ,[Gender]
--      ,[EmailAddress]
--      ,[YearlyIncome]
--      ,[TotalChildren]
--      ,[NumberChildrenAtHome]
--      ,[EnglishEducation]
--      ,[SpanishEducation]
--      ,[FrenchEducation]
--      ,[EnglishOccupation]
--      ,[SpanishOccupation]
--      ,[FrenchOccupation]
--      ,[HouseOwnerFlag]
--      ,[NumberCarsOwned]
--      ,[AddressLine1]
--      ,[AddressLine2]
--      ,[Phone]
,c.DateFirstPurchase as DateFirstPurchase
--      ,[CommuteDistance]
,g.city as [Customer City]
FROM 
	AdventureWorksDW2019.dbo.DimCustomer as c
	left join AdventureWorksDW2019.dbo.dimgeography as g on g.geographykey = c.geographykey
order by 
	customerkey asc