select P.DayOfWeek,avg(P.ArrDelay) as delay from performance P group by P.DayOfWeek order by P.DayOfWeek;

select floor(P.CRSDepTime/100),avg(P.ArrDelay) as delay from performance P group by floor(P.CRSDepTime/100) order by floor(P.CRSDepTime/100);
