/*------------------------------------------------------------------------------------------------------------

													TRIGGER
							
------------------------------------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------------------------------------
Trigger que impida realizar la asignacion para un proceso de exhumacion si el tramite no es firmado por quien 
				realizo la solicitud de entierro, y si no han pasado mÃ¡s de anno.
------------------------------------------------------------------------------------------------------------*/

create or replace TRIGGER tr_password
BEFORE
INSERT ON exhumaciones
FOR EACH ROW
BEGIN
    
    if :new.autorizacionfamiliar= 'NO' then
        RAISE_APPLICATION_ERROR(-20002,'Se debe de concretar la validacion para pasar al proceso de exhumacion, intente nuevamente');
    end if;

    if :new.condicionclimatica >20 then
        RAISE_APPLICATION_ERROR(-20002,'El tiempo debe de ser parcialmente nublado y menor o igual a 20 grados');
    end if;
    
END tr_password;


--INGRESO DE DATOS ANTERIOR PARA CORROBORAR EL FUNCIONAMIENTO

--Funcionamiento con el TRIGGER, no permite ingresar con el tipo de exhumacion en NO, si el clima es mayor a 20 o si el tipo proceso se encuentra ingresado con minusculas
insert into exhumaciones (id_exhumaciones,id_familiar,autorizacionfamiliar,tiempo_desde_inhumacion,condicionclimatica,id_tumba,id_administrador,tiempoatencion,tipo_proceso) values
(200,8,'NO',1,20,503,800,15,'EXHUMACION');

insert into exhumaciones (id_exhumaciones,id_familiar,autorizacionfamiliar,tiempo_desde_inhumacion,condicionclimatica,id_tumba,id_administrador,tiempoatencion,tipo_proceso) values
(201,9,'SI',1,22,504,801,30,'EXHUMACION');

insert into exhumaciones (id_exhumaciones,id_familiar,autorizacionfamiliar,tiempo_desde_inhumacion,condicionclimatica,id_tumba,id_administrador,tiempoatencion,tipo_proceso) values
(202,9,'SI',1,20,504,801,30,'exhumacion');

--Permite el ingreso una vez cumplido lo anterior
insert into exhumaciones (id_exhumaciones,id_familiar,autorizacionfamiliar,tiempo_desde_inhumacion,condicionclimatica,id_tumba,id_administrador,tiempoatencion,tipo_proceso) values (203,8,'SI',1,20,503,800,30,'EXHUMACION');
insert into exhumaciones (id_exhumaciones,id_familiar,autorizacionfamiliar,tiempo_desde_inhumacion,condicionclimatica,id_tumba,id_administrador,tiempoatencion,tipo_proceso) values (204,9,'SI',1,20,504,801,30,'EXHUMACION');

