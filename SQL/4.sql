create index idx_TailNum on performance(TailNum);
create index idx_tailnum on plane(tailnum);

select model, avg(Distance/ActualElapsedTime) as velocity
from(
	select model,ActualElapsedTime,Distance
	from performance P,plane where P.TailNum=plane.tailnum
)A
where  ActualElapsedTime!=0 and model is not NULL
group by model;

drop index idx_TailNum on performance;
drop index idx_tailnum on plane;
