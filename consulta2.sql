/*------------------------------------------------------------------------------------------------------------
		Historico de novedades encontradas en el cementerio por nicho. Columna1-Novedad, Columna2-anno, 
				columna3- numero de incidentes, columna 4 Tipo de construccion.
------------------------------------------------------------------------------------------------------------*/
select n.novedad, extract (year from fac.fecha) as fecha ,f.causamuerte ||' = '|| count(*) as numero_incidente, n.altura as tipo_altura_de_construccion
from fallecido f
inner join tumba t
on t.id_tumba = f.id_tumba
inner join factura fac 
on t.id_tumba = fac.id_tumba
inner join nicho n 
on t.id_tumba = n.id_nicho
group by n.novedad, fac.fecha, f.causamuerte, n.altura