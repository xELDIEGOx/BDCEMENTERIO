/*----------------------------------------------------------------------------------------

							CREACION DE TABLAS Y RELACIONES

----------------------------------------------------------------------------------------*/

create table familiar(
	id_familiar integer primary key not null,
	nombre varchar (50),
	apellido varchar (50),
	telefono char (10),
	direccion varchar (50)
);

create table enterrador(
	id_enterrador integer primary key not null,
	nombre varchar (50),
	apellido varchar (50),
	telefono char (10),
	direccion varchar (50),
	antiguedad integer not null,
	salario numeric (10,2) check (salario >450)
);

create table administrador(
	id_administrador integer primary key not null,
	nombre varchar (50),
	apellido varchar (50),
	telefono char (10),
	direccion varchar (50),
	antiguedad integer not null,
	salario numeric (10,2) check (salario >450)
);

create table sector(
	id_sector integer primary key not null,
	nombre varchar (50),
	superficie integer check (superficie<2500),
	capacidad integer
);

create table jardinero(
	id_jardinero integer primary key not null,
	id_sector integer not null,
	nombre varchar (50),
	apellido varchar (50),
	telefono char (10),
	direccion varchar (50),
	antiguedad integer not null,
	salario numeric (10,2) check (salario >450),
	
	constraint FK_JARDINERO_SECTOR foreign key (id_sector)
	references sector(id_sector)
);

create table tumba(
	id_tumba integer primary key not null,
	id_sector integer not null,
	tipo_entierro character (20) check (tipo_entierro = 'INHUMACION' OR tipo_entierro = 'CREMACION'),
	
	constraint FK_TUMBA_SECTOR foreign key (id_sector)
	references sector(id_sector)
);

create table nicho(
	id_nicho integer primary key not null,
	altura smallint check (altura<=5),
	novedad character (50),
	inscripcion character (50),
	
	constraint FK_NICHO_TUMBA foreign key (id_nicho)
	references tumba(id_tumba)
);


create table mausoleo(
	id_mausoleo integer primary key not null,
	altura smallint check (altura<=45),
	inscripcion varchar (50),
	
	constraint FK_MAUSOLEO_TUMBA foreign key (id_mausoleo)
	references tumba(id_tumba)
);

create table fosacomun(
	id_fosacomun integer primary key not null,
	capacidad integer check (capacidad<=300),
	
	constraint FK_FOSACOMUN_TUMBA foreign key (id_fosacomun)
	references tumba(id_tumba)
);

create table panteon(
	id_panteon integer primary key not null,
	id_familiar integer,
	capacidad smallint check (capacidad<=4),
	inscripcion character (50),
	
	constraint FK_PANTEON_TUMBA foreign key (id_panteon)
	references tumba(id_tumba),
	
	constraint FK_PANTEON_FAMILIAR foreign key (id_familiar)
	references familiar(id_familiar)
);

create table factura(
	id_factura integer not null,
	id_familiar integer not null,
	id_tumba integer not null,
	totpagar decimal (8,2),
	fecha date,
	id_administrador integer not null,
	tiempoatencion decimal (8,2) check (tiempoatencion <=60 and tiempoatencion >=2),
	
	constraint clave primary key (id_factura,id_familiar,id_administrador),
	
	constraint FK_FACTURA_FAMILIAR foreign key (id_familiar)
	references familiar(id_familiar),
	
	constraint FK_FACTURA_ADMINISTRADOR foreign key (id_administrador)
	references administrador(id_administrador),
	
	constraint FK_FACTURA_TUMBA foreign key (id_tumba)
	references tumba(id_tumba)
);

create table fallecido(
	id_fallecido integer primary key not null,
	id_familiar integer not null,
	id_enterrador integer,
	id_tumba integer not null,
	nombre character (50),
	apellido character (50),
	fechanacimiento date,
	fechamuerte date,
	causamuerte varchar (50),
	sexo varchar(10) check (sexo='MASCULINO' OR sexo='FEMENINO'),
	
	constraint FK_FALLECIDO_FAMILIAR foreign key (id_familiar)
	references familiar(id_familiar),
	
	constraint FK_FALLECIDO_ENTERRADOR foreign key (id_enterrador)
	references enterrador(id_enterrador),
	
	constraint FK_FALLECIDO_TUMBA foreign key (id_tumba)
	references tumba(id_tumba)
);

create table exhumaciones(
	id_exhumaciones integer primary key not null,
	id_familiar integer not null,
	autorizacionfamiliar character(2) check(autorizacionfamiliar='SI' or autorizacionfamiliar='NO'),
	tiempo_desde_inhumacion integer check (tiempo_desde_inhumacion>=1),
	condicionclimatica integer check (condicionclimatica<=20),
	id_tumba integer not null,
	id_administrador integer not null,
	tiempoatencion decimal (8,2) check (tiempoatencion <=60 and tiempoatencion >=2),
	tipo_proceso varchar (10) check (tipo_proceso = 'EXHUMACION'),
	
	constraint FK_FALLECIDO1_FAMILIAR foreign key (id_familiar)
	references familiar(id_familiar),
	
	constraint FK_FALLECIDO1_TUMBA foreign key (id_tumba)
	references tumba(id_tumba)
);

create table LINE_EXHUMACIONES_ENTERRADOR(
	id_exhumaciones integer not null,
	id_enterrador integer not null,
	
	constraint FK_LINE_EXHU_ENTE foreign key (id_exhumaciones)
	references exhumaciones(id_exhumaciones),
	
	constraint FK_LINE_ENT_EXHU foreign key (id_enterrador)
	references enterrador(id_enterrador)
);

drop table familiar
drop table enterrador
drop table administrador
drop table sector
drop table jardinero
drop table FK_JARDINERO_SECTOR
drop table tumba
drop table nicho
drop table mausoleo
drop table fosacomun
drop table panteon
drop table factura
drop table fallecido
drop table exhumaciones
drop table LINE_EXHUMACIONES_ENTERRADOR