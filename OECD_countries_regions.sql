-- Renomeando Regiões de Origem

UPDATE DIOC_2015_16_File_A_1
set regionb = replace (regionb, "AFRI", "África");
UPDATE DIOC_2015_16_File_A_1
set regionb = replace (regionb, "ASIA", "Ásia");
UPDATE DIOC_2015_16_File_A_1
set regionb = replace (regionb, "EURO", "Europa");
UPDATE DIOC_2015_16_File_A_1
set regionb = replace (regionb, "NOAM", "América do Norte");
UPDATE DIOC_2015_16_File_A_1
set regionb = replace (regionb, "OCEA", "Oceania");
UPDATE DIOC_2015_16_File_A_1
set regionb = replace (regionb, "SCAC", "América do Sul e Central");
UPDATE DIOC_2015_16_File_A_1
set regionb = replace (regionb, "UNK", "Desconhecido");

--Renomeando países de destino

UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "Austrália", "Australia");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "NOR", "Norway");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "AUT", "Austria");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "BEL", "Belgium");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "CAN", "Canada");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "CHE", "Switzerland");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "CHL", "Chile");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "CZE", "Czechia");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "DEU", "Germany	");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "DNK", "Denmark");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "ESP", "Spain");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "EST", "Estonia");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "Frace", "France");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "FIN", "Finland");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "GBR", "England");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "GRC", "Greece");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "HUN", "Hungary");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "IRL", "Ireland");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "ISL", "Iceland");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "ISR", "Israel");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "ITA", "Italy");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "JPN", "Japan");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "KOR", "South Korea");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "Luxemburg", "Luxembourg");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "LVA", "Latvia");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "MEX", "Mexico");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "Nethelands", "Netherlands");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "New Zeland", "New Zealand");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "POL", "Poland");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "PRT", "Portugal");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "SVK", "Slovakia");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "SVN", "Slovenia");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "SWE", "Sweden");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "TUR", "Turkey");
UPDATE DIOC_2015_16_File_A_1
set country = replace (country, "USA", "United States")
