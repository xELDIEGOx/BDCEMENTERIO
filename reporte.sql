/*------------------------------------------------------------------------------------------------------------

													REPORTE 
							
------------------------------------------------------------------------------------------------------------*/
--REPORTE POR EL TOTAL DE MUERTES POR CAUSA

select causamuerte, count(causamuerte) as total_de_muertes
from fallecido
group by causamuerte


