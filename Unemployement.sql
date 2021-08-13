-- Unemployment rate for all OECD Member States from 2000 to 2015

CREATE view Unemployment_OECD
as
SELECT 
  country,
  year_2000,
  year_2005,
  year_2010,
  year_2011,
  year_2012,
  year_2013,
  year_2014,
  year_2015
from Unemployment
WHERE country = 'United States'
  or country = 'Japan'
  or country = 'Mexico'
  or country = 'Germany	'
  or country = 'Australia'
  or country = 'Austria'
  or country = 'Belgium'
  or country = 'Canada'
  or country = 'Switzerland'
  or country = 'Chile'
  or country = 'Czechia'
  or country = 'Denmark'
  or country = 'Spain'
  or country = 'Estonia'
  or country = 'Finland'
  or country = 'France'
  or country = 'England'
  or country = 'Greece'
  or country = 'Hungary'
  or country = 'Ireland'
  or country = 'Iceland'
  or country = 'Israel'
  or country = 'Italy'
  or country = 'Luxembourg'
  or country = 'Latvia'
  or country = 'Netherlands'
  or country = 'Norway'
  or country = 'New Zealand'
  or country = 'Poland'
  or country = 'Portugal'
  or country = 'Slovakia'
  or country = 'Slovenia'
  or country = 'Sweden'
  or country = 'Turkey'
  or country = 'South Korea'
order by year_2015 DESC
