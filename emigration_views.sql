CREATE VIEW emigration_nationality
as
SELECT
coub as país_origem,
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
CASE WHEN fborn = 0 THEN "Born in OECD State
WHEN fborn = 1 THEN "Born in diferent State"
WHEN fborn = 99 THEN "Unknown"
end as Country_of_birth,
number as Qtd,
sum (number) OVER (PARTITION by coub) as Qtd_country_A
FROM
DIOC_A_2
WHERE fborn = 1 or fborn = 99
