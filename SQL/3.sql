select plane.model, count(*) from plane where plane.model like '767%' group by plane.model;
