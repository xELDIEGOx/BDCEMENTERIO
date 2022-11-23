/*----------------------------------------------------------------------------------------

									INGRESO DE DATOS
							
----------------------------------------------------------------------------------------*/
select * from familiar
insert into familiar values(1,'Blorard','Mendoza',1234567890,'Las cumbres');
insert into familiar values(2,'Alberto','Cintral',1234567890,'Las Cumbres');
insert into familiar values(3,'Rene','Delgado',1234567890,'Los Esteros');
insert into familiar values(4,'Marisol','Mera',1234567890,'La Encenadita');
insert into familiar values(5,'Andaluz','Benitez',1234567890,'El Palmar');
insert into familiar values(6,'Robert','Centeno',1234567890,'15 de Septiembre');
insert into familiar values(7,'Gyusepy','Calle',1234567890,'Miraflores');
insert into familiar values(8,'Rosita','Jackson',1234567890,'Maria Auxiliadora 2');
insert into familiar values(9,'Romanchil','Tesla',1234567890,'Las 7 Punnaladas');
----------------------------------------------------------------------------------------
select * from enterrador
insert into enterrador values(900,'Pepe','Paloma',1234567890,'El Palmar',1,500);
insert into enterrador values(901,'Paco','Paloma',1234567890,'Los electricos',5,500);
insert into enterrador values(902,'Poncho','Paloma',1234567890,'Maria Auxiliadora 1',3,500);
insert into enterrador values(903,'Pocopo','Paloma',1234567890,'Los electricos',2,500);
insert into enterrador values(904,'Pinocho','Paloma',1234567890,'Maria Auxiliadora 1',2,500);

----------------------------------------------------------------------------------------
select * from administrador
insert into administrador values(800,'Mario','Diaz',1234567890,'Las Cumbres',5,1200);
insert into administrador values(801,'Luigi','Diaz',1234567890,'Los Esteros',3,1200);

----------------------------------------------------------------------------------------
select * from sector
insert into sector values(700,'Sector A',500,250);
insert into sector values(701,'Sector B',500,250);
insert into sector values(702,'Sector C',500,500);
insert into sector values(703,'Sector D',500,250);
insert into sector values(704,'Sector E',500,250);

----------------------------------------------------------------------------------------
select * from jardinero
insert into jardinero values(600,700,'Ariana','Cedenno',1234567890,'Tierra Dorada',1,650);
insert into jardinero values(601,701,'Adriana','Dominguez',1234567890,'Tierra Dorada',3,650);
insert into jardinero values(602,702,'Adrian','Cebral',1234567890,'Maria Auxiliadora',3,650);
insert into jardinero values(603,702,'Adamaris','Macias',1234567890,'Tierra Dorada',1,650);
insert into jardinero values(604,703,'Arnol','Mora',1234567890,'El Palmar',5,650);
insert into jardinero values(605,704,'Ariel','Cedenno',1234567890,'Maria Auxiliadora',6,650);

----------------------------------------------------------------------------------------
select * from tumba
insert into tumba values(500,700,'INHUMACION');
insert into tumba values(501,700,'CREMACION');
insert into tumba values(502,700,'CREMACION');
insert into tumba values(503,701,'INHUMACION');
insert into tumba values(504,702,'INHUMACION');
insert into tumba values(505,703,'INHUMACION');
insert into tumba values(506,703,'INHUMACION');
insert into tumba values(507,704,'CREMACION');
insert into tumba values(508,704,'CREMACION');
insert into tumba values(509,704,'CREMACION');

----------------------------------------------------------------------------------------
select * from nicho --1 persona y no mas de 5 m
insert into nicho values(500,3,'REPINTAR','Vuela como paloma');
insert into nicho values(501,4,'NINGUNA','Algelito');
insert into nicho values(502,2,'NINGUNA','Vive en el mas alla');

----------------------------------------------------------------------------------------
select * from mausoleo --solo mi michael jackson u.u
insert into mausoleo values(503,45,'Aqui­ descansa el Rey del POP');
insert into mausoleo values(504,30,'Nikola Tesla Luz de luces');

----------------------------------------------------------------------------------------
select * from fosacomun --300 pipol
insert into fosacomun values(505,2);
insert into fosacomun values(506,3);

----------------------------------------------------------------------------------------
select * from panteon --4 personas en uno y familia mas de un panteon
insert into panteon values(507,1,4,'FAMILIA MENDOZA P1');
insert into panteon values(508,1,4,'FAMILIA MENDOZA P2');
insert into panteon values(509,2,3,'FAMILIA CINTRAL');

