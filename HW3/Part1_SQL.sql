--Delete all rows with population = 0. Perform further data cleaning for other attributes, as necessary.
delete from expectancy where Population is 0 or Population is null;

select * from expectancy;

--Display total count of countries after data cleaning.
select count(Country) from expectancy;

--List of countries with the highest and lowest average mortality rates (years 2010-2015)
select Country, Adult_Mortality, year from expectancy
where Adult_Mortality = (select max(Adult_Mortality) from expectancy)
or Adult_Mortality = (select min(Adult_Mortality) from expectancy) and year between 2010 and 2015
group by Country;

--List of countries with the highest and lowest average population (years 2010-2015)
select Country, avg(Population) as Avg_Population from expectancy
where year between 2010 and 2015
group by Country;

--List of countries with the highest and lowest average GDP (years 2010-2015)


--List of countries with the highest and lowest average Schooling  (years 2010-2015)

--Which countries have the highest and lowest average alcohol consumption (years 2010-2015)?

--Do densely populated countries tend to have lower life expectancy?
