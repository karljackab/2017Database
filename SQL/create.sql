create table performance(
Year int,
Month int,
DayofMonth int,
DayOfWeek int,
DepTime int,
CRSDepTime int,
ArrTime int,
CRSArrTime int,
UniqueCarrier char(5),
FlightNum int,
TailNum char(10),
ActualElapsed int,
CRSElapsedtime int,
AirTime int,
ArrDelay int,
DepDelay int,
Origin char(5),
Dest char(5),
Distance int,
TaxiIn int,
TaxiOut int,
Cancelled int,
CancellationCode text,
Diverted int,
CarrierDelay int,
WeatherDelay int,
NASDelay int,
SecurityDelay int,
LateAircraftDelay int);

create table airports(
iata char(10),
airport text,
city text,
state char(5),
country char(10),
lat double,
lon double);

create table plane(
tailnum char(10),
type char(20),
manufacturer char(20),
issue_data text,
model char(20),
status text,
aircraft_type text,
engine_type text,
year int);