----------------------------------------------------------------------------------------
select * from factura --x muertito paga 200

--FAC PANTEON
insert into factura values (400,1,507,800,'2-11-2021',800,10);
insert into factura values (401,1,508,800,'2-11-2021',800,10);
insert into factura values (402,2,509,600,'10-10-2022',800,10);
--FAC FOSACOMUN
insert into factura values (403,3,505,300,'12-10-2022',801,30);
insert into factura values (404,4,506,450,'15-10-2022',801,15);
--FAC MAUSOLEO
insert into factura values (405,8,503,5000,'10-11-2022',801,55);
insert into factura values (406,9,504,4000,'11-11-2022',800,25);
--FAC NICHO	
insert into factura values (407,5,500,300,'19-11-2022',800,18);
insert into factura values (408,6,501,300,'19-11-2022',801,12);
insert into factura values (409,7,502,300,'29-11-2022',800,13);


----------------------------------------------------------------------------------------
select * from fallecido  --enterradr 900-904
--FALLECIDOS PANTEON
insert into fallecido values(300,1,900,507,'Morones','Mendoza','20-01-1999','22-11-2020','CAIDA','MASCULINO'); 
insert into fallecido values(301,1,900,507,'Macarrones','Mendoza','20-01-1999','22-11-2020','CAIDA','MASCULINO');
insert into fallecido values(302,1,900,507,'Mora','Mendoza','20-01-1999','22-11-2020','CAIDA','FEMENINO');
insert into fallecido values(303,1,900,507,'Morocho','Mendoza','20-01-1999','22-11-2020','CAIDA','MASCULINO');

insert into fallecido values(304,1,901,508,'Manolo','Mendoza','20-01-1999','22-11-2021','ACCIDENTE AUTOMOVILISTICO','MASCULINO');
insert into fallecido values(305,1,901,508,'Manuela','Mendoza','20-01-1999','22-11-2021','ACCIDENTE AUTOMOVILISTICO','FEMENINO');
insert into fallecido values(306,1,901,508,'Martin','Mendoza','20-01-1999','22-11-2021','INFARTO','MASCULINO');
insert into fallecido values(307,1,901,508,'Macarena','Mendoza','20-01-1999','22-11-2021','ACCIDENTE AUTOMOVILISTICO','FEMENINO');

insert into fallecido values(308,2,902,509,'Cidney','Cintral','20-01-1999','22-11-2021','NATURAL','FEMENINO');
insert into fallecido values(309,2,902,509,'Ciruela','Cintral','20-01-1999','22-11-2021','CAIDA','FEMENINO');
insert into fallecido values(310,2,902,509,'Cedron','Cintral','20-01-1999','22-11-2021','CAIDA','MASCULINO');

--FALLECIDOS FOSACOMUN
insert into fallecido values(311,3,903,505,'Roberto','Delgado','20-01-1999','22-11-2022','NATURAL','MASCULINO');
insert into fallecido values(312,3,903,505,'Rachelle','Delgado','20-01-1999','22-11-2022','CAIDA','FEMENINO');

insert into fallecido values(313,4,904,506,'Nora','Mera','20-01-1999','22-11-2022','INFARTO','FEMENINO');
insert into fallecido values(314,4,904,506,'Nikole','Mera','20-01-1999','22-11-2022','NATURAL','FEMENINO');
insert into fallecido values(315,4,904,506,'Nikolas','Mera','20-01-1999','22-11-2022','INFARTO','MASCULINO');

--FALLECIDOS MAUSOLEO
insert into fallecido values(316,8,903,503,'Michael','Jackson','20-01-1999','22-11-2022','INFARTO','MASCULINO');
insert into fallecido values(317,9,904,504,'Nikola','Tesla','20-01-1999','22-11-2022','NATURAL','MASCULINO');

--FALLECIDOS NICHO
insert into fallecido values(318,5,900,500,'Morones','Benitez','20-01-1999','22-11-2022','NATURAL','MASCULINO');
insert into fallecido values(319,6,901,501,'Macarrones','Centeno','20-01-1999','22-11-2022','INFARTO','MASCULINO');
insert into fallecido values(320,7,902,502,'Mora','Calle','20-01-1999','22-11-2022','NATURAL','FEMENINO');



----------------------------------------------------------------------------------------

select * from exhumaciones
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

----------------------------------------------------------------------------------------
select * from line_exhumaciones_enterrador
insert into line_exhumaciones_enterrador values(203,904);
insert into line_exhumaciones_enterrador values(204,903);