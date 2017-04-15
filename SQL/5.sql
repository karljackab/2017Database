create index idx_iata on airports(iata);

select origin,dest,zone
from(
	select distinct p.Origin as origin,p.Dest as dest,floor(abs(A1.lat-A2.lat)/15) as zone
	from performance p,airports A1,airports A2
	where p.Origin=A1.iata and p.Dest=A2.iata
) P
order by zone desc,origin,dest limit 50;

drop index idx_iatav on airports;

