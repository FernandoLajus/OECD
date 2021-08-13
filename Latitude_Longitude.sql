-- Inclusion of Latitude and Longitude coordinates to the Table 'DIOC_2015_16_File_A_1', on imigration to OECD countries by nationality

-- Creating new columns
ALTER TABLE DIOC_A_1
ADD latitude_o NUMERIC

ALTER TABLE DIOC_A_1
ADD longitude_o NUMERIC

ALTER TABLE DIOC_A_1
ADD COLUMN Latitude_D NUMERIC

ALTER TABLE DIOC_A_1
ADD Longitude_D NUMERIC

--Including values to newly created columns

-- Destination latitudes:
UPDATE DIOC_A_1
SET Latitude_O = -24.945
WHERE country = "AUS";

UPDATE DIOC_A_1
SET Latitude_O = 47.579
WHERE country = "AUT";

UPDATE DIOC_A_1
SET Latitude_O = 50.490
WHERE country = "BEL";

UPDATE DIOC_A_1
SET Latitude_O = 55.318
WHERE country = "CAN";

UPDATE DIOC_A_1
SET Latitude_O = 46.841
WHERE country = "CHE";

UPDATE DIOC_A_1
SET Latitude_O = -26.880
WHERE country = "CHL";

UPDATE DIOC_A_1
SET Latitude_O = 49.696
WHERE country = "CZE";

UPDATE DIOC_A_1
SET Latitude_O = 51.029
WHERE country = "DEU";

UPDATE DIOC_A_1
SET Latitude_O = 55.576
WHERE country = "DNK";

UPDATE DIOC_A_1
SET Latitude_O = 39.478
WHERE country = "ESP";

UPDATE DIOC_A_1
SET Latitude_O = 58.641
WHERE country = "EST";
;
UPDATE DIOC_A_1
SET Latitude_O = 62.049
WHERE country = "FIN";

UPDATE DIOC_A_1
SET Latitude_O = 46.557
WHERE country = "FRA";

UPDATE DIOC_A_1
SET Latitude_O = 54.907
WHERE country = "GBR";

UPDATE DIOC_A_1
SET Latitude_O = 39.494
WHERE country = "GRC";

UPDATE DIOC_A_1
SET Latitude_O = 47.556
WHERE country = "HUN";

UPDATE DIOC_A_1
SET Latitude_O = 53.426
WHERE country = "IRL";
;
UPDATE DIOC_A_1
SET Latitude_O = 65.024
WHERE country = "ISL";

UPDATE DIOC_A_1
SET Latitude_O = 32.138
WHERE country = "ISR";

UPDATE DIOC_A_1
SET Latitude_O = 43.016
WHERE country = "ITA";

UPDATE DIOC_A_1
SET Latitude_O = 36.644
WHERE country = "JPN";

UPDATE DIOC_A_1
SET Latitude_O = 36.516
WHERE country = "KOR";

UPDATE DIOC_A_1
SET Latitude_O = 49.608
WHERE country = "LUX";

UPDATE DIOC_A_1
SET Latitude_O = 57.028
WHERE country = "LVA";

UPDATE DIOC_A_1
SET Latitude_O = 23.881
WHERE country = "MEX";

UPDATE DIOC_A_1
SET Latitude_O = 52.193
WHERE country = "NLD";

UPDATE DIOC_A_1
SET Latitude_O = 60.012
WHERE country = "NOR";

UPDATE DIOC_A_1
SET Latitude_O = -42.553
WHERE country = "NZL";

UPDATE DIOC_A_1
SET Latitude_O = 52.881
WHERE country = "POL";

UPDATE DIOC_A_1
SET Latitude_O = 39.706
WHERE country = "PRT";

UPDATE DIOC_A_1
SET Latitude_O = 48.706
WHERE country = "SVK";

UPDATE DIOC_A_1
SET Latitude_O = 45961
WHERE country = "SVN";

