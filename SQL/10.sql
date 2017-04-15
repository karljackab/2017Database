select Month,avg(ArrDelay) from performance group by Month;

select avg(WeatherDelay) as average from performance P where P.WeatherDelay!=0;

select avg(WeatherDelay) as average from performance;
