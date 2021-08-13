-- View on table 'DIOC_2015_16_File_A_2' regardin emigration and nationality

CREATE VIEW emigration_nationality
as
SELECT
  coub as country_of_destination,
  CASE when sex = 1 then "Male"
  ELSE "Female"
  END as Sex,
  CASE WHEN age_lfs = 0 THEN "0-14"
  WHEN age_lfs = 1 THEN "15-24"
  WHEN age_lfs = 2 THEN "25-64"
  WHEN age_lfs = 3 then "65+"
  WHEN age_lfs = 12 THEN "15-64"
  WHEN age_lfs = 99 THEN "unknown "
  END as Age,
  CASE WHEN edu_lfs = 1 THEN L"ow"
  WHEN edu_lfs = 2 THEN "Medium"
  WHEN edu_lfs = 3 THEN "High"
  WHEN edu_lfs = 99 THEN "Unknown "
  END as Education,
  CASE WHEN national = 0 then "foreigner"
  WHEN national = 1 then "National"
  WHEN national = 99 then "Unknown "
  END as Nationality,
  CASE WHEN fborn = 0 THEN "Born_in_OECD_State"
  WHEN fborn = 1 THEN "Born_in_diferent_State"
  WHEN fborn = 99 THEN "Unknown"
  end as Country_of_birth,
  number as Qtd,
  sum (number) OVER (PARTITION by coub) as Qtd_country_A
FROM DIOC_A_2
WHERE fborn = 1 or fborn = 99


-- View on table 'DIOC_2015_16_File_C_2' regarding emigration and work 

CREATE VIEW emigracao_trabalho
as
SELECT
	coub as country_of_destination,
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
	END as Emplyment_status,
	CASE WHEN age = 0 THEN "0-14"
	WHEN age = 1 THEN "15-24"
	WHEN age = 2 THEN "25-64"
	WHEN age = 3 then "65+"
	WHEN age = 1564 THEN "15-64"
	WHEN age = 99 THEN "Unwkown"
	END as Age,
  CASE WHEN fborn = 0 THEN "Born_in_OECD_State"
  WHEN fborn = 1 THEN "Born_in_diferent_State"
  WHEN fborn = 99 THEN "Unknown"
  end as Country_of_birth,
	number as Qtd,
	sum (number) OVER (PARTITION by coub) as Qtd_country
FROM DIOC_C_2
where fborn =1 or fborn = 99


--View on table 'DIOC_2015_16_File_D_2' regarding emigration and occupation

CREATE VIEW emigration_ocupation
as
SELECT
	coub as country_of_destination,
	CASE WHEN sex = 1 then "Male"
	WHEN sex = 2 THEN "Female"
	ELSE "Unwkown"
	END as Sex,
	CASE WHEN edu_lfs = 1 THEN "Low"
	WHEN edu_lfs = 2 THEN "Medium"
	WHEN edu_lfs = 3 THEN "High"
	WHEN edu_lfs = 99 THEN "Uwnkown"
	END as Education,
	CASE WHEN skill_occ = 1 THEN "Low"
	WHEN skill_occ = 2 THEN "Intermediary"
	WHEN skill_occ = 3 Then "Advanced"
	WHEN skill_occ= 99 THEN "Uwnkown"
	END as lvl_of_ocupation,
	CASE WHEN overqualified = 0 THEN "Not_overqualified"
	WHEN overqualified = 1 THEN "Overqualified"
	ELSE "Unwkown"
	END as superqualificacao,
  CASE WHEN fborn = 0 THEN "Born_in_OECD_State"
  WHEN fborn = 1 THEN "Born_in_diferent_State"
  WHEN fborn = 99 THEN "Unknown"
  end as Country_of_birth,
	number as Qtd,
	sum (number) OVER (PARTITION by coub) as Qtd_country
FROM DIOC_D_2
where fborn =1 or fborn = 99
