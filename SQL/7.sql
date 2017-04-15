create index idx_TailNum on performance(TailNum);
create index idx_tailnum on plane(tailnum);

select manu from
(
	select plane.manufacturer as manu,avg(P.ArrDelay) as average
	from plane,performance P
	where P.TailNum=plane.tailnum 
	group by plane.manufacturer
) data
where average>30;

drop index idx_Tailnum on performance;
drop index idx_tailnum on plane;
