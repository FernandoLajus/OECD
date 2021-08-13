-- Creating columns for latitude and longitude in the table 'DIOC_2015_16_File_A_1'

ALTER TABLE DIOC_A_1
ADD COLUMN Latitude_D NUMERIC

ALTER TABLE DIOC_A_1
ADD Longitude_D NUMERIC

-- Including values

-- Latitude in region of Birth:
UPDATE DIOC_A_1
SET Latitude_D = 10.617
WHERE regionb = "AFRI"

UPDATE DIOC_A_1
SET Latitude_D = 36.062
WHERE regionb = "ASIA"

UPDATE DIOC_A_1
SET Latitude_D = 49.045
WHERE regionb = "EURO"

UPDATE DIOC_A_1
SET Latitude_D = 42.284
WHERE regionb = "NOAM"

UPDATE DIOC_A_1
SET Latitude_D = -12.987
WHERE regionb = "OCEA"

UPDATE DIOC_A_1
SET Latitude_D = 7.924
WHERE regionb = "SCAC"

UPDATE DIOC_A_1
SET Latitude_D = -85.917
WHERE regionb = "UNK"

-- Longitude in region of birth:
UPDATE DIOC_A_1
SET Longitude_D = 21.435
WHERE regionb = "AFRI"

UPDATE DIOC_A_1
SET Longitude_D = 122.221
WHERE regionb = "ASIA"

UPDATE DIOC_A_1
SET Longitude_D = 9.152
WHERE regionb = "EURO"

UPDATE DIOC_A_1
SET Longitude_D = -104.395
WHERE regionb = "NOAM"	

UPDATE DIOC_A_1
SET Longitude_D = 132.741
WHERE regionb = "OCEA"

UPDATE DIOC_A_1
SET Longitude_D = -80.742
WHERE regionb = "SCAC"

UPDATE DIOC_A_1
SET Longitude_D = 51.199
WHERE regionb = "UNK"
