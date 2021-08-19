# OECD
Syntax applied to OECD's dataset's on migration occurred in member States between 2000 and 2015 

The code was written in SQLite using the DbBrowrser interface.

The project is divided into several steps of data wrangling on the dataset provided by OECD. Some of the steps were: creating views to optimize queries and readability of data; altering values from former Soviet Union countries, making it easier to visualize those countries in maps for data visualization; including values of latitude and longitude for optimal precision; altering countries values from ISO 3166-1 (alpha 3) pattern to regular English notation of countries names. 

Finally, in order to build a more robust data source, it was included some important socio-economic indicators in the Database. Those indicators were: (2015) Human Development Index for all OECD member States; (2000-2015) Gross National Income (per capita) for all OECDE member States; (2000-2015) Average Schooling years for all OECD member States and (2000-2015) Unemployment Rate for all OECD member States.
