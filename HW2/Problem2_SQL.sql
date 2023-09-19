-- Display the entire table and its contents
select *
from child_mortality;

-- Which years have the lowest and highest infant mortality years, respectively?
select year, max(Infant_mortality_rate)
from child_mortality;

select year, min(Infant_mortality_rate)
from child_mortality;

  -- Max: 1990 --> 64.8
  -- Min: 2016 --> 30.5

-- In what years the neonatal moortality rates were above average?
select year
from child_mortality
where Neonatal_mortality_rate > (select avg(Neonatal_mortality_rate) from child_mortality);
  --1990, 1991, 1992, 1993, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003

-- Display the sorted infant mortality rates in descending order.
select Infant_mortality_rate
from child_mortality
order by Infant_mortality_rate desc;

-- Display min, max, mean, variance and stadnard deviation for each mortality rate.

  -- Under 5 Mortality Rate:
select min(Under5_mortality_rate) as "Under 5 Min", max(Under5_mortality_rate) as "Under 5 Max",       variance(Under5_mortality_rate) as "Under 5 Variance", stdev(Under5_mortality_rate) as "Under 5 Standard Deviation"
from child_mortality;

  -- Infant Mortality Rate:
select min(Infant_mortality_rate) as "Infant Min", max(Infant_mortality_rate) as "Infant Max", variance(Infant_mortality_rate) as "Infant Variance", stdev(Infant_mortality_rate) as "Infant Standard Deviation"
from child_mortality;

  -- Neonatal Mortality Rate:
select min(Neonatal_mortality_rate) as "Neonatal Min", max(Neonatal_mortality_rate) as "Neonatal Max", variance(Neonatal_mortality_rate) as "Neonatal Variance", stdev(Neonatal_mortality_rate) as "Neonatal Standard Deviation"
from child_mortality;

-- Add a new column called Above_Five Mortality Rate and populate it with appropriate values.


-- Display the entire table again.
select *
from child_mortality;
