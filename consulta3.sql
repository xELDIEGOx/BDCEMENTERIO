/*------------------------------------------------------------------------------------------------------------
			Numero de tramites por cada servicio del cementerio. Columna 1 Nombre del servicio, 
						columna 2 numero de atenciones, columna 3 funcionario que atendio.
------------------------------------------------------------------------------------------------------------*/
------TIPO EXHUMACIONES
select  ex.tipo_proceso,count(ex.tipo_proceso) as Numero_atenciones, ad.nombre ||' '|| ad.apellido  as Funcionario
from administrador ad
inner join exhumaciones ex
on ex.id_administrador = ad.id_administrador
group by ex.tipo_proceso, ad.nombre ||' '|| ad.apellido

------TIPO INHUMACIONES Y CREMACION

select  t.tipo_entierro, count(ad.id_administrador) as Numero_atenciones,ad.nombre ||' '|| ad.apellido  as Funcionario
from administrador ad
inner join factura fac
on fac.id_administrador = ad.id_administrador
inner join tumba t
on t.id_tumba = fac.id_tumba
group by t.tipo_entierro, ad.nombre ||' '|| ad.apellido

------UNIFICACION DE LAS DOS CONSULTAS

select  ex.tipo_proceso,count(ex.tipo_proceso) as Numero_atenciones, ad.nombre ||' '|| ad.apellido  as Funcionario
from administrador ad
inner join exhumaciones ex
on ex.id_administrador = ad.id_administrador
group by ex.tipo_proceso, ad.nombre ||' '|| ad.apellido

UNION ALL

select  t.tipo_entierro, count(ad.id_administrador) as Numero_atenciones,ad.nombre ||' '|| ad.apellido  as Funcionario
from administrador ad
inner join factura fac
on fac.id_administrador = ad.id_administrador
inner join tumba t
on t.id_tumba = fac.id_tumba
group by t.tipo_entierro, ad.nombre ||' '|| ad.apellido