-- Viewing first top 10 rows of data
SELECT
	TOP 10 *
FROM
	[samdutse].[dbo].[hc_99$]

--Grouping energy consume by LCLid, sum and average energy descending
SELECT
	LCLid,
	ROUND(SUM(energy_sum), 2) AS Total_Energy_Consumed,
	ROUND(AVG(energy_sum), 2) AS Avg_Energy_Consumed
FROM
	[samdutse].[dbo].[hc_99$]
GROUP BY
	LCLid
ORDER BY
	Total_Energy_Consumed DESC


-- Retrieve count of all the records for a particular household (LCLid) with highest energy consumption:
SELECT 
	COUNT(*) AS High_LCLid_Count
FROM 
	[samdutse].[dbo].[hc_99$] 
WHERE 
	LCLid = 'MAC000249';

--Grouping energy consume by LCLid, sum and average energy ascending
SELECT
	LCLid,
	ROUND(SUM(energy_sum), 2) AS Total_Energy_Consumed,
	ROUND(AVG(energy_sum), 2) AS Avg_Energy_Consumed
FROM
	[samdutse].[dbo].[hc_99$]
GROUP BY
	LCLid
ORDER BY
	Total_Energy_Consumed ASC;

-- Retrieve count of all the records for a particular household (LCLid) with lowest energy consumption:
SELECT 
	COUNT(*) AS Low_LCLid_Count
FROM 
	[samdutse].[dbo].[hc_99$] 
WHERE 
	LCLid = 'MAC003096';

-- Retrieve the top 10 households with the highest total energy consumption:
SELECT
	TOP 10
	LCLid, 
	ROUND(SUM(energy_sum), 2) as total_energy_consumption 
FROM 
	[samdutse].[dbo].[hc_99$]
GROUP BY 
	LCLid
ORDER BY 
	total_energy_consumption DESC;

-- Retrieve the top 10 households with the lowest total energy consumption:
SELECT
	TOP 10
	LCLid, 
	ROUND(SUM(energy_sum), 2) as total_energy_consumption 
FROM 
	[samdutse].[dbo].[hc_99$]
GROUP BY 
	LCLid
ORDER BY 
	total_energy_consumption ASC;

-- Retrieve the total energy consumption and avearage energy consuption by year:
SELECT
	DATEPART(YEAR, day) AS Year,
	ROUND(SUM(energy_sum), 2) AS total_energy_consumption,
	ROUND(AVG(energy_sum), 2) AS Average_Energy_Consumption
FROM 
	[samdutse].[dbo].[hc_99$]
GROUP BY
	DATEPART(YEAR, day)
ORDER BY
	Average_Energy_Consumption DESC;


--Retrieve the total and average energy consumption for all households by month:
SELECT
	DATEPART(MONTH, day) as month, 
	ROUND(SUM(energy_sum), 2) as total_energy_consumption,
	ROUND(AVG(energy_sum), 2) AS average_energy_consumption
FROM
	[samdutse].[dbo].[hc_99$]
GROUP BY 
	DATEPART(MONTH, day)
ORDER BY
	average_energy_consumption DESC;

--Retrieve the total and average energy consumption for all households by Weekday:
SELECT
	DATEPART(WEEKDAY, day) as Week_Day, 
	ROUND(SUM(energy_sum), 2) as total_energy_consumption,
	ROUND(AVG(energy_sum), 2) AS average_energy_consumption
FROM
	[samdutse].[dbo].[hc_99$]
GROUP BY 
	DATEPART(WEEKDAY, day)
ORDER BY
	average_energy_consumption DESC;

--Retrieve the total and average energy consumption for highest LCLid by year:
SELECT
	DATEPART(YEAR, day) as year, 
	ROUND(SUM(energy_sum), 2) as total_energy_consumption,
	ROUND(AVG(energy_sum), 2) AS average_energy_consumption
FROM
	[samdutse].[dbo].[hc_99$]
WHERE
	LCLid = 'MAC000249'
GROUP BY 
	DATEPART(YEAR, day)
ORDER BY
	average_energy_consumption DESC;

--Retrieve the total and average energy consumption for highest LCLid by month:
SELECT
	DATEPART(MONTH, day) as month, 
	ROUND(SUM(energy_sum), 2) as total_energy_consumption,
	ROUND(AVG(energy_sum), 2) AS average_energy_consumption
FROM
	[samdutse].[dbo].[hc_99$]
WHERE
	LCLid = 'MAC000249'
GROUP BY 
	DATEPART(MONTH, day)
ORDER BY
	average_energy_consumption DESC;

--Retrieve the total and average energy consumption for lowest LCLid by year:
SELECT
	DATEPART(YEAR, day) as year, 
	ROUND(SUM(energy_sum), 2) as total_energy_consumption,
	ROUND(AVG(energy_sum), 2) AS average_energy_consumption
FROM
	[samdutse].[dbo].[hc_99$]
WHERE
	LCLid = 'MAC003096'
GROUP BY 
	DATEPART(YEAR, day)
ORDER BY
	average_energy_consumption DESC;

--Retrieve the total and average energy consumption for lowest LCLid by month:
SELECT
	DATEPART(MONTH, day) as month, 
	ROUND(SUM(energy_sum), 2) as total_energy_consumption,
	ROUND(AVG(energy_sum), 2) AS average_energy_consumption
FROM
	[samdutse].[dbo].[hc_99$]
WHERE
	LCLid = 'MAC003096'
GROUP BY 
	DATEPART(MONTH, day)
ORDER BY
	average_energy_consumption DESC;