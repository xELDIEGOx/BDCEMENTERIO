/*------------------------------------------------------------------------------------------------------------
Total anual de defunciones por causas, columna 1 causa, columna 2 numero hombres, columna 3- numero mujeres.
------------------------------------------------------------------------------------------------------------*/
--2020
select extract (year from fechamuerte) as fecha, causamuerte, sexo,count(*)as Cantidad_total 
from fallecido
where fechamuerte between '01-01-2020' and '31-12-2020'
group by fechamuerte, causamuerte,sexo
--2021
select extract (year from fechamuerte) as fecha, causamuerte, sexo,count(*)as Cantidad_total 
from fallecido
where fechamuerte between '01-01-2021' and '31-12-2021'
group by fechamuerte, causamuerte,sexo
--2022
select extract (year from fechamuerte) as fecha, causamuerte, sexo,count(*)as Cantidad_total 
from fallecido
where fechamuerte between '01-01-2022' and '31-12-2022'
group by fechamuerte, causamuerte,sexo
