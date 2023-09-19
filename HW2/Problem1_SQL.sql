-- B: replace all missing values in a column by the average. 
update USArrests
set Assault = (select avg(Assault) from USArrests) where Assault = null;

select * from USArrests;

-- C:
select min(Murder) as "Murder Min", max(Murder) as "Murder Max", variance(Murder) as "Murder Variance", stdev(Murder) as "Murder Standard Deviation"
from USArrests;

select min(Assault) as "Assault Min", max(Assault) as "Assault Max", variance(Assault) as "Assault Variance", stdev(Assault) as "Assault Standard Deviation"
from USArrests;

select min(UrbanPop) as "UrbanPop Min", max(UrbanPop) as "UrbanPop Max", variance(UrbanPop) as "UrbanPop Variance", stdev(UrbanPop) as "UrbanPop Standard Deviation"
from USArrests;

-- D:
  -- Which state has the maximum murder rate?
select State, max(Murder)
from USArrests;
  -- Georgia: 17.4

  -- List of states in ascending order of urban population percentages.
select State, UrbanPop
from USArrests
order by UrbanPop asc;

  -- How many states have higher murder rates than Arizona? List those states.
select State
from USArrests
where Murder > (Select Murder from USArrests where State = 'Arizona');
