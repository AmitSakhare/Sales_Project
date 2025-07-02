--WAQ to  Featch all data 
select * from Sales1;

--WAQ to Null PartyNull Value to Change Name
Select *,ISNULL(Distributor,'ExportParty') as PartyName from Sales1;

-- WAQ to Sales of Local and Export
select round(sum(NetAmount),2),Description as Area from Sales1 group by Description;

-- WAQ to MonthWise sales 
select Distributor as PartyName, Billdate, sum(NetAmount) from Sales1 
where Billdate between '2022-04-01' And '2022-04-30'  group by Distributor,Billdate ;

-- WAQ To Find Avg Rates Distributor and ConsigneeName wise
select DISTINCT Distributor as PartyName,ConsigneeName, avg(round((GAmount/TotWeight),2)) as rate 
from Sales1 where Distributor is not null group by Distributor,ConsigneeName;




