/*------------------------------------------------------------------------------------------------------------

													CURSOR 
							
------------------------------------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------------------------------------
Cursor que muestre por cada funcionario todos los tipos de tramites que ha atendido y un promedio del tiempo 
								de atencion que ha demorado en cada uno.
------------------------------------------------------------------------------------------------------------*/
set serveroutput on;
DECLARE 
    cursor TramitesAtendidosExhumaciones is
	select  ad.nombre ||' '|| ad.apellido  as Funcionario, ex.tipo_proceso,count(ex.tipo_proceso) as Numero_atenciones,  round(avg (ex.tiempoatencion),2) as promedio_atencion
        from administrador ad
        inner join exhumaciones ex
        on ex.id_administrador = ad.id_administrador
            group by ad.nombre ||' '|| ad.apellido, ex.tipo_proceso
	union all
        select  ad.nombre ||' '|| ad.apellido  as Funcionario, t.tipo_entierro, count(ad.id_administrador) as Numero_atenciones, round(avg (fac.tiempoatencion),2) as promedio_atencion
        from administrador ad
        inner join factura fac
        on fac.id_administrador = ad.id_administrador
        inner join tumba t
        on t.id_tumba = fac.id_tumba
            group by ad.nombre ||' '|| ad.apellido,t.tipo_entierro;
	sum1 int;
BEGIN 
    sum1 :=0;
    for datos1 in TramitesAtendidosExhumaciones 
        loop
            sum1 := sum1 + datos1.Numero_atenciones;      
            DBMS_OUTPUT.PUT_LINE('EL FUNCIONARIO '||datos1.Funcionario ||' con el proceso de:  '||datos1.tipo_proceso||' tiene  '||datos1.Numero_atenciones|| ' atenciones y un promedio en minutos de  '||datos1.promedio_atencion);
        end loop;
        dbms_output.put_line('Cantidad total de numero de atenciones exhumaciones : ' || sum1);
END; 
