select distinct model from plane where tailnum not in (select distinct TailNum from performance where Year=2008);
