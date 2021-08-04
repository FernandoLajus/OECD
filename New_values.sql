SELECT
	country as pais,
	CASE WHEN sex = 1 THEN "Masculino"
	else "Feminino"
	end as sexo,
	CASE WHEN age_lfs = 0 THEN "0-14"
	WHEN age_lfs = 1 THEN "15-24"
	WHEN age_lfs = 2 THEN "25-64"
	WHEN age_lfs = 3 then "65+"
	WHEN age_lfs = 12 THEN "15-64"
	WHEN age_lfs = 99 THEN "Desconhecido"
	END as Idade,
	CASE WHEN edu_lfs = 1 THEN "Baixo"
	WHEN edu_lfs = 2 THEN "Medio"
	WHEN edu_lfs = 3 THEN "Alto"
	WHEN edu_lfs = 99 THEN "Desconhecido"
	END as Educação,
	CASE WHEN national = 0 then "Estrangeiro"
	WHEN national = 1 then "Nacional"
	WHEN national = 99 then "Desconhecido"
	END as Nacionalidade,
	CASE WHEN oecd = 1 THEN "Na OCDE"
	WHEN oecd = 0 THEN "Não OCDE"
	END as Residencia,
	regionb as Regiao_nascimento,
	CASE WHEN oecdb = 0 THEN "Nascido fora OCDE"
	WHEN oecdb = 1 THEN "Nascido na OCDE"
	END as Nascimento,
	CASE WHEN fborn = 0 THEN "Nascido no pais de destino"
	WHEN fborn = 1 THEN "Nascido em outro pais"
	WHEN fborn = 99 THEN "Desconhecido"
	END Nascimento,
	number as Qtd,
	sum (number) OVER (PARTITION by regionb) as Total_região_A
FROM DIOC_2015_16_File_A_1
