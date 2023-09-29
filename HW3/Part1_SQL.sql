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
select Country, Population, year from expectancy
where Population = (select max(Population) from expectancy)
or Population = (select min(Population) from expectancy) and year between 2010 and 2015
group by Country;

--List of countries with the highest and lowest average GDP (years 2010-2015)
select Country, GDP, year from expectancy
where GDP = (select max(GDP) from expectancy)
or GDP = (select min(GDP) from expectancy) and year between 2010 and 2015
group by Country;

--List of countries with the highest and lowest average Schooling  (years 2010-2015)
select Country, Schooling, year from expectancy
where Schooling = (select max(Schooling) from expectancy)
or Schooling = (select min(Schooling) from expectancy) and year between 2010 and 2015
group by Country;
--limit by 1 bc two countries with 0
select Country, Schooling, year from expectancy
where Schooling = (select max(Schooling) from expectancy)
or Schooling = (select min(Schooling) from expectancy) and year between 2010 and 2015
group by Country
limit 2;

--Which countries have the highest and lowest average alcohol consumption (years 2010-2015)?
select Country, Alcohol, year from expectancy
where Alcohol = (select max(Alcohol) from expectancy)
or Alcohol = (select min(Alcohol) from expectancy) and year between 2010 and 2015
group by Country;

--Do densely populated countries tend to have lower life expectancy?
-- Yes, as the population gets denser the life expectancy tends to decrease rather than increase.
select Country, Population, Life_expectancy from expectancy
where Population > (select avg(Population) from expectancy)
--and Life_expectancy > (select avg(Life_expectancy) from expectancy)
order by Population desc;
