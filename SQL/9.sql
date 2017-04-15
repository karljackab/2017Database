create index idx_tailnum on plane(tailnum);
create index idx_TailNum on performance(TailNum);

select a.tailnum,a.delay,pla.year
from
(
	select plane.tailnum as tailnum,avg(P.ArrDelay) as delay
	from performance P,plane 
	where P.TailNum=plane.tailnum 
	group by plane.tailnum 
	order by avg(P.ArrDelay) desc limit 30
) a,plane pla
where pla.tailnum=a.tailnum order by a.delay desc;

drop index idx_tailnum on plane;
drop index idx_TailNum on performance;

