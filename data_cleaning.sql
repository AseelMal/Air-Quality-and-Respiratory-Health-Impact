--Investigate null values in the dataset.
select * from project.main.AirQuality aq 
where country is null;

Delete from project.main.AirQuality aq
where country is null;

--(Total number of rows = 31,732)
select count(*) from project.main.AirQuality aq ;

--The "Global Health Statistics Dataset" contained "UK" country values. Therefore, I updated these values in this dataset by changing "United Kingdom" to "UK" using the following SQL update command:
Update project.main.AirQuality aq 
set "COUNTRY" = 'UK'
Where TRIM("COUNTRY")= TRIM('United Kingdom');

--Since the required data includes "Country," "Year," and "AQI," and given that AQI is recorded for each city within each country, I calculated the average AQI for each country and year using the following query. The other columns were excluded, and a view was created:
create view AQI as
select country, year, avg(AQI) as avg_AQI
from project.main.AirQuality aq 
group by country,
YEAR 
order by country,
year;

--(Total number of rows = 689)
 Select count(*) from AQI;

--Merging the Datasets

create view AQI_Health as
select AQI.avg_AQI , Health.* 
from AQI
JOIN Health 
on TRIM(AQI.Country) = TRIM(Health.Country)
And AQI.Year = Health.Year ;

--(Total number of rows = 23,397)
 Select count(*) from AQI;


--Total number of countries is 20
SELECT count(distinct country) FROM AQI_Health;

--Data spans over 7 years
 SELECT count(distinct year) FROM AQI_Health;

--Total number of diseases is 20
 SELECT count (distinct "Disease Name") FROM AQI_Health;

