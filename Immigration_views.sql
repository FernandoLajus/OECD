-- View on table 'DIOC_2015_16_File_A_1' regarding immigration and nationality

CREATE VIEW immigration_nationality
as
SELECT
	country as country_of_destination,
	latitude_o as Latitude_D,
	longitude_o as Longitude_D,	
	CASE WHEN sex = 1 THEN "Male"
	else "Female"
	end as Sex,
	CASE WHEN age_lfs = 0 THEN "0-14"
	WHEN age_lfs = 1 THEN "15-24"
	WHEN age_lfs = 2 THEN "25-64"
	WHEN age_lfs = 3 then "65+"
	WHEN age_lfs = 12 THEN "15-64"
	WHEN age_lfs = 99 THEN "Uwnkown"
	END as Age,
	CASE WHEN edu_lfs = 1 THEN "Low"
	WHEN edu_lfs = 2 THEN "Medium"
	WHEN edu_lfs = 3 THEN "High"
	WHEN edu_lfs = 99 THEN "Uwnkown"
	END as Education,
	CASE WHEN national = 0 then "Foreign"
	WHEN national = 1 then "National"
	WHEN national = 99 then "Unwkown
	END as Nationality
	CASE WHEN fborn = 0 THEN "Born_in_OECD_State"
	WHEN fborn = 1 THEN "Born_in_diferent_State"
	WHEN fborn = 99 THEN "Unknown"
	end as Country_of_birth
	regionb as Região_of_birth,
	Latitude_D as Latitude_O ,
	Longitude_D as Longitude_O,
	number as Qtd,
	sum (number) OVER (PARTITION by country) as Total_pais_destino,
	sum (number) OVER (PARTITION by regionb) as Total_região_A
FROM DIOC_A_1
WHERE fborn = 1 or fborn = 99

-- View on table 'DIOC_2015_16_File_C_1' regarding immigration and nationality

CREATE VIEW immigration_employment
as
SELECT
country as Country_of_destination,
	CASE WHEN sex = 1 THEN "Male"
	ELSE "Female"
	END as Sex,
	CASE WHEN edu_lfs = 1 THEN "Low"
	WHEN edu_lfs = 2 THEN "Medium"
	WHEN edu_lfs = 3 THEN "High"
	WHEN edu_lfs = 99 THEN "Unwkown"
	END as Education,
	CASE WHEN lfs = 1 THEN "Employed"
	WHEN lfs = 2 THEN "Unemployed"
	WHEN lfs = 3 THEN "Inactive"
	WHEN lfs = 99 THEN "Unwkown"
	END as Employment_status,
	CASE WHEN age = 0 THEN "0-14"
	WHEN age = 1 THEN "15-24"
	WHEN age = 2 THEN "25-64"
	WHEN age = 3 then "65+"
	WHEN age = 1564 THEN "15-64"
	WHEN age = 99 THEN "Uwnkown"
	END as Age,
	CASE WHEN fborn = 0 THEN "Born_in_OECD_State"
	WHEN fborn = 1 THEN "Born_in_diferent_State"
	WHEN fborn = 99 THEN "Unwkown "
	end as Nascimento,
	regionb as Country_of_birth,
	number as Qtd,
	sum (number) OVER (PARTITION by regionb) as Qtd_country
FROM DIOC_C_1
WHERE fborn = 1 or fborn = 99

--View on table 'DIOC_2015_16_File_D_1' regarding immigration and nationality

CREATE view imigration_ocupation
as
SELECT
	country as country_of_destination,
	CASE WHEN sex = 1 then "Male"
	WHEN sex = 2 THEN "Female"
	ELSE "Unwkown"
	END as Sex,
	CASE WHEN edu_lfs = 1 THEN "Low"
	WHEN edu_lfs = 2 THEN "Medium"
	WHEN edu_lfs = 3 THEN "High"
	WHEN edu_lfs = 99 THEN "Unwkown"
	END as Education,
	CASE WHEN skill_occ = 1 THEN "Low"
	WHEN skill_occ = 2 THEN "Intermediary"
	WHEN skill_occ = 3 Then "Advanced"
	WHEN skill_occ= 99 THEN "Unwkown"
	END as lvl_of_ocupation,
	CASE WHEN overqualified = 0 THEN "Not_overqualified"
	WHEN overqualified = 1 THEN "Overqualified"
	ELSE "Uwnkown"
	END as Overqualification,
	CASE WHEN fborn = 0 THEN "Born_in_OECD_State"
	WHEN fborn = 1 THEN "Born_in_diferent_State"
	WHEN fborn = 99 THEN "Unwkown"
	end as Country_of_birth,
	regionb as Region_of_birth,
	number as Qtd,
	sum (number) OVER (PARTITION by regionb) as Qtd_country
FROM DIOC_D_1
WHERE fborn = 1 or fborn = 99