UPDATE DIOC_A_1
SET Latitude_O = 59506
WHERE country = "SWE";

UPDATE DIOC_A_1
SET Latitude_O = 39.072
WHERE country = "TUR";

UPDATE DIOC_A_1
SET Latitude_O = 40.048
WHERE country = "USA";

--Longitude to destination countries

UPDATE DIOC_A_1
SET longitude_o = 133.948
WHERE country = "AUS";

UPDATE DIOC_A_1
SET longitude_o = 14.257
WHERE country = "AUT";

UPDATE DIOC_A_1
SET longitude_o = 4.538
WHERE country = "BEL";

UPDATE DIOC_A_1
SET longitude_o = -104.602
WHERE country = "CAN";

UPDATE DIOC_A_1
SET longitude_o = 7.808
WHERE country = "CHE";

UPDATE DIOC_A_1
SET longitude_o = -70.127
WHERE country = "CHL"

UPDATE DIOC_A_1
SET longitude_o = 15.042
WHERE country = "CZE";

UPDATE DIOC_A_1
SET longitude_o = 10.422
WHERE country = "DEU";

UPDATE DIOC_A_1
SET longitude_o = 9.961
WHERE country = "DNK";

UPDATE DIOC_A_1
SET longitude_o = -3.319
WHERE country = "ESP";

UPDATE DIOC_A_1
SET longitude_o = 25.874
WHERE country = "EST";

UPDATE DIOC_A_1
SET longitude_o = 25.874
WHERE country = "EST";

UPDATE DIOC_A_1
SET longitude_o = 25.359
WHERE country = "FIN";

UPDATE DIOC_A_1
SET longitude_o = 2.349
WHERE country = "FRA";

UPDATE DIOC_A_1
SET longitude_o = -2.504
WHERE country = "GBR";

UPDATE DIOC_A_1
SET longitude_o = 22.537
WHERE country = "GRC";

UPDATE DIOC_A_1
SET longitude_o = 19.201
WHERE country = "HUN";

UPDATE DIOC_A_1
SET longitude_o = -6.316
WHERE country = "IRL";

UPDATE DIOC_A_1
SET longitude_o = -18.507
WHERE country = "ISL";

UPDATE DIOC_A_1
SET longitude_o = 34.810
WHERE country = "ISR";

UPDATE DIOC_A_1
SET longitude_o = 12.572
WHERE country = "ITA";

UPDATE DIOC_A_1
SET longitude_o = 138.742
WHERE country = "JPN";

UPDATE DIOC_A_1
SET longitude_o = 127.707
WHERE country = "KOR";

UPDATE DIOC_A_1
SET longitude_o = 6.101
WHERE country = "LUX";

UPDATE DIOC_A_1
SET longitude_o = 26.031
WHERE country = "LVA";

UPDATE DIOC_A_1
SET longitude_o = -102.64
WHERE country = "MEX";

UPDATE DIOC_A_1
SET longitude_o = 5.648
WHERE country = "NLD";
;
UPDATE DIOC_A_1
SET longitude_o = 10.760
WHERE country = "NOR";

UPDATE DIOC_A_1
SET longitude_o = 172.194
WHERE country = "NZL";

UPDATE DIOC_A_1
SET longitude_o = 18.700
WHERE country = "POL";

UPDATE DIOC_A_1
SET longitude_o = -8.606
WHERE country = "PRT";

UPDATE DIOC_A_1
SET longitude_o = 19.353
WHERE country = "SVK";

UPDATE DIOC_A_1
SET longitude_o = 14.646
WHERE country = "SVN";

UPDATE DIOC_A_1
SET longitude_o = 17.677
WHERE country = "SWE";

UPDATE DIOC_A_1
SET longitude_o = 35.366
WHERE country = "TUR";

UPDATE DIOC_A_1
SET longitude_o = -102.793
WHERE country = "USA";
