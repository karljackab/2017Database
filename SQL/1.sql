select count(*) from (select distinct P.Origin,P.Dest from performance P) p;
