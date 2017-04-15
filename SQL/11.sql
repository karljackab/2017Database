select P.Year,count(*) from performance P where convert(Distance/100,signed)<=10 group by P.Year order by P.Year;

select P.Year,count(*) from performance P where convert(Distance/100,signed)>35 group by P.Year order by P.Year;
