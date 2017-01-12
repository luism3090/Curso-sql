---------------------  2 - Crear una tabla (create table - sp_tables - sp_columns - drop table) -----------------------------------------------------


sp_tables @table_owner='[dbo]';

create table usuarios
(
	nombre varchar(30),
	clave varchar (10)
)

-- ver las conlumnas de una tabla
sp_columns usuarios

drop table usuarios

if object_id('usuarios') is not null
drop table usuarios

-----------------------------------------------------  Ejemplo        ----------------------------------------------------------------------------

if object_id('usuarios') is not null
drop table ususarios;

create table usuarios
(
	nombre varchar(30),
	clave varchar(20)
);

-- ver las tablas existentes
sp_tables @table_owner='dbo';

-- ver la estructura de una tabla
sp_columns usuarios;

create table usuarios
(
	nombre varchar(30),
	clave varchar(20)
);

drop table usuarios

sp_tables @table_owner='dbo';


------------------------------------------------------- problema 1 ------------------------------------------------------------------

if object_id('agenda') is not null
drop table agenda 

create table agenda
(
	apellido varchar(30),
	nombre varchar(30),
	domicilio varchar(50),
	telefono varchar(11)
);


create table agenda
(
	apellido varchar(30),
	nombre varchar(30),
	domicilio varchar(50),
	telefono varchar(11)
);

sp_columns agenda;

drop table agenda;

drop table agenda;


------------------------------------------------------- problema 2 ------------------------------------------------------------------

if object_id('agenda') is not null
drop table agenda;

sp_tables @table_owner='dbo'

create table libros
(
	titulo varchar(20),
	autor varchar(30),
	editorial varchar(20)
);

create table libros
(
	titulo varchar(20),
	autor varchar(30),
	editorial varchar(20)
);

sp_tables @table_owner='dbo'

sp_columns libros

drop table libros

drop table libros


---------------------  3 - Insertar y recuperar registros de una tabla (insert into - select)----------------------------------------

if object_id('usuarios') is not null 
drop table usuarios;

create table usuarios
(
	nombre varchar(20),
	clave varchar(10)
)

insert into usuarios (nombre,clave) values ('Marcerlo','Payaso');

select * from usuarios

insert into usuarios (clave,nombre) values ('River','Juan')

insert into usuarios (nombre,clave) values ('Boca','Luis')

select * from usuarios


------------------------------------------------- problema1 ------------------------------------------------------------

if object_id('agenda') is not null
drop table agenda

create table agenda
(
	apellido varchar(20),
	nombre varchar(30),
	domicilio varchar(40),
	telefono varchar(11)
)

sp_tables @table_owner='dbo';

sp_columns agenda;


insert into agenda (apellido,nombre,domicilio,telefono) values('Molina','Luis','Av 12','8339132378');
insert into agenda (apellido,nombre,domicilio,telefono) values('Mora','Juan','Calle 40','8932783372')
insert into agenda (apellido,nombre,domicilio,telefono) values('Toral','Raul','Colon 4','45444667622')

select * from agenda

drop table agenda;

drop table agenda;


------------------------------------------------- problema 2 ------------------------------------------------------------

if object_id('libros') is not null
drop table libros

create table libros
(
	titulo varchar(30),
	autor varchar(30),
	editorial varchar(30)
)

sp_tables @table_owner='dbo'

sp_columns libros

insert into libros (titulo,autor,editorial) values ('Java','Deithen','Payaso')
insert into libros (titulo,autor,editorial) values ('El aleph','Borges','Planeta');
insert into libros (titulo,autor,editorial) values ('Martin Fierro','Jose Hernandez','Emece');
insert into libros (titulo,autor,editorial) values ('Aprenda PHP','Mario Molina','Emece');

select * from libros

----------------------------------        4 - Tipos de datos básicos    --------------------------------------------------------


if object_id('libros') is not null
drop table libros

create table libros
(
	titulo varchar(20),
	autor varchar(15),
	editorial varchar(10),
	precio float,
	cantidad integer  
);

sp_columns libros

insert into libros (titulo,autor,editorial,precio,cantidad) values('Java','Deithel','System',30.5,5);
insert into libros (titulo,autor,editorial,precio,cantidad) values ('El aleph','Borges','Emece',25.50,100);
insert into libros (titulo,autor,editorial,precio,cantidad) values ('Matematica estas ahi','Paenza','Siglo XXI',18.8,200);

select * from libros


insert into libros (titulo,autor,editorial,precio,cantidad) values ('Alicia en el pais de las maravillas','Lewis Carroll','Atlantida',10,200);


insert into libros (titulo,autor,editorial,precio,cantidad) values ('Alicia en el pais','Lewis Carroll','Atlantida',10,200);

select * from libros

--------------------------------------------------   Primer problema:  ---------------------------------------------------------

if OBJECT_ID('peliculas') is not null
drop table peliculas;

create table peliculas
(
	nombre varchar(20),
	actor varchar(20),
	duracion int,
	cantidad int
)

sp_columns peliculas

insert into peliculas (nombre,actor,duracion,cantidad) values ('XXX','Toreto',70,10)
insert into peliculas (nombre, actor, duracion, cantidad) values ('Mision imposible','Tom Cruise',128,3);
insert into peliculas (nombre, actor, duracion, cantidad) values ('Mision imposible 2','Tom Cruise',130,2);
insert into peliculas (nombre, actor, duracion, cantidad) values ('Mujer bonita','Julia Roberts',118,3);
insert into peliculas (nombre, actor, duracion, cantidad) values ('Elsa y Fred','China Zorrilla',110,2);

select * from peliculas

--------------------------------------------------   Segundo problema:  ---------------------------------------------------------

if OBJECT_ID('empleados') is not null
drop table empleados

create table empleados
(
	nombre varchar(20),
	documento varchar(8),
	sexo varchar(1),
	domicilio varchar(30),
	sueldo_basico float
)

sp_columns empleados

insert into empleados (nombre,documento,sexo,domicilio,sueldo_basico) values ('Luis','11223344','M','Av Miguel',800)
insert into empleados (nombre, documento, sexo, domicilio, sueldo_basico) values ('Juan Perez','22333444','m','Sarmiento 123',500);
insert into empleados (nombre, documento, sexo, domicilio, sueldo_basico) values ('Ana Acosta','24555666','f','Colon 134',650);
insert into empleados (nombre, documento, sexo, domicilio, sueldo_basico) values ('Bartolome Barrios','27888999','m','Urquiza 479',800);

select * from empleados


-----------------------------------------------5 - Recuperar algunos campos (select) ----------------------------------------------


if OBJECT_ID('libros') is not null
drop table libros

 create table libros(
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio float,
  cantidad integer
 );

 sp_columns libros

 insert into libros (titulo,autor,editorial,precio,cantidad) values ('Java','Deithel','System',70.5,10)
insert into libros (titulo,autor,editorial,precio,cantidad) values ('El aleph','Borges','Emece',25.50,100);
insert into libros (titulo,autor,editorial,precio,cantidad) values ('Alicia en el pais de las maravillas','Lewis Carroll','Atlantida',10,200);
insert into libros (titulo,autor,editorial,precio,cantidad) values ('Matematica estas ahi','Paenza','Siglo XXI',18.8,200);

select * from libros;

select titulo,autor,editorial from libros

select titulo,precio from libros

select editorial, cantidad from libros

-------------------------------------------------   Primer problema:  ----------------------------------------------------------

if OBJECT_ID('peliculas') is not null
drop table peliculas

create table peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

sp_columns peliculas

insert into peliculas (titulo, actor, duracion, cantidad) values ('Mision imposible','Tom Cruise',180,3);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Mision imposible 2','Tom Cruise',190,2);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Mujer bonita','Julia Roberts',118,3);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Elsa y Fred','China Zorrilla',110,2);

select titulo,actor from peliculas

select titulo,duracion from peliculas

select titulo,cantidad from peliculas

-------------------------------------------------   Segundo problema:  ----------------------------------------------------------

if object_id('empleados') is not null
  drop table empleados;


create table empleados
(
  nombre varchar(20),
  documento varchar(8), 
  sexo varchar(1),
  domicilio varchar(30),
  sueldobasico float
 );

 sp_columns empleados


insert into empleados (nombre, documento, sexo, domicilio, sueldobasico) values ('Juan Juarez','22333444','m','Sarmiento 123',500);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico) values ('Ana Acosta','27888999','f','Colon 134',700);
insert into empleados (nombre, documento, sexo, domicilio, sueldobasico) values ('Carlos Caseres','31222333','m','Urquiza 479',850);

select nombre,documento,sexo,domicilio,sueldobasico from empleados

select nombre,documento,domicilio from empleados

select documento,sexo,sueldobasico from empleados


----------------------------------  6 - Recuperar algunos registros (where) -------------------------------------------------

select * from usuarios where nombre = 'Mariano'

select * from usuarios where clave= 'River'


if OBJECT_ID('usuarios') is not null
drop table usuarios 

create table usuarios
(
	nombre varchar(30),
	clave varchar(10)
)

insert into usuarios (nombre, clave) values ('Marcelo','Boca');
insert into usuarios (nombre, clave) values ('JuanPerez','Juancito');
insert into usuarios (nombre, clave) values ('Susana','River');
insert into usuarios (nombre, clave) values ('Luis','River');

select * from usuarios

select * from usuarios where nombre = 'Luis'

select nombre,clave from usuarios where nombre = 'Leonardo'

select nombre,clave from usuarios where clave = 'River'

select nombre,clave from usuarios where clave = 'Santi'


-------------------------------------------------- Primer Problema --------------------------------------------------------------


if OBJECT_ID('agenda') is not null
drop table agenda;

create table agenda
(
	apellido varchar(30),
	nombre  varchar(20),
	domicilio varchar(50),
	telefono varchar(11)
)


insert into agenda (apellido,nombre,domicilio,telefono) values ('Acosta','Ana','Colon 123','4234567')
insert into agenda (apellido,nombre,domicilio,telefono) values ('Bustamante','Betina','Avellaneda 123','4458787')
insert into agenda (apellido,nombre,domicilio,telefono) values ('Lopez','Hector','Salta 545','4887788')
insert into agenda (apellido,nombre,domicilio,telefono) values ('Lopez','Luis','Urquiza 333','4545454')
insert into agenda (apellido,nombre,domicilio,telefono) values ('Lopez','Marisa','Urquiza 333','4545454')

select * from agenda

select * from agenda where nombre='Marisa'

select nombre,domicilio from agenda where apellido= 'Lopez'

select nombre from agenda where telefono = '4545454'



-------------------------------------------------- Segundo Problema --------------------------------------------------------------

if OBJECT_ID('libros') is not null
drop table libros;

create table libros
(
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15)
);

sp_columns libros


insert into libros (titulo,autor,editorial) values ('El aleph','Borges','Emece');
insert into libros (titulo,autor,editorial) values ('Martin Fierro','Jose Hernandez','Emece');
insert into libros (titulo,autor,editorial) values ('Martin Fierro','Jose Hernandez','Planeta');
insert into libros (titulo,autor,editorial) values ('Aprenda PHP','Mario Molina','Siglo XXI');


select * from libros

select * from libros where autor = 'Borges'

select * from libros where editorial = 'Emece'

select * from libros where titulo = 'Martin Fierro'

-----------------------------------------  7 - Operadores relacionales ----------------------------------------------------------

if OBJECT_ID('libros') is not null
drop table libros;

create table libros
(
  titulo varchar(30),
  autor varchar(30),
  editorial varchar(15),
  precio float
);

insert into libros (titulo,autor,editorial,precio) values ('El aleph','Borges','Emece',24.50);
insert into libros (titulo,autor,editorial,precio) values ('Martin Fierro','Jose Hernandez','Emece',16.00);
insert into libros (titulo,autor,editorial,precio) values ('Aprenda PHP','Mario Molina','Emece',35.40);
insert into libros (titulo,autor,editorial,precio) values ('Cervantes y el quijote','Borges','Paidos',50.90);


select * from libros where autor <> 'Borges'


select titulo,precio from libros where precio >20

select * from libros where precio <=30


------------------------------------------------------- Primer problema: -------------------------------------------------------

if OBJECT_ID('articulos') is not null
drop table articulos 

create table articulos
(
  codigo integer,
  nombre varchar(20),
  descripcion varchar(30),
  precio float,
  cantidad integer
)

sp_columns articulos

insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (1,'impresora','Epson Stylus C45',400.80,20);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (2,'impresora','Epson Stylus C85',500,30);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (3,'monitor','Samsung 14',800,10);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (4,'teclado','ingles Biswal',100,50);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (5,'teclado','español Biswal',90,50);

select * from articulos

select * from articulos where nombre= 'impresora'

select * from articulos where precio >= 400

select codigo, nombre from articulos where cantidad < 30

select nombre,descripcion from articulos where	precio <>100



------------------------------------------------------- Segundo problema: -------------------------------------------------------

if OBJECT_ID('peliculas') is not null
drop table peliculas

create table peliculas
(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
);

insert into peliculas (titulo, actor, duracion, cantidad) values ('Mision imposible','Tom Cruise',120,3);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Mision imposible 2','Tom Cruise',180,4);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Mujer bonita','Julia R.',90,1);
insert into peliculas (titulo, actor, duracion, cantidad) values ('Elsa y Fred','China Zorrilla',80,2);


select * from peliculas where duracion <=90

select titulo from peliculas where actor <> 'Tom Cruise'

select titulo,actor,cantidad from peliculas where cantidad > 2


-------------------------------------------------- Borrar registros (delete) ------------------------------------------------------

if object_id('usuarios') is not null
drop table usuarios;

create table usuarios
(
	nombre varchar(30),
	clave varchar(10)
);

insert into usuarios (nombre,clave) values ('Marcelo','River');
insert into usuarios (nombre,clave) values ('Susana','chapita');
insert into usuarios (nombre,clave) values ('CarlosFuentes','Boca');
insert into usuarios (nombre,clave) values ('FedericoLopez','Boca');

select * from usuarios 

delete from usuarios where nombre ='Marcelo'

select * from usuarios 

delete from usuarios where nombre ='Marcelo'

delete from usuarios where clave ='Boca'

select * from usuarios 

delete from usuarios

select * from usuarios 

-----------------------------------------------------  Primer problema:  --------------------------------------------------------

if object_id('agenda') is not null
drop table agenda


create table agenda 
(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
)


insert into agenda (apellido,nombre,domicilio,telefono) values ('Alvarez','Alberto','Colon 123','4234567')
insert into agenda (apellido,nombre,domicilio,telefono) values ('Juarez','Juan','Avellaneda 135','4458787')
insert into agenda (apellido,nombre,domicilio,telefono) values ('Lopez','Maria','Urquiza 333','4545454')
insert into agenda (apellido,nombre,domicilio,telefono) values ('Lopez','Jose','Urquiza 333','4545454')
insert into agenda (apellido,nombre,domicilio,telefono) values ('Salas','Susana','Gral. Paz 1234','4123456')

select * from agenda

delete from agenda where nombre = 'Juan'

delete from agenda where telefono = '4545454'

select * from agenda

delete from agenda

select * from agenda


----------------------------------------  Primer problema:  --------------------------------------------------------------

if OBJECT_ID('articulos') is not null
drop table articulos 

create table articulos(
  codigo integer,
  nombre varchar(20),
  descripcion varchar(30),
  precio float,
  cantidad integer
 );

sp_columns articulos

insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (1,'impresora','Epson Stylus C45',400.80,20);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (2,'impresora','Epson Stylus C85',500,30);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (3,'monitor','Samsung 14',800,10);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (4,'teclado','ingles Biswal',100,50);
insert into articulos (codigo, nombre, descripcion, precio,cantidad) values (5,'teclado','español Biswal',90,50);

select * from articulos

delete from articulos where precio >=500

select * from articulos

delete from articulos where nombre = 'impresora'

select * from articulos

delete from articulos where codigo <> 4

select * from articulos

-----------------------------------------------  9 - Actualizar registros (update) --------------------------------------

if OBJECT_ID('usuarios') is not null
drop table usuarios;

create table usuarios
(
  nombre varchar(20),
  clave varchar(10)
)

sp_columns usuarios

insert into usuarios (nombre,clave) values ('Marcelo','River');
insert into usuarios (nombre,clave) values ('Susana','chapita');
insert into usuarios (nombre,clave) values ('Carlosfuentes','Boca');
insert into usuarios (nombre,clave) values ('Federicolopez','Boca');

select * from usuarios

update usuarios set clave = 'RealMadrid'

select * from usuarios 

update usuarios set clave= 'Boca' where nombre = 'Federicolopez'

select * from usuarios 

update usuarios set clave = 'Payaso' where nombre = 'Luis'

update usuarios set clave = 'Luisame', nombre = 'Luis' where nombre= 'Marcelo' 

select * from usuarios


-------------------------------------- Primer problema ---------------------------------------------------

 if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );


insert into agenda (apellido,nombre,domicilio,telefono) values ('Acosta','Alberto','Colon 123','4234567');
insert into agenda (apellido,nombre,domicilio,telefono) values ('Juarez','Juan','Avellaneda 135','4458787');
insert into agenda (apellido,nombre,domicilio,telefono) values ('Lopez','Maria','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono) values ('Lopez','Jose','Urquiza 333','4545454');
insert into agenda (apellido,nombre,domicilio,telefono) values ('Suarez','Susana','Gral. Paz 1234','4123456');

select * from agenda

update agenda set nombre='Juan Jose' where nombre = 'Juan'

select * from agenda

update agenda set telefono= '4445566' where telefono = '4545454'

select * from agenda

update agenda set nombre = 'Juan Jose' where nombre = 'Juan'

select * from agenda

--------------------------------------------------- Segundo problema:  ----------------------------------------------------

if object_id('libros') is not null
  drop table libros;

create table libros
(
titulo varchar(30),
autor varchar(20),
editorial varchar(15),
precio float
);

insert into libros (titulo, autor, editorial, precio) values ('El aleph','Borges','Emece',25.00);
insert into libros (titulo, autor, editorial, precio) values ('Martin Fierro','Jose Hernandez','Planeta',35.50);
insert into libros (titulo, autor, editorial, precio) values ('Aprenda PHP','Mario Molina','Emece',45.50);
insert into libros (titulo, autor, editorial, precio) values ('Cervantes y el quijote','Borges','Emece',25);
insert into libros (titulo, autor, editorial, precio) values ('Matematica estas ahi','Paenza','Siglo XXI',15);

select * from libros

update libros set autor = 'Adrian Paenza' where autor = 'Paenza'

select * from libros

update libros set autor = 'Adrian Paenza' where autor = 'Paenza'

update libros set precio = 27 where autor = 'Mario Molina'

select * from libros

update libros set editorial = 'Emece S.A' where editorial = 'Emece'

select * from libros

-----------------------------------------   10 - Comentarios  ------------------------------------------------

select * from libros  -- mostramos los registros del libros

select titulo,autor 
/* mostramos titulos y
 nombres  de los autores */ 
from libros


------------------------------------------   11 - Valores null (is null) ----------------------------------------------------

if OBJECT_ID('libros') is not null
drop table libros

create table libros
(
	titulo varchar(30) not null,
	autor varchar(30) not null,
	editorial varchar(30) null,
	precio float
);

sp_columns libros

insert into libros (titulo,autor,editorial,precio) values ('Java','Deithel','Amado',null)
insert into libros (titulo,autor,editorial,precio) values('El aleph','Borges','Emece',null);

select * from libros

insert into libros (titulo, autor, editorial, precio) values ('PHP ya','Mario',null,30.5);

select * from libros

insert into libros (titulo,autor,editorial,precio) values (null,'Luis','Pearse',40);


select * from libros where precio IS NULL

select * from libros where precio =0

select * from libros where precio =''

select * from libros where precio is not null


------------------------------------------------------------- Primer problema ------------------------------ ---------------------------------

if OBJECT_ID('medicamentos') is not null
drop table medicamentos

--codigo,nombre, laboratorio,precio,cantidad

create table medicamentos 
(
	codigo integer not null,
	nombre varchar (30) not null,
	laboratorio varchar (30) ,
	precio float null,
	cantidad int not null

)

sp_columns medicamentos 

insert into medicamentos (codigo,nombre,laboratorio,precio, cantidad) values (1,'Aspirina','Alpha',null,10);
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(2,'Sertal gotas',null,null,100); 
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(3,'Sertal compuesto',null,8.90,150);
insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values(4,'Buscapina','Roche',null,200);

select * from medicamentos

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values (5,'Tabcin','',0,100)

select * from medicamentos

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values (0,'','Alpha',40,0)

select * from medicamentos

insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad) values (null,'Xl3','Alpha 2',50,3)

select * from medicamentos where laboratorio is null

select * from medicamentos where laboratorio = ''

select * from medicamentos where precio is null

select * from medicamentos where precio = 0

select * from medicamentos where laboratorio <> '' 

select * from medicamentos where laboratorio is not null

select * from medicamentos where precio = 0

select * from medicamentos where precio is not null 


------------------------------------------------------------- Segundo problema ------------------------------ ---------------------------------

if OBJECT_ID('peliculas') is not null
drop table peliculas;

create table peliculas
(
	codigo int not null,
	titulo varchar(40) not null,
	actor varchar(30) ,
	duracion int
)

sp_columns peliculas

insert into peliculas (codigo,titulo,actor,duracion) values(1,'Mision imposible','Tom Cruise',120);
insert into peliculas (codigo,titulo,actor,duracion) values(2,'Harry Potter y la piedra filosofal',null,180);
insert into peliculas (codigo,titulo,actor,duracion) values(3,'Harry Potter y la camara secreta','Daniel R.',null);
insert into peliculas (codigo,titulo,actor,duracion) values(0,'Mision imposible 2','',150);
insert into peliculas (codigo,titulo,actor,duracion) values(4,'','L. Di Caprio',220);
insert into peliculas (codigo,titulo,actor,duracion) values(5,'Mujer bonita','R. Gere-J. Roberts',0);

select * from peliculas

insert into peliculas (codigo,titulo,actor,duracion) values(6,null,'Xxx',0);

select * from peliculas where actor is null

select * from peliculas where actor = ''

select * from peliculas where actor <>''

update peliculas set duracion = 120 where duracion is null

update peliculas set actor = null where actor = ''

delete from peliculas where titulo = ''

select * from peliculas


----------------------------------------------------- 12 - Clave primaria -------------------------------------------------------------------

if OBJECT_ID('usuarios') is not null
drop table usuarios;

create table usuarios
(
	nombre varchar(40),
	clave varchar(10),
	primary key (nombre)
)

sp_columns usuarios

insert into usuarios (nombre, clave) values ('juanperez','Boca');
insert into usuarios (nombre, clave) values ('raulgarcia','River');

insert into usuarios (nombre, clave) values ('juanperez','Madrid');

insert into usuarios (nombre, clave) values (null,'Barza');

update usuarios set nombre = 'raulgarcia' where clave='Boca'


--------------------------------------------------------Primer problema:  -------------------------------------------------------------

if OBJECT_ID('libros') is not null
drop table libros;

create table libros
(
	codigo int,
	titulo varchar(30) not null,
	autor varchar(30),
	editorial varchar(20),
	primary key(codigo)
)

insert into libros (codigo,titulo,autor,editorial) values (1,'El aleph','Borges','Emece');
insert into libros (codigo,titulo,autor,editorial) values (2,'Martin Fierro','Jose Hernandez','Planeta');
insert into libros (codigo,titulo,autor,editorial) values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

insert into libros (codigo,titulo,autor,editorial) values (1,'Java','Juan','Arcoiries')

insert into libros (codigo,titulo,autor,editorial) values (null,'Python','Felipe','Planeta')

select * from libros

update libros set codigo = 1 where titulo = 'Martin Fierro'

 
 
 ---------------------------------------------------------- Segundo problema ----------------------------------------------------------------------

if OBJECT_ID('alumnos') is not null
drop table alumnos;

create table alumnos
(
	legajo varchar(4) not null,
	documento varchar(8),
	nombre varchar(30),
	domicilio varchar(30),
	primary key (legajo),
	primary key (documento)
)

create table alumnos
(
	legajo varchar(4) not null,
	documento varchar(8),
	nombre varchar(30),
	domicilio varchar(30),
	primary key (documento),	
)

sp_columns alumnos 

insert into alumnos (legajo,documento,nombre,domicilio) values('A233','22345345','Perez Mariana','Colon 234');
insert into alumnos (legajo,documento,nombre,domicilio) values('A567','23545345','Morales Marcos','Avellaneda 348');
select * from alumnos

insert into alumnos (legajo,documento,nombre,domicilio) values('A789','22345345','Luis Molina','Calle 13')

insert into alumnos (legajo,documento,nombre,domicilio) values('A789',null,'Luis Molina','Calle 13')


--------------------------------------------------- 13 - Campo con atributo Identity  ---------------------------------------------------------

if OBJECT_ID('libros') is not null
drop table libros;

create table libros
(
	codigo int identity,
	titulo varchar(40) not null,
	autor varchar(30),
	editorial varchar(15),
	precio float
)


insert into libros (titulo,autor,editorial,precio) values('Java','Deithel','Emece',50)

select * from libros

insert into libros (codigo,titulo,autor,editorial,precio) values(5,'Martin Fierro','Jose Hernandez','Paidos',25);

sp_columns libros

--------------------------------------------------- Problema -----------------------------------------------------------------------------------

if OBJECT_ID('libros') is not null
drop table libros

create table libros
(
	codigo int identity,
	titulo varchar(50) not null,
	autor varchar(30),
	editorial varchar (12),
	precio float
)

insert into libros (titulo,autor,editorial,precio) values ('El alamo','Borgues','Emece',40.5)

select * from libros

insert into libros (titulo,autor,editorial,precio) values('Uno','Richard Bach','Planeta',18);
insert into libros (titulo,autor,editorial,precio) values('Aprenda PHP','Mario Molina','Siglo XXI',45.60);
insert into libros (titulo,autor,editorial,precio) values('Alicia en el pais de maravillas','Lewis Carroll','Paidos',15.50);

select * from libros

insert into libros (codigo,titulo,autor,editorial,precio) values(8,'Uno','Richard Bach','Planeta',18);

update libros set codigo= 6 where titulo = 'Uno';

sp_columns libros

delete from libros where autor = 'Lewis Carroll'

insert into libros (titulo, autor, editorial, precio) values('Martin Fierro','Jose Hernandez','Paidos',25); 

select * from libros;

----------------------------------------------------- Primer problema ---------------------------------------------------------------------

if OBJECT_ID('medicamentos') is not null
drop table medicamentos;

create table medicamentos
(
	codigo int identity,
	nombre varchar(50) not null,
	laboratorio varchar(30),
	precio float,
	cantidad int,
)

 sp_columns medicamentos;

insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Sertal','Roche',5.2,100);
insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Buscapina','Roche',4.10,200);
insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Amoxidal 500','Bayer',15.60,100);

select * from medicamentos

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad) values(5,'Amoxidal 500','Bayer',15.60,100);

update medicamentos set codigo = 6 where nombre = 'Sertal'

delete from medicamentos where codigo = 3

insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Xl3 500','Bayer',15.90,70); 

select * from medicamentos

------------------------------------------------------------- Segundo Problema ------------------------------------------------------------

 if object_id('peliculas') is not null
  drop table peliculas;

create table peliculas(
codigo int identity,
titulo varchar(40),
actor varchar(20),
duracion int,
primary key(codigo)
 );

insert into peliculas (titulo,actor,duracion) values('Mision imposible','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion) values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas (titulo,actor,duracion) values('Harry Potter y la camara secreta','Daniel R.',190);
insert into peliculas (titulo,actor,duracion) values('Mision imposible 2','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion) values('La vida es bella','zzz',220);


select * from peliculas

update peliculas set codigo = 10 where titulo = 'La vida es bella'

delete from peliculas where titulo = 'La vida es bella'

insert into peliculas (titulo,actor,duracion) values('Ruby','Carratala',300);

select * from peliculas


-------------------------------------------------  14 - Otras características del atributo Identity ----------------------------------------------

drop table libros

create table libros
(
	codigo int identity(100,2),
	titulo varchar(40) not null,
	autor varchar(30),
	precio float,
	primary key(codigo)
)

-- La función "ident_seed()" retorna el valor de inicio del campo "identity" de la tabla que nombramos:

select IDENT_SEED('libros')

-- La función "ident_incr()" retorna el valor de incremento del campo "identity" de la tabla nombrada:

select ident_incr('libros');


/*
Hemos visto que en un campo declarado "identity" no puede ingresarse explícitamente un valor.
Para permitir ingresar un valor en un campo de identidad se debe activar la opción "identity_insert" en "on".
*/

set identity_insert libros on;

-- Cuando "identity_insert" está en ON, las instrucciones "insert" deben explicitar un valor:

insert into libros (codigo,titulo,autor,precio) values (-40,'El mal 2','Mario2',20)

select * from libros

-- Si no se coloca un valor para el campo de identidad, la sentencia no se ejecuta y aparece un mensaje de error:

insert into libros (titulo,autor,precio) values ('Java','Marquez',50)


-- Para desactivar la opción "identity_insert" tipeamos:

 set identity_insert libros off;


 ----------------------------------------------------------- problema  ----------------------------------------------------------------------------

 if OBJECT_ID('libros') is not null
 drop table libros

 create table libros
 (
	codigo int identity(100,2),
	titulo varchar(50) not null,
	autor varchar(50),
	precio float 
 )

insert into libros (titulo,autor,precio) values('El Pianista','Leonardo',80)
insert into libros (titulo,autor,precio) values('El aleph','Borges',23);
insert into libros (titulo,autor,precio) values('Uno','Richard Bach',18);
insert into libros (titulo,autor,precio) values('Aprenda PHP','Mario Molina',45.60);

select * from libros

select ident_seed('libros');


set identity_insert libros on

insert into libros (codigo,titulo,autor,precio) values (29,'XXXXX','TTTTTT',67)

insert into libros (codigo,titulo,autor,precio) values (100,'DDDDDD','BBBBBBB',45) 

insert into libros (titulo,autor,precio) values ('DDDDDD','BBBBBBB',45) -- error

set identity_insert libros off

insert into libros (codigo,titulo,autor,precio) values (200,'DDDDDD','BBBBBBB',45)  -- error

---------------------------------------------------------- Primer problema:  ----------------------------------------------------------------------

if object_id('medicamentos') is not null
drop table medicamentos;


create table medicamentos 
(
	codigo integer identity(10,1),
	nombre varchar(40) not null,
	laboratorio varchar(40),
	precio float,
	cantidad integer
)

insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Sertal','Roche',5.2,100);
insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Buscapina','Roche',4.10,200);
insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Amoxidal 500','Bayer',15.60,100);


select * from medicamentos

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad) values(3,'Amoxidal 400','Bayer',15.60,100);

set identity_insert medicamentos on

insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Aspirina 300','Bayer',90.60,73);

insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad) values(10,'Tabcin','Bayer',120.4,30);

select ident_seed('medicamentos')

select IDENT_INCR('medicamentos')

---------------------------------------------------- Segundo problema ------------------------------------------------------------

if object_id('peliculas') is not null
drop table peliculas;


create table peliculas
(
	codigo integer identity(50,3),
	titulo varchar(50) not null,
	actor varchar(40),
	duracion integer
)

insert into peliculas (titulo,actor,duracion) values('Mision imposible','Tom Cruise',120);
insert into peliculas (titulo,actor,duracion) values('Harry Potter y la piedra filosofal','Daniel R.',180);
insert into peliculas (titulo,actor,duracion) values('Harry Potter y la camara secreta','Daniel R.',190);

select * from peliculas

set identity_insert peliculas on

insert into peliculas (codigo,titulo,actor,duracion) values(20 ,'Mision imposible 2','Tom Cruise',130);

insert into peliculas (codigo,titulo,actor,duracion) values(30 ,'Mision imposible 3','Tom Cruise',140);

select ident_seed('peliculas')

select IDENT_INCR('peliculas')


insert into peliculas (titulo,actor,duracion) values('La maldicion 2','Tomas',140);


set identity_insert peliculas off


insert into peliculas (titulo,actor,duracion) values('Karate Kid 2','Mauricio.',100);

select * from peliculas


----------------------------------------------------  15 - Truncate table ---------------------------------------------------------------

 if object_id('libros') is not null
  drop table libros;

create table libros(
  codigo int identity,
  titulo varchar(30),
  autor varchar(20),
  editorial varchar(15),
  precio float
 );


insert into libros (titulo,autor,editorial,precio) values ('El aleph','Borges','Emece',25.60);
insert into libros (titulo,autor,editorial,precio) values ('Uno','Richard Bach','Planeta',18);

select * from alumnos 

truncate table libros

insert into libros (titulo,autor,editorial,precio) values ('El aleph','Borges','Emece',25.60);
insert into libros (titulo,autor,editorial,precio) values ('Uno','Richard Bach','Planeta',18);

select * from libros;

delete from libros;

insert into libros (titulo,autor,editorial,precio) values ('El aleph','Borges','Emece',25.60);
insert into libros (titulo,autor,editorial,precio) values ('Uno','Richard Bach','Planeta',18);

select * from libros;

---------------------------------------------------------------  Primer problema --------------------------------------------------------------

if object_id('alumnos') is not null
drop table alumnos;

create table alumnos
(
  legajo int identity,
  documento varchar(8),
  nombre varchar(30),
  domicilio varchar(30)
 );

insert into alumnos (documento,nombre,domicilio) values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio) values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio) values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio) values('25666777','Torres Ramiro','Dinamarca 209');

select * from alumnos

delete from alumnos

insert into alumnos (documento,nombre,domicilio) values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio) values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio) values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio) values('25666777','Torres Ramiro','Dinamarca 209');

select * from alumnos

truncate table alumnos 

insert into alumnos (documento,nombre,domicilio) values('22345345','Perez Mariana','Colon 234');
insert into alumnos (documento,nombre,domicilio) values('23545345','Morales Marcos','Avellaneda 348');
insert into alumnos (documento,nombre,domicilio) values('24356345','Gonzalez Analia','Caseros 444');
insert into alumnos (documento,nombre,domicilio) values('25666777','Torres Ramiro','Dinamarca 209');

select * from alumnos



----------------------------------------------------  Segundo problema:  -------------------------------------------------------------------

if object_id('articulos') is not null
drop table articulos;

create table articulos(
  codigo integer identity,
  nombre varchar(20),
  descripcion varchar(30),
  precio float
 );

insert into articulos (nombre, descripcion, precio) values ('impresora','Epson Stylus C45',400.80);
insert into articulos (nombre, descripcion, precio) values ('impresora','Epson Stylus C85',500);

select * from articulos 

truncate table articulos

insert into articulos (nombre, descripcion, precio) values ('monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio) values ('teclado','ingles Biswal',100);
insert into articulos (nombre, descripcion, precio) values ('teclado','español Biswal',90);

select * from articulos 

delete articulos

insert into articulos (nombre, descripcion, precio) values ('monitor','Samsung 14',800);
insert into articulos (nombre, descripcion, precio) values ('teclado','ingles Biswal',100);
insert into articulos (nombre, descripcion, precio) values ('teclado','español Biswal',90);

select * from articulos 


-----------------------------------------------------  16 - Otros tipos de datos en SQL Server ------------------------------------------------------

/*
Los valores que podemos guardar son:

TEXTO: Para almacenar texto usamos cadenas de caracteres.
Las cadenas se colocan entre comillas simples. Podemos almacenar letras, símbolos y dígitos con los que no se realizan operaciones matemáticas, por ejemplo, códigos de identificación, números de documentos, números telefónicos.
SQL Server ofrece los siguientes tipos: char, nchar, varchar, nvarchar, text y ntext.

char, nchar, varchar, nvarchar, text y ntext

NUMEROS: Existe variedad de tipos numéricos para representar enteros, decimales, monedas.
Para almacenar valores enteros, por ejemplo, en campos que hacen referencia a cantidades, precios, etc., usamos el tipo integer (y sus subtipos: tinyint, smallint y bigint). 

integer, tinyint, smallint y bigint

Para almacenar valores con decimales exactos, utilizamos: numeric o decimal (son equivalentes). 

numeric o decimal

Para guardar valores decimales aproximados: float y real. Para almacenar valores monetarios: money y smallmoney.

money y smallmoney

FECHAS y HORAS: para guardar fechas y horas SQL Server dispone de 2 tipos: datetime y smalldatetime.

datetime y smalldatetime

*/


------------------------------------------- --------  17 - Tipo de dato (texto) -------------------------------------------------------

if object_id('articulos') is not null
drop table articulos;

create table articulos(
  codigo integer identity,
  nombre char(5),
  descripcion varchar(30),
  precio float
 );

 sp_columns articulos

insert into articulos (nombre, descripcion, precio) values ('0763158','español Biswal',90);

select * from articulos

 
--------------------------------------------------------- Problema -------------------------------------------------------------------------------

if OBJECT_ID('visitantes') is not null
drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  edad integer,
  sexo char(1),
  domicilio varchar(30),
  ciudad varchar(20),
  telefono varchar(11)
 );

insert into visitantes (nombre,edad,sexo,domicilio,ciudad,telefono) values ('Juan Juarez',32,'masc','Avellaneda 789','Cordoba','4234567');


insert into visitantes (nombre,edad,sexo,domicilio,ciudad,telefono) values ('Marcela Morales',43,'f','Colon 456','Cordoba',4567890);

select * from visitantes


----------------------------------------------------------- Primer problema: ---------------------------------------------------------

if OBJECT_ID('autos') is not null
drop table autos

create table autos
(
	patente char(6),
	marca varchar(30),
	modelo char(4),
	precio float
	primary key(patente)
)

insert into autos values('AGED23','Nissan','2000',30000)
insert into autos values('ACD123','Fiat 128','1970',15000);
insert into autos values('ACG234','Renault 11','1990',40000);
insert into autos values('BCD333','Peugeot 505','1990',80000);
insert into autos values('GCD123','Renault Clio','1990',70000);
insert into autos values('BCC333','Renault Megane','1998',95000);
insert into autos values('BVF543','Fiat 128','1975',20000);

select * from autos 

select * from autos where modelo = 1990



-------------------------------------------------------- Segundo problema -------------------------------------------------------------

if object_id('clientes') is not null
drop table clientes

create table clientes
(
  documento char(8),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar (11)
 );

insert into clientes values('2233344','Perez','Juan','Sarmiento 980','4342345');
insert into clientes (documento,apellido,nombre,domicilio) values('2333344','Perez','Ana','Colon 234');
insert into clientes values('2433344','Garcia','Luis','Avellaneda 1454','4558877');
insert into clientes values('2533344','Juarez','Ana','Urquiza 444','4789900');

select * from clientes where apellido = 'Perez'



---------------------------------------------------------  18 - Tipo de dato (numérico) ----------------------------------------------------------
/*
1) integer o int: su rango es de -2000000000 a 2000000000 aprox. El tipo "integer" tiene subtipos: 
- smallint: Puede contener hasta 5 digitos. Su rango va desde –32000 hasta 32000 aprox.
- tinyint: Puede almacenar valores entre 0 y 255.
- bigint: De –9000000000000000000 hasta 9000000000000000000 aprox.

2) decimal o numeric (t,d): Pueden tener hasta 38 digitos, guarda un valor exacto. El primer argumento indica el total de dígitos y el segundo, la 
cantidad de decimales.
Por ejemplo, si queremos almacenar valores entre -99.99 y 99.99 debemos definir el campo como tipo "decimal(4,2)". 
Si no se indica el valor del segundo argumento, por defecto es "0". Por ejemplo, si definimos "decimal(4)" se pueden guardar valores entre -9999 y 9999.

3) float y real: De 1.79E+308 hasta 1.79E+38. Guarda valores aproximados.
4) real: Desde 3.40E+308 hasta 3.40E+38. Guarda valores aproximados.

5) money: Puede tener hasta 19 digitos y sólo 4 de ellos puede ir luego del separador decimal; entre –900000000000000.5808 aprox y 900000000000000.5807.

6) smallmoney: Entre –200000.3648 y 200000.3647 aprox.



*/

if OBJECT_ID('libros') is not null
drop table libros

create table libros
(
	codigo smallint identity,
	titulo varchar(40) not null,
	autor varchar(40),
	editorial varchar(30),
	precio smallmoney,
	cantidad tinyint
)

insert into libros values ('El Pianista','Dingo','Emece',200,260) -- error

insert into libros values ('El Pianista','Dingo','Emece',250000,20) -- error

insert into libros values ('El Pianista','Dingo','Emece','10y',20) -- error


insert into libros values ('El Pianista','Dingo','Emece','100.5','10') -- error


select * from libros


----------------------------------------------------- Prime Problema  ----------------------------------------------------------------------

if OBJECT_ID('cuentas') is not null
drop table cuentas;

create table cuentas
(
	numero smallint,
	documento char(8) not null,
	nombre varchar(30),
	saldo decimal (8,2)
	primary key(numero)
)


insert into cuentas(numero,documento,nombre,saldo) values('1234','25666777','Pedro Perez',500000.60);
insert into cuentas(numero,documento,nombre,saldo) values('2234','27888999','Juan Lopez',-250000);
insert into cuentas(numero,documento,nombre,saldo) values('3344','27888999','Juan Lopez',4000.50);
insert into cuentas(numero,documento,nombre,saldo) values('3346','32111222','Susana Molina',1000);


select * from cuentas

select * from cuentas where saldo > 4000

select numero,saldo from cuentas where nombre='Juan Lopez';

select * from cuentas where saldo < 0

select * from cuentas where numero >=3000


----------------------------------------------------- Segundo Problema -----------------------------------------------------------

if object_id('empleados') is not null
drop table empleados;

create table empleados(
  nombre varchar(30),
  documento char(8),
  sexo char(1),
  domicilio varchar(30),
  sueldobasico decimal(7,2),--máximo estimado 99999.99
  cantidadhijos tinyint--no superará los 255
 );

insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) values ('Juan Perez','22333444','m','Sarmiento 123',500,2);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) values ('Ana Acosta','24555666','f','Colon 134',850,0);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) values ('Bartolome Barrios','27888999','m','Urquiza 479',10000.80,4);

select * from empleados

insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) values ('Jose Mora','42434549','m','calle 123',40000.49600,2);


insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos) values ('Manuel Najera','42434549','m','calle 123',40000000.45,2);

select * from empleados where sueldobasico <=900

select * from empleados where cantidadhijos >0



-------------------------------------------------------  19 - Tipo de dato (fecha y hora) -----------------------------------------------------------
/*
Para almacenar valores de tipo FECHA Y HORA SQL Server dispone de dos tipos:

1) datetime: puede almacenar valores desde 01 de enero de 1753 hasta 31 de diciembre de 9999.

2) smalldatetime: el rango va de 01 de enero de 1900 hasta 06 de junio de 2079.

Las fechas se ingresan entre comillas simples.

Para almacenar valores de tipo fecha se permiten como separadores "/", "-" y ".".


SQL Server reconoce varios formatos de entrada de datos de tipo fecha. Para establecer el orden de las partes de una fecha (dia, mes y año) 

empleamos "set dateformat". Estos son los formatos:

-mdy: 4/15/96 (mes y día con 1 ó 2 dígitos y año con 2 ó 4 dígitos),
-myd: 4/96/15,
-dmy: 15/4/1996
-dym: 15/96/4,
-ydm: 96/15/4,
-ydm: 1996/15/4,


El formato por defecto es "ymd".


*/


if object_id('empleados') is not null
drop table empleados;


create table empleados
(
  nombre varchar(20),
  documento char(8),
  fechaingreso datetime
 );

set dateformat dmy

 insert into empleados values('Ana Gomez','22222222','12-01-1980');
 insert into empleados values('Bernardo Huerta','23333333','15-03-81');
 insert into empleados values('Carla Juarez','24444444','20/05/1983');
 insert into empleados values('Daniel Lopez','25555555','2.5.1990');

select * from empleados

select * from empleados where fechaingreso < '01-01-1985'

update empleados set nombre= 'Maria Carla Juarez' where fechaingreso = '20-05-1983'

delete empleados where fechaingreso <> '20.5.83'

select * from empleados

 
 ----------------------------------------------------------- Primer problema:  ---------------------------------------------------------------------

 if OBJECT_ID('alumnos') is not null
 drop table alumnos

 create table alumnos
 (
	apellido varchar(40),
	 nombre varchar(40),
	 documento char(8),
	 domicilio varchar(50),
	 fechaingreso datetime,
	 fechanacimiento datetime
 )

set dateformat dmy

insert into alumnos values('Moreno','Luis','12345678','Calle 12','20/10/2014','20-12-2014')
insert into alumnos values('Moreno','Luis','12345678','Calle 12','10.07.2014','10-10/2014')
insert into alumnos values('Moreno','Luis','12345678','Calle 12','1.7.14','10-10-90')
insert into alumnos values('Moreno','Luis','12345678','Calle 12','5.3.00',null)
insert into alumnos values('Moreno','Luis','12345678','Calle 12','5.3.00','03-15-90')


insert into alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');
insert into alumnos values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');
insert into alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);
insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

select * from alumnos where fechaingreso< '1-1-91'

select * from alumnos where fechanacimiento is null

insert into alumnos values('Rosas','Romina','28888888','Avellaneda 487','03151990',null);

set dateformat mdy


select * from alumnos


------------------------------------------------------------ 20 - Ingresar algunos campos (insert into)--------------------------------------------

if object_id('libros') is not null
drop table libros

create table libros 
(
	codigo int identity,
	titulo varchar(50) not null,
	autor varchar(50),
	editorial varchar(50),
)


insert into libros values ('Uno','Richard Bach','Planeta');

insert into libros (titulo,autor)values ('Dos','Richard Bach 2');

insert into libros (autor,editorial)values ('Tres','Emece');


select * from libros


----------------------------------------------------- Primer problema _------------------------------------------------------------------------------------

if object_id('cuentas') is not null
  drop table cuentas;

create table cuentas(
  numero int identity,
  documento char(8) not null,
  nombre varchar(30),
  saldo money
 );


insert into cuentas values(2,'12345','Luis',2000.60)  -- error

insert into cuentas values ('987654','Jose Ramon',4000.50)

insert into cuentas values ('987654','Jose Ramon') -- error

insert into cuentas (documento,nombre) values ('43764637','Juan jesus')

insert into cuentas (numero,documento,nombre,saldo) values (3,'958747','Leonardo Moreno')  -- error

insert into cuentas (documento,nombre,saldo) values ('43764637','Juan jesus',73623,'Otro dato mas') -- error
 
insert into cuentas (nombre,saldo) values ('Juan jesus',284823)  -- error

select * from cuentas


---------------------------------------------   25 - Funciones para el manejo de cadenas -------------------------------------------------------------------
/*
substring(cadena,inicio,longitud): devuelve una parte de la cadena especificada como primer argumento, empezando desde la posición especificada por el
 segundo argumento y de tantos caracteres de longitud como indica el tercer argumento.*/

 select substring('Hola mundo jaja hoy es un dia genial',17,13)

 /*
 str(numero,longitud,cantidaddecimales): convierte números a caracteres; el primer parámetro indica el valor numérico a convertir, el segundo la longitud 
 del resultado (debe ser mayor o igual a la parte entera del número más el signo si lo tuviese) y el tercero, la cantidad de decimales. 
 El segundo y tercer argumento son opcionales y deben ser positivos. String significa cadena en inglés.

 Si no se colocan el segundo y tercer argumeno, la longitud predeterminada es 10 y la cantidad de decimales 0 y se redondea a entero. 
 

 */

select str(123.456,7,3)

select str(968.968,6,2);

-- stuff(cadena1,inicio,cantidad,cadena2): inserta la cadena enviada como cuarto argumento, en la posición indicada en el segundo argumento, 
-- reemplazando la cantidad de caracteres indicada por el tercer argumento en la cadena que es primer parámetro. Stuff significa rellenar en inglés. 

select stuff('intel core i5',7,7,'core i3');


-- len(cadena): retorna la longitud de la cadena enviada como argumento. "len" viene de length, que significa longitud en inglés. Ejemplo:

select len('Hola');


--- char(x): retorna un caracter en código ASCII del entero enviado como argumento. Ejemplo:


select char(65)


-- left(cadena,longitud): retorna la cantidad (longitud) de caracteres de la cadena comenzando desde la izquierda, primer caracter. Ejemplo:

select left('Buenos dias',6)


-- right(cadena,longitud): retorna la cantidad (longitud) de caracteres de la cadena comenzando desde la derecha, último caracter. Ejemplo:

select right('Buenos dias',6)


--lower(cadena): retornan la cadena con todos los caracteres en minúsculas. lower significa reducir en inglés. Ejemplo:

select lower('BueNOS DIAS')


--upper(cadena): retornan la cadena con todos los caracteres en mayúsculas. Ejemplo:

select upper('buenos diAS')


--ltrim(cadena): retorna la cadena con los espacios de la izquierda eliminados. Trim significa recortar. Ejemplo:

select ltrim('        Hola mundo')


-- - rtrim(cadena): retorna la cadena con los espacios de la derecha eliminados. Ejemplo:

select rtrim('Hola mundo       ')


-- replace(cadena,cadenareemplazo,cadenareemplazar): retorna la cadena con todas las ocurrencias de la subcadena reemplazo por la subcadena a reemplazar. Ejemplo:

 select replace('xxx.sqlserverya.com.ar','x','w')


 -- reverse(cadena): devuelve la cadena invirtiendo el order de los caracteres. Ejemplo:


 select reverse('Hola mundo')



 --- patindex(patron,cadena): devuelve la posición de comienzo (de la primera ocurrencia) del patrón especificado en la cadena enviada como segundo argumento.
 -- Si no la encuentra retorna 0. Ejemplos:


 select patindex('%B%', 'Jorge Luis Borges');

 select patindex('%ar%', 'Jorge Luis Borges');


 -- charindex(subcadena,cadena,inicio): devuelve la posición donde comienza la subcadena en la cadena, comenzando la búsqueda desde la posición indicada
 -- por "inicio". Si el tercer argumento no se coloca, la búsqueda se inicia desde 0. Si no la encuentra, retorna 0. Ejemplos:


 select charindex('or','Jorge Luis Borges',5); 

select charindex('or','Jorge Luis Borges'); 

select charindex('or','Jorge Luis Borges',15); 


-- replicate(cadena,cantidad): repite una cadena la cantidad de veces especificada. Ejemplo:

select replicate ('Hola ',3);


-- space(cantidad): retorna una cadena de espacios de longitud indicada por "cantidad", que debe ser un valor positivo. Ejemplo:

 select 'Hola'+space(5)+'que tal';

 
 --------------------------------------------- 26 - Funciones matemáticas--------------------------------------------------------------------------

 --  abs(x): retorna el valor absoluto del argumento "x". Ejemplo:

 select abs(-40)


 --ceiling(x): redondea hacia arriba el argumento "x". Ejemplo:

 select ceiling(34.6)

 --floor(x): redondea hacia abajo el argumento "x". Ejemplo:

 select  floor(45.83)


 -- %: devuelve el resto de una división. Ejemplos:


 select 10 % 5

 select 10 % 3


 -- power(x,y): retorna el valor de "x" elevado a la "y" potencia. Ejemplo:

 select power(2,5)


 --round(numero,longitud): retorna un número redondeado a la longitud especificada. "longitud" debe ser tinyint, smallint o int. Si "longitud" 
 --es positivo, el número de decimales es redondeado según "longitud"; si es negativo, el número es redondeado desde la parte entera según el 
 --valor de "longitud". Ejemplos:

select round(123.456,1);   -- retorna 123.500

select round(123.456,2);  --retorna 123.460

select round(123.456,-1);  --retorna 120.000

select round(123.456,-2);   --retorna 100.000

select round(123,-1);   --retorna 120.000

select round(123.95,1); -- retorna 124.00

select round(123.7,1); -- retorna 123.7


-- sign(x): si el argumento es un valor positivo devuelve 1 y 
---1 si es negativo y si es 0, 0. 

select sign(-8)


--srqt(x): devuelve la raiz cuadrada del valor enviado como argumento.


select sqrt(64)


------------------------------------------------  27 - Funciones para el uso de fechas y horas ------------------------------------------------------

-- getdate(): retorna la fecha y hora actuales. Ejemplo:

select getdate()

-- datepart(partedefecha,fecha): retorna la parte específica de una fecha, el año, trimestre, día, hora, etc.

--Los valores para "partedefecha" pueden ser: year (año), quarter (cuarto), month (mes), day (dia), week (semana), hour (hora), minute (minuto),
-- second (segundo) y millisecond (milisegundo). Ejemplos:

select datepart(day,getdate())
select datepart(month,getdate())
select datepart(year,getdate())
select datepart(hour,getdate())


--- datename(partedefecha,fecha): retorna el nombre de una parte específica de una fecha. Los valores para "partedefecha" pueden ser los mismos
-- que se explicaron anteriormente. Ejemplos:

select datename(DAY,getdate())
select datename(month,getdate())
select datename(year,getdate())


-- dateadd(partedelafecha,numero,fecha): agrega un intervalo a la fecha especificada, es decir, retorna una fecha adicionando a la fecha enviada como
-- tercer argumento, el intervalo de tiempo indicado por el primer parámetro, tantas veces como lo indica el segundo parámetro. 
-- Los valores para el primer argumento pueden ser: year (año), quarter (cuarto), month (mes), day (dia), week (semana), hour (hora), minute (minuto), 
-- second (segundo) y millisecond (milisegundo). Ejemplos:

set dateformat 'dmy'

select dateadd(day,3,'20/04/2010');

select dateadd(month,2,'20-04-2010')

select dateadd(year,5,'20.04.2010')

select dateadd(hour,2,'20.04.2010')

select dateadd(minute,26,'20-04-2010')


-- datediff(partedelafecha,fecha1,fecha2): calcula el intervalo de tiempo (según el primer argumento) entre las 2 fechas. 
--El resultado es un valor entero que corresponde a fecha2-fecha1. Los valores de "partedelafecha)
-- pueden ser los mismos que se especificaron anteriormente. Ejemplos:

select datediff(day,'30-09-1988',getdate())

select datediff(month,'30-09-1988',getdate())

select datediff(year,'30-09-1988',getdate())


-- day(fecha): retorna el día de la fecha especificada. Ejemplo:

select day('18-01-2015')
select day(getdate())

-- month(fecha): retorna el mes de la fecha especificada. Ejemplo:

select month('18-01-2015')
select month(getdate())

-- year(fecha): retorna el año de la fecha especificada. Ejemplo:

select year('18-01-2015')
select year(getdate())



--------------------------------------------------------- problema ----------------------------------------------------------------------------

if OBJECT_ID('empleados') is not null
drop table empleados

create table empleados
(
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	documento char(8),
	fechanacimiento datetime,
	fechaingreso datetime,
	sueldo decimal(6,2)
	primary key (documento)
)

 insert into empleados values('Ana','Acosta','22222222','1970/10/10','1995/05/05',228.50);
 insert into empleados values('Carlos','Caseres','25555555','1978/02/06','1998/05/05',309);
 insert into empleados values('Francisco','Garcia','26666666','1978/15/10','1998/10/02',250.68);
 insert into empleados values('Gabriela','Garcia','30000000','1985/25/10','2000/22/12',300.25);
 insert into empleados values('Luis','Lopez','31111111','1987/02/10','2000/21/08',350.98);

 select nombre + ' '+upper(apellido)as nombre, 'DNI No: '+documento, '$ '+str(sueldo,6,2) as sueldo  from empleados 

 select documento , '$ '+str(ceiling(sueldo),6,2) from empleados

 select nombre,apellido,fechanacimiento from empleados where datename(MONTH,fechanacimiento) = 'octubre' 


 select nombre,apellido from empleados where year(fechaingreso) = 2000

 
 ------------------------------------------------- 28 - Ordenar registros (order by) --------------------------------------------------------

 create table libros
(
	codigo int identity,
	titulo varchar(50),
	autor varchar(50),
	editorial varchar(30),
	precio decimal(6,2),
	primary key(codigo)
)

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',25.33);
 insert into libros
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.65);
 insert into libros (titulo,autor,editorial,precio)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',19.95);
 insert into libros (titulo,autor,editorial,precio)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Planeta',15);


select * from libros

select * from libros order by titulo

select titulo,autor,precio from libros order by 3

select * from libros order by editorial desc

select * from libros order by titulo  ,editorial 

select * from libros order by titulo asc, editorial desc

select titulo,autor,editorial from libros order by precio desc

select titulo,autor,editorial, precio-(precio*.10) as 'precio con descuento' from libros order by 4 desc


----------------------------------------------------- Primer problema:  -------------------------------------------------------------------------

if object_id('visitas') is not null
drop table visitas

create table visitas (
  numero int identity,
  nombre varchar(30) default 'Anonimo',
  mail varchar(50),
  pais varchar (20),
  fecha datetime,
  primary key(numero)
);

delete from visitas

set dateformat 'ymd'

 insert into visitas (nombre,mail,pais,fecha)
  values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
 insert into visitas (nombre,mail,pais,fecha)
 values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

select * from visitas order by fecha desc
z

select nombre,pais,fecha, datename(month,fecha) as mes 
from visitas order by pais asc, 4 desc

select pais, datename(month,fecha) as mes , datename(day,fecha) as dia, datename(hour,fecha) as hora 
from visitas order by 2 , 3, 4

select mail,pais,fecha from visitas 
where month(fecha) = 10 
order by pais 


--------------------------------------------  29 - Operadores lógicos ( and - or - not) -------------------------------------------------------

if object_id('medicamentos') is not null
drop table medicamentos

create table medicamentos
(
	codigo int identity,
	nombre varchar(50),
	laboratorio varchar(50),
	precio decimal(6,2),
	cantidad tinyint,
	primary key(codigo)
)


 insert into medicamentos
  values('Sertal','Roche',5.2,100);
 insert into medicamentos
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos
  values('Amoxidal 500','Bayer',15.60,100);
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,200);
 insert into medicamentos
  values('Bayaspirina','Bayer',2.10,150); 
 insert into medicamentos
  values('Amoxidal jarabe','Bayer',5.10,250); 


select * from medicamentos where laboratorio = 'Roche' and precio < 5

select * from medicamentos where laboratorio = 'Roche' or precio < 5

select * from medicamentos where not laboratorio = 'Bayer' and cantidad = 100

select * from medicamentos where laboratorio = 'Bayer' and not cantidad = 100;

delete from medicamentos where laboratorio = 'Bayer' and precio >10

select * from medicamentos 

update  medicamentos set cantidad = 200 where laboratorio = 'Roche'

delete from medicamentos where laboratorio = 'Bayer' or precio < 3 

---------------------------------------------- Segundo problema ------------------------------------------------

drop table peliculas

create table peliculas
(
	codigo int identity,
	titulo varchar(50) not null,
	actor  varchar(50) ,
	duracion tinyint 
	primary key(codigo)
)

insert into peliculas
  values('Mision imposible','Tom Cruise',120);
 insert into peliculas
  values('Harry Potter y la piedra filosofal','Daniel R.',180);
 insert into peliculas
  values('Harry Potter y la camara secreta','Daniel R.',190);
 insert into peliculas
  values('Mision imposible 2','Tom Cruise',120);
 insert into peliculas
  values('Mujer bonita','Richard Gere',120);
 insert into peliculas
  values('Tootsie','D. Hoffman',90);
 insert into peliculas
  values('Un oso rojo','Julio Chavez',100);
 insert into peliculas
  values('Elsa y Fred','China Zorrilla',110);

select * from peliculas

select * from peliculas where actor = 'Tom Cruise' or actor = 'Richard Gere'

select * from peliculas where actor = 'Tom Cruise' and duracion < 100

update peliculas set duracion = 200 where actor = 'Daniel R.' and duracion = 180

delete from peliculas where not actor = 'Tom Cruise' and duracion >=100

----------------------------  30 - Otros operadores relacionales (is null) ---------------------------------------------------------

drop table libros

create table libros
(
	codigo int identity,
	titulo varchar(50) not null,
	autor varchar(50) default 'desconocido',
	editorial varchar(50) ,
	precio decimal(6,2)
	primary key(codigo)
)

insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Cervantes y el quijote','Borges','Paidos',null);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece',25.90);
 insert into libros (titulo,autor,precio)
  values('Antología poética','Borges',25.50);
 insert into libros (titulo,autor,precio)
  values('Java en 10 minutos','Mario Molina',45.80);
 insert into libros (titulo,autor)
  values('Martin Fierro','Jose Hernandez');
 insert into libros (titulo,autor)
  values('Aprenda PHP','Mario Molina');

select * from libros

select * from libros where editorial is null

select * from libros where editorial is not null

-----------------------------------------------------Primer problema: ---------------------------------------------------------

drop table peliculas 

create table peliculas
(
	codigo int identity,
	titulo varchar(50) not null,
	autor varchar(50),
	duracion tinyint
	primary key(codigo)
)

insert into peliculas
  values('Mision imposible','Tom Cruise',120);
 insert into peliculas
  values('Harry Potter y la piedra filosofal','Daniel R.',null);
 insert into peliculas
  values('Harry Potter y la camara secreta','Daniel R.',190);
 insert into peliculas
  values('Mision imposible 2','Tom Cruise',120);
 insert into peliculas
  values('Mujer bonita',null,120);
 insert into peliculas
  values('Tootsie','D. Hoffman',90);
 insert into peliculas (titulo)
  values('Un oso rojo');

select * from peliculas

select * from peliculas where autor is null

update peliculas set duracion = 0 where duracion is null

delete from peliculas where autor is null and duracion = 0


-------------------------------------------  31 - Otros operadores relacionales (between) ---------------------------------------

drop table libros

create table libros
(
	codigo int identity,
	titulo varchar(50) not null,
	autor varchar(50) default 'desconocido',
	editorial varchar(50),
	precio numeric(6,2)
	primary key (codigo)
)

 insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Cervantes y el quijote','Borges','Paidos',null);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece',25.90);
 insert into libros (titulo,autor,precio)
  values('Antología poética','Borges',32);
 insert into libros (titulo,autor,precio)
  values('Java en 10 minutos','Mario Molina',45.80);
 insert into libros (titulo,autor,precio)
  values('Martin Fierro','Jose Hernandez',40);
 insert into libros (titulo,autor,precio)
  values('Aprenda PHP','Mario Molina',56.50);


select * from libros

select * from libros where precio between 20 and 40 

select * from libros where precio not between 20 and 40

---------------------------------------------------  Primer problema:  ----------------------------------------------------------

drop table visitas

create table visitas
(
	numero int identity,
	nombre varchar(50) default 'anonimo',
	mail varchar(50),
	pais varchar(50),
	fechayhora datetime,
	primary key (numero)
)

set dateformat  'ymd'

insert into visitas (nombre,mail,pais,fechayhora)
  values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Gustavo Gonzalez','GustavoGGonzalez@gotmail.com','Chile','2006-10-10 21:30');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Juancito','JuanJosePerez@gmail.com','Argentina','2006-09-12 16:20');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');
 insert into visitas (nombre,mail,pais)
  values ('Federico1','federicogarcia@xaxamail.com','Argentina');


select * from visitas where fechayhora between '2006-09-12' and '2006-10-11'

select * from visitas where numero between 2 and 5

--------------------------------------------------   Segundo problema: ----------------------------------------------------------

drop table autos 

create table autos
(
	patente char(6),
	marca varchar(50),
	modelo char(4),
	precio decimal(8,2)
	primary key(patente)
)

insert into autos
  values('ACD123','Fiat 128','1970',15000);
 insert into autos
  values('ACG234','Renault 11','1980',40000);
 insert into autos
  values('BCD333','Peugeot 505','1990',80000);
 insert into autos
  values('GCD123','Renault Clio','1995',70000);
 insert into autos
  values('BCC333','Renault Megane','1998',95000);
 insert into autos
  values('BVF543','Fiat 128','1975',20000);

select * from autos where modelo between '1970'and '1990' 

select * from autos where precio between '50000' and '100000'


-----------------------------------------32 - Otros operadores relacionales (in) ---------------------------------------------------

drop table libros

create table libros
(
	codigo int identity primary key,
	titulo varchar(50) not null,
	autor varchar(50),
	editorial varchar(50),
	precio decimal(6,2)
)


 insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Cervantes y el quijote','Borges','Paidos',null);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros
  values('Matematica estas ahi','Paenza','Siglo XXI',15);
 insert into libros (titulo,precio)
  values('Antología poética',32);
 insert into libros (titulo,autor,precio)
  values('Martin Fierro','Jose Hernandez',40);
 insert into libros (titulo,autor,precio)
  values('Aprenda PHP','Mario Molina',56.50);


select * from libros where autor= 'Paenza' or autor = 'Borges'

select * from libros where autor in ('Paenza','Borges')

select * from libros where autor not in('Paenza','Borges')

----------------------------------------------------  Primer problema:  ------------------------------------------------------

drop table medicamentos 

create table medicamentos
(
	codigo int identity primary key,
	nombre varchar(50) not null,
	laboratorio varchar(50),
	precio decimal(6,2),
	cantidad tinyint,
	fechavencimiento datetime not null
)

insert into medicamentos
  values('Sertal','Roche',5.2,1,'2005-02-01');
 insert into medicamentos 
  values('Buscapina','Roche',4.10,3,'2006-03-01');
 insert into medicamentos 
  values('Amoxidal 500','Bayer',15.60,100,'2007-05-01');
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,20,'2008-02-01');
 insert into medicamentos 
  values('Bayaspirina','Bayer',2.10,150,'2009-12-01'); 
 insert into medicamentos 
  values('Amoxidal jarabe','Bayer',5.10,250,'2010-10-01'); 

select nombre, precio from medicamentos where laboratorio in ('Bayer','Bago')

select * from medicamentos where cantidad in(1,2,3,4,5)

select * from medicamentos where cantidad between 1 and 5



------------------------------------- 33 - Búsqueda de patrones (like - not like)----------------------------------------------

drop table libros

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  primary key(codigo)
 );

 delete from libros 

 insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Antología poética','J. L. Borges','Planeta',null);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll Molina',null,19.90);
 insert into libros
  values('Matematica estas ahi','Paenza','Siglo XXI',15);
 insert into libros
  values('Martin Fierro','Jose Hernandez',default,40);
 insert into libros
  values('Aprenda PHP','Mario Molina','Nuevo siglo',56.50);
   insert into libros
  values('A_P libro chido','Mario Mora','Nuevo siglo2',70.50);

select * from libros where autor = 'Borges'
select * from libros where autor like '%Borges%'

select * from libros where titulo like 'M%'

select * from libros where titulo not like 'M%'

select * from libros where autor like '%Carro_%'

select * from libros
select * from libros where titulo like '[P-S]%'

---  que comiencen con a,b,c,f,g,h o i

select * from libros where titulo like '[a-cf-i]%'

-- -,a,c,f o i

select * from libros where titulo like '[a-cfi]%'


--  cadenas que comiencen con 'A_9';

select * from libros where titulo like 'A[_]9%'

--cadenas que comiencen con 'An' o 'Am' 

select * from libros where titulo like 'A[nm]%'

select * from libros where editorial like '[^PN]%'

select * from libros where precio like '1_%'

--Queremos los libros que NO incluyen centavos en sus precios:

select * from libros where precio like '%.00'


/*
Para búsquedas de caracteres comodines como literales, debe incluirlo dentro de corchetes, por ejemplo, si busca:

... like '%[%]%': busca cadenas que contengan el signo '%';
... like '%[_]%': busca cadenas que contengan el signo '_';
... like '%[[]%': busca cadenas que contengan el signo '[';

*/


------------------------------------------------------ Primer problema:  ----------------------------------------------------------

drop table empleados 

create table empleados
(
	nombre varchar(50),
	documento char(8),
	domicilio varchar(50),
	fechaingreso datetime,
	seccion varchar(20),
	sueldo decimal(6,2)
	primary key (documento)

)

set dateformat 'ymd'

 insert into empleados
  values('Juan Perez','22333444','Colon 123','1990-10-08','Gerencia',900.50);
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987','1995-12-18','Secretaria',590.30);
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235','2005-05-15','Sistemas',790);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','1999-02-12','Secretaria',550);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801','2002-09-22','Contaduria',630.70);
 insert into empleados
  values('Yolanda Perez','35111222','Colon 180','1990-10-08','Administracion',400);
 insert into empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','1990-05-28','Sistemas',800);

select * from empleados where nombre like '%Perez%'

select * from empleados where domicilio like 'Co%[8]%'

select * from empleados where documento like '%[02468]'

select * from empleados where documento like '[^13]%' and nombre like '%ez'

select * from empleados where nombre like '%[yj]%'

select nombre,seccion from empleados  where seccion like '[SG]%' and seccion like '________'

select nombre,seccion from empleados where seccion not like '[SG]%'

select nombre ,sueldo from empleados where sueldo like '%.[1-9]%'
select nombre ,sueldo from empleados where sueldo not like '%.00'

select * from empleados where fechaingreso like '%1990%'


-------------------------------------------------  34 - Contar registros (count) ------------------------------------------------------

 drop table libros;

 create table libros
 (
	codigo int identity,
	titulo varchar(50) not null,
	autor varchar(50) default 'Desconocido',
	editorial varchar(50),
	precio numeric(6,2)
	primary key (codigo)
 )

  insert into libros
  values('El aleph','Borges','Emece',15.90);
 insert into libros
  values('Antología poética','J. L. Borges','Planeta',null);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros
  values('Matematica estas ahi','Paenza','Siglo XXI',15);
 insert into libros
  values('Martin Fierro','Jose Hernandez',default,40);
 insert into libros
  values('Aprenda PHP','Mario Molina','Nuevo siglo',null);
 insert into libros
  values('Uno','Richard Bach','Planeta',20);


select count(*) from libros

select count(*) from libros where editorial = 'Planeta'

select count(precio) from libros 



-----------------------------------------------------  Primer problema:  -----------------------------------------------------------

drop table medicamentos 

create table medicamentos
(
	codigo int identity primary key,
	nombre varchar(50),
	laboratorio varchar(50),
	precio decimal(6,2),
	cantidad tinyint,
	fechavencimiento datetime not null,
	numerolote int default null
)

set dateformat 'ymd'

insert into medicamentos
  values('Sertal','Roche',5.2,1,'2005-02-01',null);
 insert into medicamentos 
  values('Buscapina','Roche',4.10,3,'2006-03-01',null);
 insert into medicamentos 
  values('Amoxidal 500','Bayer',15.60,100,'2007-05-01',null);
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,20,'2008-02-01',null);
 insert into medicamentos 
  values('Bayaspirina',null,2.10,null,'2009-12-01',null); 
  insert into medicamentos 
  values('Amoxidal jarabe','Bayer',null,250,'2009-12-15',null); 


select count(*) from medicamentos

select count(laboratorio) from medicamentos

select count(precio) as 'Con precio' ,count(cantidad) as 'Con cantidad' from medicamentos 

select count(precio) from medicamentos where laboratorio like 'B%'

select count(numerolote) from medicamentos

select * from medicamentos



------------------------------------------------ 35 - Contar registros (count_big) ------------------------------------------------

drop table libros

create table libros
(
	codigo int identity,
	titulo varchar(50) not null,
	autor varchar(50),
	editorial varchar(50),
	precio decimal(6,2)
	primary key(codigo)
)


 insert into libros values('El aleph','Borges','Emece',15.90);
 insert into libros values('Antología poética','Borges','Planeta',null);
 insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros values('Matematica estas ahi','Paenza','Siglo XXI',15);
 insert into libros values('Martin Fierro','Jose Hernandez',default,40);
 insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',null);
 insert into libros values('Uno','Richard Bach','Planeta',20);


 select count(*) from libros

 select count(*) from libros where editorial = 'Planeta'

 select count(precio) from libros
 
 select count(distinct editorial) from libros


 select * from libros


 ---------------------------------------------------- Primer problema:  -------------------------------------------------------------

 drop table medicamentos

 create table medicamentos
 (
	codigo int identity,
	nombre varchar(50),
	laboratirio varchar(50),
	precio decimal(6,2),
	cantidad tinyint,
	fechavencimiento datetime not null,
	numerolote int ,
	primary key (codigo)
 )

 set dateformat 'ymd'

 insert into medicamentos
  values('Sertal','Roche',5.2,1,'2005-02-01',null);
 insert into medicamentos 
  values('Buscapina','Roche',4.10,3,'2006-03-01',null);
 insert into medicamentos 
  values('Amoxidal 500','Bayer',15.60,100,'2007-05-01',null);
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,20,'2008-02-01',null);
 insert into medicamentos 
  values('Bayaspirina',null,2.10,null,'2009-12-01',null); 
  insert into medicamentos 
  values('Amoxidal jarabe','Bayer',null,250,'2009-12-15',null); 
 

 select COUNT_BIG(*) from medicamentos

 select count_big(distinct laboratirio) from medicamentos
 
 select count_big(precio) as 'Precio', count(cantidad) as cantidad from medicamentos

 select * from medicamentos


 -----------------------------------36 - Funciones de agrupamiento (count - sum - min - max - avg) ---------------------------------

 drop table libros

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30) default 'Desconocido',
  editorial varchar(15),
  precio decimal(5,2),
  cantidad tinyint,
  primary key(codigo)
 );

  insert into libros
  values('El aleph','Borges','Planeta',15,null);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 insert into libros
  values('Antologia poetica','J.L. Borges','Planeta',null,150);
 insert into libros
  values('Aprenda PHP','Mario Molina','Emece',18.20,null);
 insert into libros
  values('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
 insert into libros
  values('Manual de PHP', 'J.C. Paez', 'Siglo XXI',31.80,120);
 insert into libros
  values('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);
 insert into libros
  values('Harry Potter y la camara secreta','J.K. Rowling','Emece',46.00,100);
 insert into libros (titulo,autor,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll',220);
 insert into libros (titulo,autor,cantidad)
  values('PHP de la A a la Z',default,0);

select sum(cantidad) from libros

select count(editorial) from libros where editorial = 'Emece'

select max(precio) from libros 

select min(precio) from libros where autor like '%Rowling%'


select avg(precio) from libros where  titulo like '%PHP%'
select * from libros


------------------------------------------------ Primer problema:  ---------------------------------------------------------

drop table empleados

 create table empleados(
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  primary key(documento)
 );

  insert into empleados
  values('Juan Perez','22333444','Colon 123','Gerencia',5000,2);
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0);
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0);
 insert into empleados
  values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1);
 insert into empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3);
 insert into empleados
  values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4);
 insert into empleados
  values('Andres Costa','28444555',default,'Secretaria',null,null);


select count(*) from empleados

select count(sueldo) from empleados where seccion = 'Secretaria'

select max(sueldo) as 'Mayor sueldo', min(sueldo) as 'Menor sueldo' from empleados

select max(cantidadhijos) from empleados where nombre like '%Perez%'

select avg(sueldo) from empleados 

select avg(sueldo) from empleados where seccion = 'Secretaria'

select avg(cantidadhijos) from empleados where seccion = 'Sistemas'

select * from empleados

--------------------------------------  37 - Agrupar registros (group by)--------------------------------------------------

drop table libros 

create table libros
(
	codigo int identity,
	titulo varchar(50),
	autor varchar(50),
	editorial varchar(50),
	precio decimal(6,2),
	cantidad tinyint,
	primary key(codigo)
)

 insert into libros
  values('El aleph','Borges','Planeta',15,null);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 insert into libros
  values('Antologia poetica','J.L. Borges','Planeta',null,150);
 insert into libros
  values('Aprenda PHP','Mario Molina','Emece',18.20,null);
 insert into libros
  values('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
 insert into libros
  values('Manual de PHP', 'J.C. Paez', 'Siglo XXI',31.80,120);
 insert into libros
  values('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);
 insert into libros
  values('Harry Potter y la camara secreta','J.K. Rowling','Emece',null,100);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',22.50,200);
 insert into libros
  values('PHP de la A a la Z',null,null,null,0);


select editorial, count(*) from libros
group by editorial

select editorial, count(precio) from libros
group by editorial

select editorial, sum(precio) as 'Suma' from libros
group by editorial


select editorial, max(precio) as 'mas caro', min(precio) as 'mas barato' from libros
group by editorial 


select editorial, avg(precio) from libros
group by editorial

select editorial, count(precio) from libros
where precio < 30
group by editorial

select editorial, count(precio) from libros
where precio < 30
group by all editorial

select * from  libros


----------------------------------------------------------------    Primer problema: -------------------------------------------------------------------------------------

drop table visitantes 

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1) default 'f',
  domicilio varchar(30),
  ciudad varchar(20) default 'Cordoba',
  telefono varchar(11),
  mail varchar(30) default 'no tiene',
  montocompra decimal (6,2)
 );


  insert into visitantes
  values ('Susana Molina',35,default,'Colon 123',default,null,null,59.80);
 insert into visitantes
  values ('Marcos Torres',29,'m',default,'Carlos Paz',default,'marcostorres@hotmail.com',150.50);
 insert into visitantes
  values ('Mariana Juarez',45,default,default,'Carlos Paz',null,default,23.90);
 insert into visitantes (nombre, edad,sexo,telefono, mail)
  values ('Fabian Perez',36,'m','4556677','fabianperez@xaxamail.com');
 insert into visitantes (nombre, ciudad, montocompra)
  values ('Alejandra Gonzalez','La Falda',280.50);
 insert into visitantes (nombre, edad,sexo, ciudad, mail,montocompra)
  values ('Gaston Perez',29,'m','Carlos Paz','gastonperez1@gmail.com',95.40);
 insert into visitantes
  values ('Liliana Torres',40,default,'Sarmiento 876',default,default,default,85);
 insert into visitantes
  values ('Gabriela Duarte',21,null,null,'Rio Tercero',default,'gabrielaltorres@hotmail.com',321.50);


select ciudad ,count(*) from visitantes
group by ciudad


select ciudad,count(telefono) from visitantes 
group by ciudad


select sexo, sum(montocompra) from visitantes
group by sexo


select sexo,ciudad,max(montocompra) as 'mayor monto', min(montocompra) as 'menor compra' from visitantes
group by sexo, ciudad


select ciudad, avg(montocompra) from visitantes
group by ciudad


select ciudad, count(*) from visitantes
where not mail = 'no tiene'
group by ciudad 

select ciudad, count(*) from visitantes
where mail != 'no tiene'
group by all ciudad

select * from visitantes


----------------------------------------------------------------    segundo problema: -------------------------------------------------------------------------------------

drop table empleados 

create table empleados(
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  fechaingreso datetime,
  primary key(documento)
 );

 set dateformat 'ymd'

 insert into empleados
  values('Juan Perez','22333444','Colon 123','Gerencia',5000,2,'1980-05-10');
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0,'1980-10-12');
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1,'1985-05-25');
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3,'1990-06-25');
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0,'1996-05-01');
 insert into empleados
  values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1,'1996-05-01');
 insert into empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3,'1996-05-01');
 insert into empleados
  values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4,'2000-09-01');
 insert into empleados
  values('Andres Costa','28444555',default,'Secretaria',null,null,null);

 
select seccion, count(*) 
from empleados
group by seccion


select seccion, avg(cantidadhijos) 
from empleados 
group by seccion 


select year(fechaingreso), count(fechaingreso) 
from empleados 
group by year(fechaingreso)


select seccion, avg(sueldo) 
from empleados
where cantidadhijos is not null and cantidadhijos >0
group by seccion

select seccion, avg(sueldo) 
from empleados
where cantidadhijos is not null and cantidadhijos >0
group by all seccion


------------------------------------------------------  38 - Seleccionar grupos (having) ------------------------------------------------------

drop table libros;

create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(5,2),
  cantidad tinyint,
  primary key(codigo)
 );

 insert into libros
  values('El aleph','Borges','Planeta',35,null);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 insert into libros
  values('Martin Fierro','Jose Hernandez','Planeta',40,200);
 insert into libros
  values('Antologia poetica','J.L. Borges','Planeta',null,150);
 insert into libros
  values('Aprenda PHP','Mario Molina','Emece',18,null);
 insert into libros
  values('Manual de PHP', 'J.C. Paez', 'Siglo XXI',56,120);
 insert into libros
  values('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
 insert into libros
  values('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);
 insert into libros
  values('Harry Potter y la camara secreta','J.K. Rowling','Emece',null,100);
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',42,80);
 insert into libros
  values('PHP de la A a la Z',null,null,110,0);
 insert into libros
  values('Uno','Richard Bach','Planeta',25,null);

-- Queremos saber la cantidad de libros agrupados por editorial pero considerando sólo algunos grupos, por ejemplo, los que devuelvan un valor mayor a 2,

select editorial,count(*) from libros
group by editorial
having count(*) > 2

-- Queremos el promedio de los precios de los libros agrupados por editorial, pero solamente de aquellos grupos cuyo promedio supere los 25 pesos:

select editorial, avg(precio) from libros
group by editorial
having avg(precio) > 25


--Queremos la cantidad de libros, sin considerar los que tienen precio nulo (where), agrupados por editorial (group by), 
--sin considerar la editorial "Planeta" 

select editorial,count(precio) from libros
where precio is not null
group by editorial
having editorial <> 'Planeta'

-- Necesitamos el promedio de los precios agrupados por editorial, de aquellas editoriales que tienen más de 2 libros

select editorial, avg(precio),count(*) from libros
group by editorial 
having count(*) > 2


--Buscamos el mayor valor de los libros agrupados y ordenados por editorial y seleccionamos las filas que tienen un valor menor a 100 y mayor a 30:

select editorial, max(precio) from libros
group by editorial 
having max(precio) > 30 and max(precio) <100
order by editorial desc

select * from libros 

------------------------------------------------------------- Primer problema:  -------------------------------------------------------------------

drop table clientes

 create table clientes 
 (
  codigo int identity,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  provincia varchar (20),
  telefono varchar(11),
  primary key(codigo)
);

 insert into clientes
  values ('Lopez Marcos','Colon 111','Cordoba','Cordoba','null');
 insert into clientes
  values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba','4578585');
 insert into clientes
  values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba','4578445');
 insert into clientes
  values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe',null);
 insert into clientes
  values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba','4253685');
 insert into clientes
  values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe','0345252525');
 insert into clientes
  values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba','4554455');
 insert into clientes
  values ('Lopez Carlos',null,'Cruz del Eje','Cordoba',null);
 insert into clientes
  values ('Ramos Betina','San Martin 999','Cordoba','Cordoba','4223366');
 insert into clientes
  values ('Lopez Lucas','San Martin 1010','Posadas','Misiones','0457858745');

-- 4- Obtenga el total de los registros agrupados por ciudad y provincia (6 filas)

select ciudad, provincia ,count(*) as 'cantidad' from clientes
group by ciudad, provincia


--5- Obtenga el total de los registros agrupados por ciudad y provincia sin considerar los que tienen 
--   menos de 2 clientes (3 filas)

select ciudad,provincia, count(*) as cantidad from clientes
group by ciudad,provincia 
having count(*) >= 2


/*
6- Obtenga el total de los clientes que viven en calle "San Martin" (where), agrupados por provincia 
(group by), teniendo en cuenta todos los valores (all), de aquellas ciudades que tengan menos de 2 
clientes (having) y omitiendo la fila correspondiente a la ciudad de "Cordoba" (having) (4 filas 
devueltas)
*/

select provincia,ciudad,count(*) as cantidad from clientes 
where domicilio like '%San Martin%'
group by all provincia ,ciudad 
having count(*) < 2 and ciudad <> 'Cordoba'


select * from clientes


------------------------------------------------------- Segundo problema:  .----------------------------------------------------------------

drop table visitantes 

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1),
  domicilio varchar(30),
  ciudad varchar(20),
  telefono varchar(11),
  montocompra decimal(6,2) not null
 );

insert into visitantes
  values ('Susana Molina',28,'f',null,'Cordoba',null,45.50); 
 insert into visitantes
  values ('Marcela Mercado',36,'f','Avellaneda 345','Cordoba','4545454',22.40);
 insert into visitantes
  values ('Alberto Garcia',35,'m','Gral. Paz 123','Alta Gracia','03547123456',25); 
 insert into visitantes
  values ('Teresa Garcia',33,'f',default,'Alta Gracia','03547123456',120);
 insert into visitantes
  values ('Roberto Perez',45,'m','Urquiza 335','Cordoba','4123456',33.20);
 insert into visitantes
  values ('Marina Torres',22,'f','Colon 222','Villa Dolores','03544112233',95);
 insert into visitantes
  values ('Julieta Gomez',24,'f','San Martin 333','Alta Gracia',null,53.50);
 insert into visitantes
  values ('Roxana Lopez',20,'f','null','Alta Gracia',null,240);
 insert into visitantes
  values ('Liliana Garcia',50,'f','Paso 999','Cordoba','4588778',48);
 insert into visitantes
  values ('Juan Torres',43,'m','Sarmiento 876','Cordoba',null,15.30);

-- 4- Obtenga el total de las compras agrupados por ciudad y sexo de aquellas filas que devuelvan un 
-- valor superior a 50 (3 filas)

select ciudad,sexo , sum(montocompra) as total from visitantes 
group by ciudad,sexo
having sum(montocompra) > 50


/*
5- Obtenga el total de las compras agrupados por ciudad y sexo (group by), teniendo en cuenta todos 
los valores (all), considerando sólo los montos de compra superiores a 50 (where), los visitantes 
con teléfono (where), sin considerar la ciudad de "Cordoba" (having), ordenados por ciudad (order 
by) (3 filas)
*/

select ciudad,sexo , sum(montocompra) as total  from visitantes
where montocompra > 50 and telefono is not null
group by all ciudad,sexo 
having ciudad <> 'Cordoba'
order by ciudad 

/*
6- Muestre el monto mayor de compra agrupado por ciudad, siempre que dicho valor supere los 50 pesos 
(having), considerando sólo los visitantes de sexo femenino y domicilio conocido (where) (2 filas)
*/

select ciudad, max(montocompra) as total from visitantes
where sexo = 'f' and domicilio is not null
group by all ciudad
having max(montocompra)  > 50 


/*
7- Agrupe por ciudad y sexo, muestre para cada grupo el total de visitantes, la suma de sus compras 
y el promedio de compras, ordenado por la suma total y considerando las filas con promedio superior 
a 30 (3 filas)

*/

select ciudad,sexo,count(*) as cantidad ,sum(montocompra) as total, avg(montocompra) as promedio 
from visitantes
group by ciudad, sexo 
having avg(montocompra) > 30
order by total


select * from visitantes



--- --------------------------------------------39 - Modificador del group by (with rollup) --------------------------------------------------

drop table visitantes 

create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1),
  domicilio varchar(30),
  ciudad varchar(20),
  telefono varchar(11),
  montocompra decimal(6,2) not null
 );

 insert into visitantes
  values ('Susana Molina',28,'f',null,'Cordoba',null,45.50); 
 insert into visitantes
  values ('Marcela Mercado',36,'f','Avellaneda 345','Cordoba','4545454',22.40);
 insert into visitantes
  values ('Alberto Garcia',35,'m','Gral. Paz 123','Alta Gracia','03547123456',25); 
 insert into visitantes
  values ('Teresa Garcia',33,'f',default,'Alta Gracia','03547123456',120);
 insert into visitantes
  values ('Roberto Perez',45,'m','Urquiza 335','Cordoba','4123456',33.20);
 insert into visitantes
  values ('Marina Torres',22,'f','Colon 222','Villa Dolores','03544112233',95);
 insert into visitantes
  values ('Julieta Gomez',24,'f','San Martin 333','Alta Gracia',null,53.50);
 insert into visitantes
  values ('Roxana Lopez',20,'f','null','Alta Gracia',null,240);
 insert into visitantes
  values ('Liliana Garcia',50,'f','Paso 999','Cordoba','4588778',48);
 insert into visitantes
  values ('Juan Torres',43,'m','Sarmiento 876','Cordoba',null,15.30);

-- Necesitamos la cantidad de visitantes por ciudad y el total de visitantes. Para obtener ambos resultados en una sola 
--  empleamos "with rollup":

select ciudad,count(*) as total from visitantes 
group by ciudad 
with rollup

select ciudad,sexo, count(*)as total from visitantes
group by ciudad,sexo 
with rollup



select ciudad,sexo, count(*) as total ,sum(montocompra) as monto from visitantes 
group by ciudad,sexo
with rollup 



-------------------------------------------------  Primer problema:  ------------------------------------------------------------

drop table clientes 

create table clientes (
  codigo int identity,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  estado varchar (20),
  pais varchar(20),
  primary key(codigo)
 );


 insert into clientes
  values ('Lopez Marcos','Colon 111', 'Cordoba','Cordoba','Argentina');
 insert into clientes
  values ('Perez Ana','San Martin 222', 'Carlos Paz','Cordoba','Argentina');
 insert into clientes
  values ('Garcia Juan','Rivadavia 333', 'Carlos Paz','Cordoba','Argentina');
 insert into clientes
  values ('Perez Luis','Sarmiento 444', 'Rosario','Santa Fe','Argentina');
 insert into clientes
  values ('Gomez Ines','San Martin 987', 'Santa Fe','Santa Fe','Argentina');
 insert into clientes
  values ('Gomez Ines','San Martin 666', 'Santa Fe','Santa Fe','Argentina');
 insert into clientes
  values ('Lopez Carlos','Irigoyen 888', 'Cordoba','Cordoba','Argentina');
 insert into clientes
  values ('Ramos Betina','San Martin 999', 'Cordoba','Cordoba','Argentina');
 insert into clientes
  values ('Fernando Salas','Mariano Osorio 1234', 'Santiago','Region metropolitana','Chile');
 insert into clientes
  values ('German Rojas','Allende 345', 'Valparaiso','Region V','Chile');
 insert into clientes
  values ('Ricardo Jara','Pablo Neruda 146', 'Santiago','Region metropolitana','Chile');
 insert into clientes
  values ('Joaquin Robles','Diego Rivera 147', 'Guadalajara','Jalisco','Mexico');


--4- Necesitamos la cantidad de clientes por país y la cantidad total de clientes en una sola consulta 
-- (4 filas)

select pais,count(*) from clientes 
group by pais 
with rollup 

-- 5- Necesitamos la cantidad de clientes agrupados por pais y estado, incluyendo resultados paciales 
-- (9 filas)


select pais,estado ,count(*) from clientes 
group by pais,estado
with rollup


-- 6- Necesitamos la cantidad de clientes agrupados por pais, estado y ciudad, empleando "rollup" (16 filas)

select pais,estado,ciudad, count(*) from clientes
group by pais,estado,ciudad
with rollup 

select * from clientes

---------------------------------------------- Segundo problema:  ----------------------------------------------------------------------

drop table notas 

create table notas
(
	documento char(8) not null,
	materia varchar(50),
	nota decimal(4,2)
	
)

 insert into notas values ('22333444','Programacion',8);
 insert into notas values ('22333444','Programacion',9);
 insert into notas values ('22333444','Ingles',8);
 insert into notas values ('22333444','Ingles',7);
 insert into notas values ('22333444','Ingles',6);
 insert into notas values ('22333444','Sistemas de datos',10);
 insert into notas values ('22333444','Sistemas de datos',9);

 insert into notas values ('23444555','Programacion',5);
 insert into notas values ('23444555','Programacion',4);
 insert into notas values ('23444555','Programacion',3);
 insert into notas values ('23444555','Ingles',9);
 insert into notas values ('23444555','Ingles',7);
 insert into notas values ('23444555','Sistemas de datos',9);

 insert into notas values ('24555666','Programacion',1);
 insert into notas values ('24555666','Programacion',3.5);
 insert into notas values ('24555666','Ingles',4.5);
 insert into notas values ('24555666','Sistemas de datos',6);

 -- 4- Se necesita el promedio por alumno por materia y el promedio de cada alumno en todas las materias 
-- cursadas hasta el momento (13 registros):

select documento, materia, avg(nota) as promedio from notas 
group by documento,materia
with rollup 

--5- Compruebe los resultados parciales de la consulta anterior realizando otra consulta mostrando el 
-- promedio de todas las carreras de cada alumno (4 filas)

select documento, avg(nota) as promedio from notas 
group by documento
with rollup 

--6- Muestre la cantidad de notas de cada alumno, por materia (9 filas)

select documento, materia,count(*) as notas from notas 
group by documento,materia
order by documento 


 -- 7- Realice la misma consulta anterior con resultados parciales incluidos (13 filas)

 select documento,materia, count(nota) as notas from notas
 group by documento,materia 
 with rollup 



 --8- Muestre la nota menor y la mayor de cada alumno y la menor y mayor nota de todos (use "rollup") 
--(4 filas)

select documento, min(nota) as 'nota menor', max(nota) as 'nota mayor'
from notas
group by documento
with rollup 

select * from notas 


-------------------------------------------------40 - Modificador del group by (with cube) -------------------------------------------------------------

drop table empleados 

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  sexo char(1),
  estadocivil char(1),--c=casado, s=soltero,v=viudo
  seccion varchar(20),
  primary key (documento)
 );


insert into empleados
  values ('22222222','Alberto Lopez','m','c','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','f','c','Administracion');
 insert into empleados
  values ('24444444','Carlos Fuentes','m','s','Administracion');
 insert into empleados
  values ('25555555','Daniel Garcia','m','s','Sistemas');
 insert into empleados
  values ('26666666','Ester Juarez','f','c','Sistemas');
 insert into empleados
  values ('27777777','Fabian Torres','m','s','Sistemas');
 insert into empleados
  values ('28888888','Gabriela Lopez','f','c','Sistemas');
 insert into empleados
  values ('29999999','Hector Garcia','m','c','Administracion');
 insert into empleados
  values ('30000000','Ines Torres','f','c','Administracion');
 insert into empleados
  values ('11111111','Juan Garcia','m','v','Administracion');
 insert into empleados
  values ('12222222','Luisa Perez','f','v','Administracion');
 insert into empleados
  values ('31111111','Marcela Garcia','f','s','Administracion');
 insert into empleados
  values ('32222222','Nestor Fuentes','m','c','Sistemas');
 insert into empleados
  values ('33333333','Oscar Garcia','m','s','Sistemas');
 insert into empleados
  values ('34444444','Patricia Juarez','f','c','Administracion');
 insert into empleados
  values ('35555555','Roberto Torres','m','c','Sistemas');
 insert into empleados
  values ('36666666','Susana Torres','f','c','Administracion');



select sexo,estadocivil,seccion, count(*) from empleados 
group by sexo,estadocivil,seccion
with rollup 

select sexo,estadocivil,seccion, count(*) from empleados 
group by sexo,estadocivil,seccion
with cube



-----------------------------------------------------   Primer problema:  ---------------------------------------------------------------

drop table ventas 

 create table ventas(
  numero int identity,
  montocompra decimal(6,2),
  tipopago char(1),--c=contado, t=tarjeta
  vendedor varchar(30),
  primary key (numero)
 );


  insert into ventas
  values(100.50,'c','Marisa Perez');
 insert into ventas
  values(200,'c','Marisa Perez');
 insert into ventas
  values(50,'t','Juan Lopez');
 insert into ventas
  values(220,'c','Juan Lopez');
 insert into ventas
  values(150,'t','Marisa Perez');
 insert into ventas
  values(550.80,'c','Marisa Perez');
 insert into ventas
  values(300,'t','Juan Lopez');
 insert into ventas
  values(25,'c','Marisa Perez');

select * from ventas 

select tipopago, vendedor, count(*) from ventas
group by tipopago,vendedor
with rollup

select tipopago,vendedor, count(*) from ventas
group by tipopago,vendedor
with cube




--------------------------------------------------  41 - Función grouping ----------------------------------------------

drop table visitantes 

create table visitantes(
  nombre varchar(30),
  sexo char(1),
  ciudad varchar(20)
 );


  insert into visitantes values('Susana Molina', 'f', 'Cordoba');
 insert into visitantes values('Marcela Mercado', 'f','Cordoba');
 insert into visitantes values('Roberto Perez','f',null);
 insert into visitantes values('Alberto Garcia','m','Cordoba');
 insert into visitantes values('Teresa Garcia','f','Alta Gracia');

 select * from visitantes
 
 select ciudad,count(*) from visitantes 
 group by ciudad 

 select ciudad,count(*) , grouping(ciudad) as resumen
 from visitantes 
 group by ciudad 
 with rollup


 ------------------------------------------------------Primer problema:  -----------------------------------------------------

drop table empleados 

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  sexo char(1),
  estadocivil char(1),--c=casado, s=soltero,v=viudo
  seccion varchar(20),
  primary key (documento)
 );


  insert into empleados
  values ('22222222','Alberto Lopez','m','c','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','f','c','Administracion');
 insert into empleados
  values ('24444444','Carlos Fuentes','m','s','Administracion');
 insert into empleados
  values ('25555555','Daniel Garcia','m','s','Sistemas');
 insert into empleados
  values ('26666666','Ester Juarez',null,'c','Sistemas');
 insert into empleados
  values ('27777777','Fabian Torres',null,'s','Sistemas');
 insert into empleados
  values ('28888888','Gabriela Lopez','f',null,'Sistemas');
 insert into empleados
  values ('29999999','Hector Garcia','m',null,'Administracion');


  



-- 4- Cuente la cantidad de empleados agrupados por sexo y estado civil, empleando "rollup".
--Es dificil distinguir los valores de detalle y resumen.

select * from empleados 

select sexo,estadocivil,count(*) from empleados 
group by sexo,estadocivil 
with rollup

/*5- Realice la misma consulta anterior pero emplee la función "grouping" para los dos campos por los 
que se agrupa para distinguir los valores de resumen y de detalle.
Note que las columnas de resumen contienen 1 y las de detalle 0.*/

select sexo,estadocivil,count(*),grouping(sexo) as 'sexo', grouping(estadocivil) as 'estado civil' from empleados
group by sexo,estadocivil
with rollup


/*
6- Realice la misma consulta anterior pero con "cube" en lugar de "rollup", distinguiendo los 
valores de resumen y de detalle.
Note que las columnas de resumen contienen 1 y las de detalle 0.
*/

select sexo,estadocivil , count(*),grouping(sexo),grouping(estadocivil) from empleados 
group by sexo,estadocivil
with cube




----------------------------------------42 - Cláusulas compute y compute by --------------------------------------------------------------

-- La clausula compute quedo obsoleta apartir de la version 2012 de sql server por lo cual no habra ejercicios de este tema 



-------------------------------------------------43 - Registros duplicados (distinct) ---------------------------------------------------------------

drop table libros 

create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  primary key(codigo)
 );

 insert into libros
  values('El aleph','Borges','Planeta');
 insert into libros
  values('Martin Fierro','Jose Hernandez','Emece');
 insert into libros
  values('Martin Fierro','Jose Hernandez','Planeta');
 insert into libros
  values('Antologia poetica','Borges','Planeta');
 insert into libros
  values('Aprenda PHP','Mario Molina','Emece');
 insert into libros
  values('Aprenda PHP','Lopez','Emece');
 insert into libros
  values('Manual de PHP', 'J. Paez', null);
 insert into libros
  values('Cervantes y el quijote',null,'Paidos');
 insert into libros
  values('Harry Potter y la piedra filosofal','J.K. Rowling','Emece');
 insert into libros
  values('Harry Potter y la camara secreta','J.K. Rowling','Emece');
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos');
 insert into libros
  values('Alicia en el pais de las maravillas','Lewis Carroll','Planeta');
 insert into libros
  values('PHP de la A a la Z',null,null);
 insert into libros
  values('Uno','Richard Bach','Planeta');


select * from libros 

select autor from libros

select distinct(autor) from libros

select autor from libros 
group by autor 

select distinct autor from libros 
where autor is not null

select count(distinct autor) from libros 

select count(autor) from libros

--queremos conocer los distintos autores de la editorial "Planeta": 

select distinct autor from libros 
where editorial = 'Planeta'

-- También puede utilizarse con "group by" para contar los diferentes autores por editorial:

select  editorial , count(distinct autor) 'Autores' from libros 
group by editorial 

-- Para mostrar los títulos y editoriales de los libros sin repetir títulos ni editoriales, usamos:

select distinct titulo, editorial 
from libros

----------------------------------------------------------------  Primer problema:  -------------------------------------------------------

drop table clientes 

create table clientes
(
	codigo int identity,
	nombre varchar(50) not null,
	domicilio varchar(50),
	ciudad varchar(50),
	provincia varchar(50)
	primary key(codigo)
)

insert into clientes
  values ('Lopez Marcos','Colon 111','Cordoba','Cordoba');
 insert into clientes
  values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba');
 insert into clientes
  values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba');
 insert into clientes
  values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe');
 insert into clientes
  values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba');
 insert into clientes
  values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe');
 insert into clientes
  values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba');
 insert into clientes
  values ('Lopez Carlos',null,'Cruz del Eje','Cordoba');
 insert into clientes
  values ('Ramos Betina','San Martin 999','Cordoba','Cordoba');
 insert into clientes
  values ('Lopez Lucas','San Martin 1010','Posadas','Misiones');





--4- Obtenga las provincias sin repetir (3 registros)

select distinct provincia from clientes

--5- Cuente las distintas provincias.

select count(distinct provincia) from clientes 


--6- Se necesitan los nombres de las ciudades sin repetir (6 registros)

select distinct ciudad from clientes 

--7- Obtenga la cantidad de ciudades distintas.

select count(distinct ciudad) from clientes 

--8- Combine con "where" para obtener las distintas ciudades de la provincia de Cordoba (3 registros)

select  distinct ciudad,provincia from clientes
where provincia = 'Cordoba' 

-- 9- Contamos las distintas ciudades de cada provincia empleando "group by" (3 registros)

x<<  select provincia,count(distinct ciudad ) from clientes 
group by provincia 


---------------------------------------------------  44 - Cláusula top ------------------------------------------------------------

drop table libros 

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(20),
  editorial varchar(20)
 );

 insert into libros values ('Uno','Richard Bach','Planeta');
 insert into libros values ('El aleph','Borges','Emece');
 insert into libros values ('Alicia en el pais...','Carroll','Planeta');
 insert into libros values ('Aprenda PHP','Mario Molina','Siglo XXI');
 insert into libros values ('Java en 10 minutos','Mario Molina','Siglo XXI');
 insert into libros values ('Java desde cero','Mario Molina','Emece');
 insert into libros values ('Ilusiones','Richard Bach','Planeta');

select top 2 * from libros 

select top 3 * from libros 
order by autor 

select top 3 with ties * from libros 
order by autor 

---------------------------------------------------  Primer problema:  -------------------------------------------------------------

drop table empleados 

create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  estadocivil char(1),--c=casado, s=soltero,v=viudo
  seccion varchar(20)
 );

 insert into empleados
  values ('22222222','Alberto Lopez','c','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','c','Administracion');
 insert into empleados
  values ('24444444','Carlos Fuentes','s','Administracion');
 insert into empleados
  values ('25555555','Daniel Garcia','s','Sistemas');
 insert into empleados
  values ('26666666','Ester Juarez','c','Sistemas');
 insert into empleados
  values ('27777777','Fabian Torres','s','Sistemas');
 insert into empleados
  values ('28888888','Gabriela Lopez',null,'Sistemas');
 insert into empleados
  values ('29999999','Hector Garcia',null,'Administracion');


--4- Muestre los 5 primeros registros (5 registros)

select top 5  * from empleados 

--5- Muestre nombre y seccion de los 4 primeros registros ordenados por sección (4 registros)

select top 4 nombre,seccion from empleados order by seccion 

--6- Realice la misma consulta anterior pero incluya todos los registros que tengan el mismo valor en "seccion" que el último (8 registros)

select top 4 with ties nombre,seccion  from empleados 
order by seccion 

--7- Muestre nombre, estado civil y seccion de los primeros 4 empleados ordenados por estado civil y sección (4 registros)

select top 4 nombre,estadocivil, seccion from empleados 
order by estadocivil,seccion 

--8- Realice la misma consulta anterior pero incluya todos los valores iguales al último registro retornado (5 registros)

select top 4 with ties nombre,estadocivil,seccion from empleados 
order by estadocivil,seccion 



-----------------------------------------------------------45 - Clave primaria compuesta --------------------------------------------------------

drop table vehiculos 

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime,
  horasalida datetime,
  primary key(patente,horallegada)
 );

insert into vehiculos values('AIC124','a','8:05','12:30');
 insert into vehiculos values('CAA258','a','8:05',null);
 insert into vehiculos values('DSE367','m','8:30','18:00');
 insert into vehiculos values('FGT458','a','9:00',null);
 insert into vehiculos values('AIC124','a','16:00',null);
 insert into vehiculos values('LOI587','m','18:05','19:55');

select * from vehiculos 

insert into vehiculos values('FGT458','a','9:00','11:00')

insert into vehiculos values('LOI587','m','21:30',null);

update vehiculos set horallegada = '21:30' where patente = 'LOI587' and horallegada = '18:05'

insert into vehiculos values('wefwe','m',null,'12:00');

sp_columns vehiculos


----------------------------------------------------- Primer problema:  -------------------------------------------------------------

drop table consultas 

create table consultas
(
	fechayhora datetime ,
	medico varchar(30) not null,
	documento char(8) not null,
	paciente varchar(30),
	obrasocial varchar(30)
	primary key(fechayhora,medico)
)

set dateformat 'dmy'

delete consultas

--4- Ingrese varias consultas para un mismo médico en distintas horas el mismo día.

insert into consultas values ('08:00','Lucas Miron','12345678','Juan Perez','PALM');
insert into consultas values ('09:00','Lucas Miron','12345678','Raul Gimenez','WWERWE');
insert into consultas values ('09:30','Lucas Miron','12345678','Alberto Garcia','WTUF');
insert into consultas values ('10:30','Lucas Miron','12345678','Rafael Moreno','IUBYT');

--5- Ingrese varias consultas para diferentes médicos en la misma fecha y hora.

insert into consultas values ('10:30','Gilberto Mora','12345678','Luis Luna','IUBYT');
insert into consultas values ('10:30','Ramon Fernandez','12345678','Mauricio Lopez','IUBYT');
insert into consultas values ('10:30','Hector Garcia','12345678','Antonio Perez','IUBYT');

-- 6- Intente ingresar una consulta para un mismo médico en la misma hora el mismo día.

insert into consultas (fechayhora,medico,documento,paciente,obrasocial) values('10:30','Hector Garcia','12345678','Antonio Perez','IUBYT') 


---------------------------------------------------------Segundo problema:  -------------------------------------------------------------------------

drop table inscriptos 

create table inscriptos
(
	documento char(8) not null,
	socio varchar(30),
	deporte varchar(15) not null,
	anio datetime,
	matricula char(1)
	primary key(documento,deporte,anio)
)


--   4- Inscriba a varios alumnos en el mismo deporte en el mismo año: 

insert into inscriptos values ('12345','Juan Perez','Futbol','2012','s')
insert into inscriptos values ('11111','Lucas Lobos','Futbol','2012','n')
insert into inscriptos values ('22222','Miguel Mora','Futbol','2012','s')



--5- Inscriba a un mismo alumno en varios deportes en el mismo año:

insert into inscriptos values ('33333','Luis Miguel','Tenis','2012','s')
insert into inscriptos values ('33333','Luis Miguel','Natacion','2012','s')
insert into inscriptos values ('33333','Luis Miguel','Basquet','2012','s')

--6- Ingrese un registro con el mismo documento de socio en el mismo deporte en distintos años:

insert into inscriptos values ('44444','jose Luna','Tenis','2013','n')
insert into inscriptos values ('44444','jose Luna','Tenis','2014','n')
insert into inscriptos values ('44444','jose Luna','Tenis','2015','n')

select * from inscriptos 

--7- Intente inscribir a un socio alumno en un deporte en el cual ya esté inscripto en un año en el 
--cual ya se haya inscripto.

insert into inscriptos values ('11111','Lucas Lobos','Futbol','2012','s')

--8- Intente actualizar un registro para que la clave primaria se repita.

update inscriptos set documento = '44442' , deporte='Tenis' , anio='2010'  where socio = 'jose Luna'

select * from inscriptos


-------------------------------------------------- 47 - Restricción default -----------------------------------------------

drop table libros 

create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  editorial varchar(15),
  precio decimal(6,2)
 );

  insert into libros (titulo,editorial) values('Martin Fierro','Emece');
 insert into libros (titulo,editorial) values('Aprenda PHP','Emece');

 select * from libros

 sp_helpconstraint libros 


  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(6,2)
 );


alter table libros
add constraint DF_libros_autor
default 'Desconocido'
for autor

sp_helpconstraint libros 

insert into libros (titulo,editorial,precio) values ('El torbellino','Torbe',1000)
insert into libros default values 

select * from libros 

alter table libros
add constraint DF_libros_precio
default 0
for precio

sp_helpconstraint libros 

-------------------------------------------------  Primer problema: --------------------------------------------------------

drop table visitantes 

create table visitantes(
  numero int identity,
  nombre varchar(30),
  edad tinyint,
  domicilio varchar(30),
  ciudad varchar(20),
  montocompra decimal (6,2) not null
 );

select * from visitantes 

-- 3- Defina una restricción "default" para el campo "ciudad" que almacene el valor "Cordoba" en caso 
-- de no ingresar valor para dicho campo:

alter table visitantes
add constraint DF_visitantes_ciudad
default 'Cordoba'
for ciudad

sp_helpconstraint visitantes


--4- Defina una restricción "default" para el campo "montocompra" que almacene el valor "0" en caso de 
-- no ingresar valor para dicho campo:

alter table visitantes
add constraint DF_visitantes_montocompra
default 0
for montocompra

sp_helpconstraint visitantes

--5- Ingrese algunos registros sin valor para los campos con restricción "default":
select * from visitantes 

  values ('Susana Molina',35,'Colon 123',default,59.80);
 insert into visitantes (nombre,edad,domicilio)
  values ('Marcos Torres',29,'Carlos Paz');
 insert into visitantes
  values ('Mariana Juarez',45,'Carlos Paz',null,23.90);

select * from visitantes

sp_helpconstraint visitantes



--8- Intente agregar otra restricción "default" al campo "ciudad".

alter table visitantes
add constraint DF_vistantes_ciudad2
default 'Cordoba'
for ciudad


--9- Intente establecer una restricción "default" al campo "identity".

alter table visitantes 
add constraint DF_visitantes_numero
default 1
for numero


-------------------------------------------------  Segundo problema: --------------------------------------------------------

drop table vehiculos

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime,
  horasalida datetime
 );


-- 3- Establezca una restricción "default" para el campo "tipo" que almacene el valor "a" en caso de no 
-- ingresarse valor para dicho campo.

alter table vehiculos
add constraint DF_vehiculos_tipo
default 'a'
for tipo

select * from vehiculos

sp_helpconstraint vehiculos

--4- Ingrese un registro sin valor para el campo "tipo":

insert into vehiculos values ('12345',default,'08:00','09:00')

select * from vehiculos 


--6- Intente establecer otra restricción "default" para el campo "tipo" que almacene el valor "m" en 
--caso de no ingresarse valor para dicho campo.

alter table vehiculos
add constraint DF_vehiculos_tipo
default 'm'
for tipo


--7- Establezca una restricción "default" para el campo "horallegada" que almacene la fecha y hora del 
--sistema.

alter table vehiculos
add constraint DF_vehiculos_horallegada
default getdate()
for horallegada


-- 8- Ingrese un registro sin valor para los campos de tipo datetime.


insert into vehiculos values ('42342','m',default,null)

select * from vehiculos

sp_helpconstraint vehiculos


--------------------------------------------------- 48 - Restricción check  -------------------------------------------------

drop table libros 

create table libros
(
	codigo int identity,
	titulo varchar(50),
	autor varchar(50),
	editorial varchar(50),
	preciomin decimal(5,2),
	preciomax decimal(5,2)
)

 insert into libros values ('Uno','Bach','Planeta',22,20);
 insert into libros values ('El quijote','Cervantes','Emece',15,13);
 insert into libros values ('Aprenda PHP','Mario Molina','Siglo XXI',48,53);
 insert into libros values ('Java en 10 minutos','Garcia','Siglo XXI',35,40);

select * from libros 


-- Agregamos una restricción "check" para asegurar que los valores de los campos correspondientes a precios no puedan ser negativos:

alter table libros
add constraint CK_libros_precios_positivos
check (preciomin >=0 and preciomax>=0)

sp_helpconstraint libros

alter table libros
add constraint CK_libros_preciomaxMenorAPreciomin
check (preciomax < preciomin)

select * from libros 

update libros set preciomax = 30 where codigo in(3,4) 


sp_helpconstraint libros 


insert into libros default values

select * from libros

----------------------------------------------------- Primer problema:  ---------------------------------------------------------

drop table empleados 

create table empleados (
  documento varchar(8),
  nombre varchar(30),
  fechanacimiento datetime,
  cantidadhijos tinyint,
  seccion varchar(20),
  sueldo decimal(6,2)
 );


 -- 3- Agregue una restricción "check" para asegurarse que no se ingresen valores negativos para el 
-- sueldo:

alter table empleados 
add constraint CK_empleados_sueldo_positivo
check (sueldo>=0)

sp_helpconstraint empleados 


 insert into empleados values ('22222222','Alberto Lopez','1965/10/05',1,'Sistemas',1000);
 insert into empleados values ('33333333','Beatriz Garcia','1972/15/04',2,'Administracion',3000);
 insert into empleados values ('34444444','Carlos Caseres','1980/10/05',0,'Contaduría',6000);

select * from empleados 

--5- Intente agregar otra restricción "check" al campo sueldo para asegurar que ninguno supere el 
-- valor 5000:

alter table empleados 
add constraint CK_empleados_sueldoMenor_cincoMil
check (sueldo < 5000)


select * from empleados 

delete empleados where documento = '34444444'

alter table empleados 
add constraint CK_empleados_sueldo_maximo
check (sueldo < 5000)

--7- Establezca una restricción para controlar que la fecha de nacimiento que se ingresa no supere la fecha actual:

alter table empleados 
add constraint CK_empleados_fechanacimiento_Validada
check (fechanacimiento < getdate())

select * from empleados

insert into empleados values ('55555','Matzuda',getdate(),5,'wfwef',300)

insert into empleados values ('55555','Matzuda','2015-08-03',5,'wfwef',300)

sp_helpconstraint empleados



---------------------------------------------------- Segundo problema:  ------------------------------------------------------

drop table vehiculos

 create table vehiculos(
  numero int identity,
  patente char(6),
  tipo char(4),
  fechahoraentrada datetime,
  fechahorasalida datetime
 );


  insert into vehiculos values('AIC124','auto','2007/17/01 8:05','2007/17/01 12:30');
 insert into vehiculos values('CAA258','auto','2007/17/01 8:10',null);
 insert into vehiculos values('DSE367','moto','2007/17/01 8:30','2007/17/01 18:00');


-- 4- Agregue una restricción "check" que especifique un patrón de 3 letras y 3 dígitos para "patente":

alter table vehiculos
add constraint CK_vehiculos_patron
check (patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]')


-- 5- Intente ingresar un registro con un valor inapropiado para "patente":

insert into vehiculos values ('qw2345','moto',getdate(),null)


-- 6 Agregue una restricción "check" que especifique que el campo "tipo" acepte solamente los valores 
-- "auto" y "moto":

alter table vehiculos 
add constraint CK_vehiculos_tipo
check (tipo = 'auto' or tipo = 'moto')


--7- Intente modificar el valor del campo "tipo" ingresando un valor inexistente en la lista de 
-- valores permitidos por la restricción establecida a dicho campo:

select * from vehiculos 

update vehiculos set tipo = 'car' where numero = 4

sp_helpconstraint vehiculos


-- 8- Agregue una restricción "default" para el campo "tipo" que almacene el valor "bici":

alter table vehiculos
add constraint DF_vehiculos_tipo_bici
default 'bici'
for tipo


-- 9- Intente ingresar un registro con el valor por default para "tipo":

insert into vehiculos values ('QED231',default,getdate(),getdate())

select * from vehiculos


--10- Agregue una restricción "check" para asegurarse que la fecha de entrada a la playa no sea 
-- posterior a la fecha y hora actual:

alter table vehiculos 
add constraint CK_vehiculos_fechaentrada_valida
check (fechahoraentrada <= getdate())



-- 11- Agregue otra restricción "check" al campo "fechahoraentrada" que establezca que sus valores no 
-- sean posteriores a "fechahorasalida":

alter table vehiculos
add constraint CK_vehiculos_fechahoraentrada
check (fechahoraentrada <= fechahorasalida)


-- 12- Intente ingresar un valor que no cumpla con la primera restricción establecida en el campo 
-- "fechahoraentrada":

insert into vehiculos values ('CDF345','auto','2015-20-04',null)
insert into vehiculos values ('CDF345','auto','2015-20-04',getdate())


-- 13- Intente modificar un registro para que la salida sea anterior a la entrada:

select * from vehiculos

update vehiculos set fechahorasalida = '2007-16-01' where numero = 4

sp_helpconstraint vehiculos


-- 15- Establezca una restricción "default" para el campo "fechahoraentrada" para que almacene la fecha 
-- actual del sistema:

alter table vehiculos
add constraint DF_vehiculos_fechahoraentrada
default getdate()
for fechahoraentrada

insert into vehiculos values ('EWQ123','moto',default,default)

select * from vehiculos

sp_helpconstraint vehiculos



---------------------------------------- 49 - Deshabilitar restricciones (with check - nocheck) -------------------------------------------

drop table libros

create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(5,2)
 );

insert into libros values ('Uno','Bach','Planeta',22);
insert into libros values ('El quijote','Cervantes','Emece',15);
insert into libros values ('Aprenda PHP','Mario Molina','Siglo XXI',-40);

select * from libros 

alter table libros 
add constraint CK_libros_precio_positivo
check (precio >= 0)

alter table libros
with nocheck
add constraint CK_libros_precio_positivo
check (precio >=0 )

select * from libros 

insert into libros values ('ergr','ewfew','rregre',-32)

sp_helpconstraint libros 

alter table libros
nocheck constraint CK_libros_precio_positivo

alter table libros 
check constraint CK_libros_precio_positivo

sp_helpconstraint libros 

------------------------------------------------ Problema ---------------------------------------------------------

drop table libros 

create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(5,2)
 );

  insert into libros values ('Uno','Bach','Planeta',22);
 insert into libros values ('El quijote','Cervantes','Emece',15);
 insert into libros values ('Aprenda PHP','Mario Molina','Siglo XXI',-40);

 select * from libros 


 -- Agregamos una restricción "check" para asegurar que los precios no puedan ser negativos, pero como ya tenemos almacenado
 -- un precio que infringe la restricción, vamos a especificar que no haya comprobación de datos existentes:

 alter table libros
 with nocheck
 add constraint CK_libros_precio_positivo
 check (precio >= 0)

 insert into libros values('fwefwe','fewfwe','wefwe',-49)

alter table libros
nocheck constraint CK_libros_precio_positivo

sp_helpconstraint libros 

insert into libros values('fwefwe','fewfwe','wefwe',-49)

alter table libros 
check constraint CK_libros_precio_positivo

insert into libros values ('wefewf','gthtyyt','ergre',-80)


------------------------------------------------------- Primer problema:  ---------------------------------------------------------------

drop table empleados 

create table empleados (
  documento varchar(8),
  nombre varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2)
 );


 insert into empleados
  values ('22222222','Alberto Acosta','Sistemas',-10);
 insert into empleados
  values ('33333333','Beatriz Benitez','Recursos',3000);
 insert into empleados
  values ('34444444','Carlos Caseres','Contaduria',4000);

select * from empleados 


-- 3- Intente agregar una restricción "check" para asegurarse que no se ingresen valores negativos para 
-- el sueldo:

alter table empleados
add constraint CK_empleados_sueldo_positivo
check (sueldo > =0)

-- 5- Vuelva a intentarlo agregando la opción "with nocheck":

alter table empleados
with nocheck
add constraint CK_empleados_sueldo_positivo
check (sueldo > =0)


 -- 6- Intente ingresar un valor negativo para sueldo:

insert into empleados values ('wrwerew','twetw','twree',-90)

-- 7- Deshabilite la restricción e ingrese el registro anterior:

alter table empleados
nocheck constraint CK_empleados_sueldo_positivo


insert into empleados values ('wrwerew','twetw','twree',-90)


-- 8- Establezca una restricción "check" para "seccion" que permita solamente los valores "Sistemas" 
-- "Administracion" y "Contaduría":

alter table empleados
add constraint CK_empleados_secciones_validas
check (seccion in('Administracion','Sistemas','Contaduria'))

select * from empleados 

-- 9- Establezca la restricción anterior evitando que se controlen los datos existentes.

alter table empleados
with nocheck
add constraint CK_empleados_secciones_validas
check (seccion in('Administracion','Sistemas','Contaduria'))


-- 10- Vea si las restricciones de la tabla están o no habilitadas:

sp_helpconstraint empleados


-- 11- Habilite la restricción deshabilitada.

alter table empleados 
check constraint CK_empleados_sueldo_positivo


-- 12- Intente modificar la sección del empleado "Carlos Caseres" a "Recursos".

update empleados set seccion = 'Recursos' where nombre = 'Carlos Caseres'


-- 13- Deshabilite la restricción para poder realizar la actualización del punto precedente.

alter table empleados
nocheck constraint CK_empleados_secciones_validas

update empleados set seccion = 'Recursos' where nombre = 'Carlos Caseres'


select * from empleados


----------------------------------------------- 50 - Restricción primary key -------------------------------------------

drop table libros

create table libros(
  codigo int not null,
  titulo varchar(30),
  autor varchar(30),
  editorial varchar(20),
  
 );

 alter table libros
 add constraint PK_libros_codigo
 primary key(codigo)

 sp_helpconstraint libros


 ------------------------------------------------ Problema --------------------------------------------------

 drop table libros 

 create table libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  primary key (codigo)
 );


 sp_helpconstraint libros 


-- Vamos a eliminar la tabla y la crearemos nuevamente, sin establecer la clave primaria:

drop table libros 

create table libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
 );


 -- Definimos una restricción "primary key" para nuestra tabla "libros" para asegurarnos que cada libro tendrá un código diferente y único:

alter table libros 
add constraint PK_libros_codigo
primary key (codigo)


sp_helpconstraint libros 

select * from libros 

-- Si intentamos ingresar un registro con un valor para el campo "codigo" que ya existe, no lo permite.
-- Tampoco permite modificar un código colocando uno existente.


insert into libros values ('1111','fwef','wefew','erger')
insert into libros values ('2222','thioery','uiguer','guiiger')

insert into libros values ('1111','rthrh','rttrhrt','hhttt')

update libros set codigo = '2222' where codigo = '1111'

-- Si intentamos definir otra restricción "primary key", SQL Server no lo permite.

alter table libros 
add constraint PK_libros_editorial
primary key (editorial)


--------------------------------------------- Primer problema:  -----------------------------------------------------

drop table empleados 

create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  seccion varchar(20)
 );

  insert into empleados
  values ('22222222','Alberto Lopez','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','Administracion');
 insert into empleados
  values ('23333333','Carlos Fuentes','Administracion');


  -- 4- Intente establecer una restricción "primary key" para la tabla para que el documento no se repita 
-- ni admita valores nulos:

alter table empleados 
add constraint PK_empleados_documento
primary key (documento)

delete from empleados where nombre = 'Carlos Fuentes'

select * from empleados 

alter table empleados 
add constraint PK_empleados_documento
primary key (documento)


insert into empleados values('22222222','wefwfe','rgerg')


-- 7-Intente establecer otra restricción "primary key" con el campo "nombre".

alter table empleados
add constraint PK_empleados_nombre
primary key (nombre)


-- 8- Intente ingresar un registro con valor nulo para el documento.

insert into empleados values (null,'weferg','egergre')


-- 9 Establezca una restricción "default" para que almacene "00000000" en el documento en caso de 
-- omitirlo en un "insert".

alter table empleados
add constraint FK_empleados_documento
default '00000000'
for documento

-- 10- Ingrese un registro sin valor para el documento.
 
insert into empleados (nombre,seccion) values ('Jose','contador')

select * from empleados 

insert into empleados (nombre,seccion) values ('Luis','Administracion')



-- 13- Vea las restricciones de la tabla empleados (2 filas):

sp_helpconstraint empleados 



------------------------------------------------ Segundo problema:  ----------------------------------------------------

drop table remis  

create table remis(
  numero tinyint identity,
  patente char(6),
  marca varchar(15),
  modelo char(4)
 );


 insert into remis values('ABC123','Renault 12','1990');
 insert into remis values('DEF456','Fiat Duna','1995');


 select * from remis 


 -- 4- Intente definir una restricción "primary key" para el campo "patente".

alter table remis
add constraint PK_remis_patente
primary key(patente)


-- 5- Establezca una restricción "primary key" para el campo "numero".

alter table remis
add constraint PK_remis_numero
primary key (numero)


sp_helpconstraint remis 


--------------------------------------------------- 51 - Restricción unique ----------------------------------------------

drop table alumnos 

create table alumnos(
  legajo char(4) not null,
  apellido varchar(20),
  nombre varchar(20),
  documento char(8)
 );


 alter table alumnos
 add constraint PK_alumnos_legajo
 primary key (legajo)

 alter table alumnos
 add constraint UQ_alumnos_documento
 unique (documento)


 sp_helpconstraint alumnos


  insert into alumnos values('A111','Lopez','Ana','22222222');
  insert into alumnos values('A123','Garcia','Maria','23333333');



insert into alumnos values('A123','Garcia','Maria','444444');

insert into alumnos values('A144','Garcia','Maria','22222222');


-------------------------------------------------------- Primer problema: -------------------------------------------------------- 

drop table remis 

create table remis(
  numero tinyint identity,
  patente char(6),
  marca varchar(15),
  modelo char(4)
 );


 insert into remis values('ABC123','Renault clio','1990');
 insert into remis values('DEF456','Peugeot 504','1995');
 insert into remis values('DEF456','Fiat Duna','1998');
 insert into remis values('GHI789','Fiat Duna','1995');
 insert into remis values(null,'Fiat Duna','1995');


 select * from remis 

 -- 4- Intente agregar una restricción "unique" para asegurarse que la patente del remis no tomará 
-- valores repetidos.

alter table remis
add constraint UQ_remis_patente
unique (patente)



--5- Elimine el registro con patente duplicada y establezca la restricción.
--Note que hay 1 registro con valor nulo en "patente".-

select * from remis 

delete from remis where numero = 2

alter table remis
add constraint UQ_remis_patente
unique (patente)


--6- Intente ingresar un registro con patente repetida (no lo permite)

insert into remis values('GHI789','Nissan','1996')


--7- Intente ingresar un registro con valor nulo para el campo "patente".
-- No lo permite porque la clave estaría duplicada.

insert into remis values(null,'Nissan','1996')



--8- Muestre la información de las restricciones:

sp_helpconstraint remis



------------------------------------------------ 52 - Información de restricciones (sp_helpconstraint) --------------------------------------------


drop table alumnos;


 create table alumnos(
  legajo char(4) not null,
  apellido varchar(20),
  nombre varchar(20),
  documento char(8),
  domicilio varchar(30),
  ciudad varchar(30),
  notafinal decimal(4,2)
 );

 -- Agregamos una restricción "primary" para el campo "legajo":


alter table alumnos
add constraint PK_alumnos_legajo
primary key (legajo)


--Agregamos una restricción "unique" para el campo "documento":

alter table alumnos
add constraint UQ_alumnos_documento
unique (documento)

--Agregamos una restricción "check" para que el campo "notafinal" admita solamente valores entre 0 y 10:

alter table alumnos
add constraint CK_alumnos_notafinalEntre0Y10
check (notafinal >=0 and notafinal <=10)


-- Agregamos una restricción "default" para el campo "ciudad":

alter table alumnos
add constraint DF_alumnos_ciudad
default 'Xalapa'
for ciudad


-- Deshabilitamos la restricción "check":

alter table alumnos
nocheck constraint CK_alumnos_notafinalEntre0Y10



select * from alumnos 

sp_helpconstraint alumnos 



----------------------------------------------  53 - Eliminar restricciones (alter table - drop) ------------------------------------------------

drop table libros;

create table libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(6,2)
 );

 --Definimos una restricción "primary key" para nuestra tabla "libros" para asegurarnos que cada libro tendrá un código diferente y único:

 alter table libros
 add constraint PK_libros_codigo
 primary key (codigo)



 -- Definimos una restricción "check" para asegurarnos que el precio no será negativo:

 alter table libros
 add constraint CK_libros_precio
 check (precio >=0)


 -- Definimos una restricción "default" para el campo "autor" para que almacene "Desconocido":

alter table libros
add constraint DF_libros_autor
default 'Desconocido'
for autor


-- Definimos una restricción "default" para el campo "precio" para que almacene 0:

alter table libros
add constraint DF_libros_precio
default 0
for precio

--Eliminamos la restricción "DF_libros_autor":

alter table libros
drop DF_libros_autor



--Eliminamos la restricción "PK_libros_codigo":

alter table libros
drop PK_libros_codigo

sp_helpconstraint libros 


-------------------------------------------------- Primer problema:  -------------------------------------------------------------------------

drop table vehiculos;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime not null,
  horasalida datetime
 );


-- 3- Establezca una restricción "check" que admita solamente los valores "a" y "m" para el campo 
--"tipo":

alter table vehiculos
add constraint CK_vehiculos_tipo
check (tipo in('a','n'))


---4- Establezca una restricción "default" para el campo "tipo" que almacene el valor "a" en caso de no 
--ingresarse valor para dicho campo:

alter table vehiculos
add constraint DF_vehiculos_tipo
default  'a'
for tipo


--5- Establezca una restricción "check" para el campo "patente" para que acepte 3 letras seguidas de 3 digitos

alter table vehiculos
add constraint CK_vehiculos_patente
check (patente like '[a-z][a-z][a-z][0-9][0-9][0-9]')



--6- Agregue una restricción "primary key" que incluya los campos "patente" y "horallegada":

alter table vehiculos
add constraint PK_vehiculos_patente_horallegada
primary key (patente, horallegada)


 insert into vehiculos values('SDR456','a','2005/10/10 10:10',null);


 select * from vehiculos


 -- 8- Intente ingresar un registro repitiendo la clave primaria:

 insert into vehiculos values('SDR456','n','2005/10/10 10:10',null);



 --9- Ingrese un registro repitiendo la patente pero no la hora de llegada:

 insert into vehiculos values('SDR456','n','2015/10/10',null);

 -- 10- Ingrese un registro repitiendo la hora de llegada pero no la patente:

 insert into vehiculos values('WER456','n','2015/10/10',null);


-- 12- Elimine la restricción "default" del campo "tipo".

alter table vehiculos
drop DF_vehiculos_tipo

alter table vehiculos
drop CK_vehiculos_patente,PK_vehiculos_patente_horallegada

 sp_helpconstraint vehiculos 

 

-------------------------------------------- 54 - Crear y asociar reglas (create rule - sp_bindrule) ------------------------------------------

drop table empleados;

create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  seccion varchar(20),
  fechaingreso datetime,
  fechanacimiento datetime,
  hijos tinyint,
  sueldo decimal(6,2)
 );


 set dateformat 'ymd'

  insert into empleados 
   values('22222222','Ana Acosta','Contaduria','1990-10-10','1972-10-10',2,700);
 insert into empleados 
   values('23333333','Carlos Costa','Contaduria','1990-12-10','1972-05-04',0,750);
 insert into empleados 
   values('24444444','Daniel Duarte','Sistemas','1995-05-05','1975-10-06',1,880);
 insert into empleados 
   values('25555555','Fabiola Fuentes','Secretaria','1998-02-25','1978-02-08',3,550);
 insert into empleados 
   values('26666666','Gaston Garcia','Secretaria','1999-05-08','1981-01-01',3,670);
 insert into empleados 
   values('27777777','Ines Irala','Gerencia','2000-04-10','1985-12-12',0,6000);


--Creamos una regla que establezca un patrón para el documento:

create rule RG_documento_patron
as @documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]';


sp_helpconstraint empleados 

select * from empleados 

insert into empleados values ('98123456','ert','gree',null,null,null,null)

exec sp_bindrule RG_documento_patron, 'empleados.documento'


create rule RG_seccion_Tipo
as @seccion in ('Contaduria','Sistemas','Gerencia','Secretaria');





insert into empleados values ('24234234','ert','seccion',null,null,null,null)


exec sp_bindrule RG_seccion_Tipo, 'empleados.seccion'

sp_helpconstraint empleados



-- Creamos una regla para restringir los valores que se pueden ingresar en el campo "fechaingreso", para que no sea posterior a
-- la fecha actual:

create rule RG_fechaingreso
as @fechaingreso <= getdate()

set dateformat 'dmy'

insert into empleados values ('24234234','ert','Sistemas','01-06-2015',null,null,null)


exec sp_bindrule RG_fechaingreso, 'empleados.fechaingreso'



exec sp_bindrule RG_fechaingreso, 'empleados.fechanacimiento'



insert into empleados values ('24234234','ert','Sistemas',null,'31-05-2015',null,null)

--Creamos una regla para restringir los valores que se pueden ingresar en el campo "hijos":

create rule RG_cantidadhijos
as @hijos >=0 and @hijos <=20


exec sp_bindrule RG_cantidadhijos, 'empleados.hijos'

insert into empleados values ('24234234','ert','Sistemas',null,default,20,null)


--Creamos una regla para restringir los valores que se pueden ingresar en un campo "sueldo":

create rule RG_sueldo
as @sueldo between 0 and 5000

insert into empleados values ('24234234','ert','Sistemas',null,default,20,5000)

exec sp_bindrule RG_sueldo, 'empleados.sueldo'

select * from empleados 


update empleados set sueldo = 6000 where documento = '23333333'


-- Creamos otra regla para restringir los valores que se pueden ingresar en un campo "sueldo":


create rule RG_sueldo2
as @sueldo >= 0 and @sueldo <= 7000

sp_helpconstraint empleados

exec sp_bindrule RG_sueldo2, 'empleados.sueldo'

sp_help 

-------------------------------------------  Primer problema: --------------------------------------------------

drop table vehiculos;

create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime not null,
  horasalida datetime
 );

  insert into vehiculos values ('AAA111','a','1990-02-01 08:10',null);
 insert into vehiculos values ('BCD222','m','1990-02-01 08:10','1990-02-01 10:10');
 insert into vehiculos values ('BCD222','m','1990-02-01 12:00',null);
 insert into vehiculos values ('CC1234','a','1990-02-01 12:00',null);




 --5- Cree una regla para restringir los valores que se pueden ingresar en un campo "patente" (3 letras 
--seguidas de 3 dígitos):


create rule RG_patente
as @patente like '[a-z][a-z][a-z][0-9][0-9][0-9]'



 exec sp_bindrule RG_patente, 'vehiculos.patente'

 --9- Intente ingresar un registro con valor para el campo "patente" que no cumpla con la regla.
--aparece un mensaje de error indicando que hay conflicto con la regla y la inserción no se realiza.

insert into vehiculos values ('EE5666','a',null,null)


-- 10- Cree otra regla que controle los valores para el campo "tipo" para que solamente puedan 
-- ingresarse los caracteres "a" y "m".

create rule RG_tipo
as @tipo in('a','m')

exec sp_bindrule RG_tipo, 'vehiculos.tipo'

update vehiculos set patente = '1RR345' where patente = 'AAA111'



--13- Cree otra regla llamada "RG_vehiculos_tipo2" que controle los valores para el campo "tipo" para 
-- que solamente puedan ingresarse los caracteres "a", "c" y "m".

create rule RG_vehiculos_tipo2
as @tipo in('a','c','m')


exec sp_bindrule RG_vehiculos_tipo2, 'vehiculos.tipo'



 update vehiculos set tipo='c' where patente='AAA111';

 create rule RG_fechas
 as @fecha <= getdate()


exec sp_bindrule RG_fechas, 'vehiculos.horallegada'
exec sp_bindrule RG_fechas, 'vehiculos.horasalida'

 insert into vehiculos values ('NOP555','a','2015-01-05','1990-02-01 08:30');


-- 19- Intente establecer una restricción "check" que asegure que la fecha y hora de llegada a la playa 
-- no sea posterior a la fecha y hora de salida:

alter table vehiculos
add constraint CK_vehiculos_fechas
check (horallegada <= horasalida)


delete from vehiculos where patente = 'NOP555'

alter table vehiculos
add constraint DF_vehiculos_tipo
default 'b'
for tipo



 sp_helpconstraint vehiculos 
 sp_help
 select * from vehiculos 



 insert into vehiculos values ('NOP555',default,'1990-01-01','1990-02-01 08:30');


 --------------------------- 55 - Eliminar y dasasociar reglas (sp_unbindrule - drop rule) --------------------

 -- Quitamos la asociación de la regla "RG_sueldo_intervalo" con el campo "sueldo" de la tabla "empleados" tipeando:

drop table empleados;

 create table empleados(
  documento char(8),
  nombre varchar(30) not null,
  seccion varchar(20),
  sueldo decimal(6,2),
  primary key(documento)
 );


 -- Creamos una regla para restringir los valores que se pueden ingresar en un campo "sueldo":

 create rule RG_sueldo_100a1000
 as @sueldo >=100 and @sueldo <=1000 

-- Asociamos la regla creada anteriormente al campo "sueldo":

 exec sp_bindrule RG_sueldo_100a1000, 'empleados.sueldo'

-- Si intentamos ingresar un registro con valor para el campo "sueldo" de "1200" aparece un mensaje de error indicando que hay 
--conflicto con la regla y la inserción no se realiza.

insert into empleados values('12345678','fwfwe',null,20)


--Si intentamos eliminar la regla "RG_sueldo_100a 1000" aparece un mensaje de error indicando que no se puede eliminar la regla 
--porque está asociada.

drop rule RG_sueldo_100a1000


-- Quitamos la asociación:

exec sp_unbindrule 'empleados.sueldo'

--Ahora que hemos quitado la asociación, podemos ingresar el valor "1200" en el campo "sueldo":


insert into empleados values('12345678','Luis','seccion',1200)


-- Ahora si podemos borrar la regla:

drop rule RG_sueldo_100a1000

sp_help
sp_helpconstraint empleados 
select * from empleados 


--------------------------------------------- Primer problema: -------------------------------------------------------------

drop table vehiculos;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime not null,
  horasalida datetime
 );

 -- Cree una regla para restringir los valores que se pueden ingresar en un campo "patente" (3 letras 
-- seguidas de 3 dígitos):

create rule RG_patente
as @patente like '[a-z][a-z][a-z][0-9][0-9][0-9]'


-- 5-Asocie la regla al campo "patente":

exec sp_bindrule RG_patente, 'vehiculos.patente'

-- 6- Intente ingresar un registro con valor para el campo "patente" que no cumpla con la regla:

insert into vehiculos values ('WAS456','o','2015-09-09','2015-04-04')


-- 7- Cree otra regla que controle los valores para el campo "tipo" para que solamente puedan 
-- ingresarse los caracteres "a" y "m":

create rule RG_tipo
as @tipo in('a','b')

exec sp_bindrule RG_tipo, 'vehiculos.tipo'


-- 9- Intente ingresar un registro con el valor 'c' para "tipo":

insert into vehiculos values ('QAS123','s','2015-09-09',null)


-- 10- Cree otra regla llamada "RG_vehiculos_tipo2" que controle los valores para el campo "tipo" para 
-- que solamente puedan ingresarse los caracteres "a", "c" y "m"


create rule RG_vehiculos_tipo2
as @tipo in('a','c','m')


--socie la regla creada en el punto anterior al campo "tipo".

exec sp_bindrule RG_vehiculos_tipo2, 'vehiculos.tipo'

insert into vehiculos values ('QAS123','s','2015-09-09',null)


--13- Intente eliminar la regla "RG_vehiculos_tipo2".

drop rule RG_vehiculos_tipo2


-- 14- Elimine la regla "RG_vehiculos_tipo".

drop rule [dbo].[RG_tipo]

--15- Intente eliminar la regla "RG_patente_patron".

drop rule RG_patente


-- 16- Quite la asociación de la regla con el campo "patente" de "vehiculos".

exec sp_unbindrule 'vehiculos.patente'

drop rule RG_patente

sp_help
sp_helpconstraint vehiculos
select * from vehiculos 



---------------------------------- 56 - Información de reglas (sp_help - sp_helpconstraint) --------------------------------------------


sp_help RG_vehiculos_tipo2

sp_helpconstraint vehiculos 

-- ara ver el texto de una regla empleamos el procedimiento almacenado "sp_helptext" seguido del nombre de la regla:

sp_helptext RG_vehiculos_tipo2

-- También se puede consultar la tabla del sistema "sysobjects", que nos muestra el nombre y varios datos de todos los objetos 
--de la base de datos actual. La columna "xtype" indica el tipo de objeto, en caso de ser una regla aparece el valor "R":

select *from sysobjects;

-- Si queremos ver todas las reglas creadas por nosotros, podemos tipear:

select * from sysobjects
  where xtype='R' --and-- tipo regla
  --name like 'RG%';--búsqueda con comodín


---------------------------------  57 - Valores predeterminados (create default) --------------------------------------------------------

 drop table empleados;

  create table empleados(
  nombre varchar(30),
  domicilio varchar(30),
  barrio varchar(15),
  telefono char(14),
  sueldo decimal(6,2)
 );


 insert into empleados default values 

 select * from empleados 


 --Creamos un valor predeterminado con el valor "Desconocido":

create default VP_Desconocido
as 'Desconocido'

--Lo asociamos al campo "domicilio":

exec sp_bindefault VP_Desconocido, 'empleados.domicilio'

--Lo asociamos al campo "barrio":

exec sp_bindefault VP_Desconocido, 'empleados.barrio'

--Ingresamos otro registro sin especificar valores y vemos los datos:

insert into empleados default values

-- Creamos un valor predeterminado que inserta el valor "0":

create default VP_cero
as 0;


-- Lo asociamos al campo "sueldo":

exec sp_bindefault VP_cero, 'empleados.sueldo'

-- Ingresamos un registro y verificamos los datos:


insert into empleados default values 


--Creamos un valor predeterminado que inserta el valor "100":

create default VP_cien
as 100


--Lo asociamos al campo "sueldo":

exec sp_bindefault VP_cien, 'empleados.sueldo'

insert into empleados default values 

sp_helpconstraint empleados

sp_help 


-- Creamos un valor predeterminado que inserta ceros con el formato válido para un campo número de teléfono:

create default VP_telefono
 as '(0000)0-000000';

 -- La asociamos al campo "telefono" de la tabla "empleados":

exec sp_bindefault VP_telefono, 'empleados.telefono'


insert into empleados default values 


sp_helpconstraint empleados
 select * from empleados 


 ---------------------------------------------- Primer problema: ------------------------------------------------------------

drop table clientes;

create table clientes(
  legajo char(4),
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(15),
  provincia varchar(20) default 'Cordoba',
  fechaingreso datetime
 );


-- 4- Cree una regla para establecer un patrón para los valores que se ingresen en el campo "legajo" (2 
--letras seguido de 2 cifras) llamada "RG_legajo_patron":

create rule RG_legajo_patron
as @patron like '[a-z][a-z][0-9][0-9]'

--5- Asocie la regla al campo "legajo".

exec sp_bindrule RG_legajo_patron, 'clientes.legajo'


--6- Cree un valor predeterminado para el campo "legajo" ('AA00') llamado "VP_legajo_patron".

create default VP_legajo_patron
as  'AA00' 


--7- Asócielo al campo "legajo".

exec sp_bindefault VP_legajo_patron, 'clientes.legajo'



--Recuerde que un campo puede tener un valor predeterminado y reglas asociados.

--8- Cree un valor predeterminado con la cadena "??" llamado "VP_datodesconocido".

create default VP_datosdesconocido
as '??'



--9- Asócielo al campo "domicilio".

exec sp_bindefault VP_datosdesconocido, 'clientes.domicilio'

--10- Asócielo al campo "ciudad".

exec sp_bindefault VP_datosdesconocido, 'clientes.ciudad'

--Recuerde que un valor predeterminado puede asociarse a varios campos.

--11- Ingrese un registro con valores por defecto para los campos "domicilio" y "ciudad" y vea qué 
--almacenaron.

insert into clientes default values 




--12- Intente asociar el valor predeterminado "VP_datodesconocido" al campo "provincia".
--No se puede porque dicho campo tiene una restricción "default".

exec sp_bindefault VP_datosdesconocido, 'clientes.provincia'


--13- Cree un valor predeterminado con la fecha actual llamado "VP_fechaactual".

create default VP_fechaactual
as getdate()



--14- Asócielo al campo "fechaingreso".

exec sp_bindefault VP_fechaactual, 'clientes.fechaingreso'

--15- Ingrese algunos registros para ver cómo se almacenan los valores para los cuales no se insertan 
--datos.

insert into clientes default values 



--16- Asocie el valor predeterminado "VP_datodesconocido" al campo "fechaingreso".
--Note que se asoció un valor predeterminado de tipo caracter a un campo de tipo "datetime"; SQL 
--Server lo permite, pero al intentar ingresar el valor aparece un mensaje de error.

exec sp_bindefault VP_datosdesconocido, 'clientes.fechaingreso'




--17- Ingrese un registro con valores por defecto.
--No lo permite porque son de distintos tipos.

insert into clientes default values

--18- Cree una regla que entre en conflicto con el valor predeterminado "VP_legajo_patron".

create rule RG_legajo2
as @legajo like '[a-z][0-9]'




--19- Asocie la regla al campo "legajo".
--Note que la regla especifica que el campo "legajo" debe comenzar con la letra "B", pero el valor 
--predeterminado tiene el valor "AA00"; SQL Server realiza la asociación, pero al intentar ingresar el 
--valor predeterminado, no puede hacerlo y muestra un mensaje de error.


exec sp_bindrule RG_legajo2, 'clientes.legajo'

--20- Intente ingresar un registro con el valor "default" para el campo "legajo".
--No lo permite porque al intentar ingresar el valor por defecto establecido con el valor 
--predeterminado entra en conflicto con la regla "RG_legajo".

 insert into clientes values (default,'Luis Garcia','Colon 876','Cordoba','Cordoba','2001-10-10');

select * from clientes
sp_helpconstraint clientes 



-- 58 - Desasociar y eliminar valores predeterminados

drop table empleados;


if object_id ('VP_cero') is not null
   drop default VP_cero;
 if object_id ('VP_datodesconocido') is not null
   drop default VP_datodesconocido;


 create table empleados(
  nombre varchar(30),
  domicilio varchar(30),
  barrio varchar(15),
  sueldo decimal(6,2)
 );


-- Creamos un valor predeterminado que inserta el valor "0":

create default VP_cero
as 0


-- Lo asociamos al campo "sueldo":

exec sp_bindefault VP_cero, 'empleados.sueldo'


-- Creamos un valor predeterminado con el valor "Desconocido":

create default VP_desconocido
as 'Desconocido'

-- Lo asociamos al campo "domicilio" y al campo "barrio":

exec sp_bindefault VP_desconocido, 'empleados.domicilio'

exec sp_bindefault VP_Desconocido, 'empleados.barrio'




-- Quitamos la asociación al campo "barrio":

exec sp_unbindefault 'empleados.barrio'


sp_help 


exec sp_unbindefault 'empleados.domicilio'

drop default [dbo].[VP_desconocido]



sp_helpconstraint empleados 
select * from empleados 

 

 ------------------------------------------------------ Primer problema:  -----------------------------------------------------

drop table libros;


if object_id ('VP_cero') is not null
   drop default VP_cero;
 if object_id ('VP_desconocido') is not null
   drop default VP_desconocido;
 if object_id ('RG_positivo') is not null
   drop rule RG_positivo;

create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  cantidad smallint
 );

-- 4- Cree una regla para impedir que se ingresen valores negativos, llamada "RG_positivo".

create rule RG_positivo
as @positivo >= 0 


-- 5- Asocie la regla al campo "precio".

exec sp_bindrule RG_positivo, 'libros.precio'


--6- Asocie la regla al campo "cantidad".

exec sp_bindrule RG_positivo, 'libros.cantidad'


-- 7- Cree un valor predeterminado para que almacene el valor cero, llamado "VP_cero".

create default VG_cero
as 0

-- 8- Asócielo al campo "precio".

exec sp_bindefault VG_cero, 'libros.precio'

-- 9- Asócielo al campo "cantidad".

exec sp_bindefault VG_cero , 'libros.cantidad'

-- 10- Cree un valor predeterminado con la cadena "Desconocido" llamado "VP_desconocido".

create default VP_desconocido
as 'Desconocido'


 -- 11- Asócielo al campo "autor".
exec sp_bindefault VP_desconocido, 'libros.autor'

-- 12- Asócielo al campo "editorial".

exec sp_bindefault VP_Desconocido, 'libros.editorial'

sp_help 

sp_helpconstraint libros


-- 15- Ingrese un registro con valores por defecto para todos los campos, excepto "titulo" y vea qué se 

insert into libros (titulo) values ('Java')


-- 15- Quite la asociación del valor predeterminado "VP_cero" al campo "precio".

exec sp_unbindefault 'libros.precio'

-- 16- Ingrese otro registro con valor predeterminado para el campo "precio" y vea cómo se almacenó.

insert into libros values ('PHP','Jose','Anaya',default,20)

-- 19- Intente eliminar el valor predeterminado "V_cero".

drop default VG_cero


--20- Quite la asociación del valor predeterminado "VP_cero" al campo "cantidad".

exec sp_unbindefault 'libros.cantidad'

sp_helpconstraint libros

sp_help

-- 23- Elimine el valor predeterminado "VP_cero".

drop default VG_cero

sp_help


select * from libros 

----------------------------------------------------- 59 - Información de valores predeterminados---------------------------------------

--  "sp_help" : vemos todos los objetos de la base de datos activa (incluyendo los valores predeterminados); en la columna "Object_type" (tipo de objeto)
-- muestra "default".


-- "sp_helpconstraint" retorna una lista de todas las restricciones que tiene una tabla. También los valores predeterminados asociados; 
-- muestra la siguiente información:


-- constraint_type: indica que es un valor predeterminado con "DEFAULT", nombrando el campo al que está asociado.

-- constraint_name: nombre del valor predeterminado.

-- constraint_keys: muestra el texto del valor predeterminado.

-- Con "sp_helptext" seguido del nombre de un valor predeterminado podemos ver el texto de cualquier valor predeterminado

-- sysobjects  os muestra el nombre y varios datos de todos los objetos de la base de datos actual. La columna "xtype" 
--indica el tipo de objeto, en caso de ser un valor predeterminado aparece el valor "D":


select * from sysobjects;


--Si queremos ver todos los valores predeterminados creados por nosotros, podemos tipear:

 select *from sysobjects
  where xtype='D' and-- tipo valor predeterminado
  name like 'VP%';--búsqueda con comodín


--------------------------------------------------------- Problema: ---------------------------------------------------------

drop table empleados 

 if object_id ('empleados') is not null
  drop table empleados;
 if object_id ('VP_sueldo') is not null
   drop default VP_sueldo;
 if object_id ('VP_seccion') is not null
   drop default Vp_seccion;


 create table empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  seccion varchar(20),
  sueldo decimal(6,2),
  primary key(documento)
 );

 -- Creamos un valor predeterminado para el campo "sueldo":

create default VP_sueldo
as 500

-- Asociamos el valor predeterminado creado anteriormente al campo "sueldo":

exec sp_bindefault VP_sueldo, 'empleados.sueldo'


-- Creamos un valor predeterminado para "seccion":

create default VP_seccion 
as 'Secreataria'

sp_help


-- Si agregamos al procedimiento almacenado "sp_help" el nombre del valor predeterminado del cual queremos información:


sp_help VP_sueldo


sp_helpconstraint empleados 



-- Si asociamos el valor predeterminado VP_seccion a la tabla

exec sp_bindefault VP_seccion, 'empleados.seccion'


sp_helpconstraint empleados 

sp_helptext VP_seccion

-- Deshacemos la asociación del valor predeterminado "VP_sueldo" y lo eliminamos:

exec sp_unbindefault 'empleados.sueldo'

drop default VP_sueldo


sp_help VP_sueldo

--  Vemos si el valor predeterminado "VP_seccion" existe consultando la tabla "sysobjects":



select *from sysobjects
  where xtype='D' and
  name like '%seccion%';



------------------------------------------------------- 62 - Creación de índices ---------------------------------------------

drop table libros

create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15)
 );


 -- Creamos un índice agrupado único para el campo "codigo" de la tabla "libros":

create unique clustered index I_libros_codigo
on libros(codigo)

-- Creamos un índice no agrupado para el campo "titulo":

create nonclustered index I_libros_titulo
on libros(titulo)



-- Creamos una restricción "primary key" al campo "codigo" especificando que cree un índice NO agrupado:

alter table libros
add constraint PK_libros_codigo
primary key nonclustered (codigo)


-- Creamos un índice compuesto para el campo "autor" y "editorial":

create index I_libros_autor_editorial
on libros(autor,editorial)


 select name from sysindexes;


 select name from sysindexes
  where name like 'I_%';


sp_helpindex libros 
sp_helpconstraint libros 


------------------------------------------------- Primer problema: --------------------------------------------------------------

drop table alumnos;

 create table alumnos(
  legajo char(5) not null,
  documento char(8) not null,
  apellido varchar(30),
  nombre varchar(30) not null,
  notafinal decimal(4,2)
 );

  insert into alumnos values ('A123','22222222','Perez','Patricia',5.50);
 insert into alumnos values ('A234','23333333','Lopez','Ana',9);
 insert into alumnos values ('A345','24444444','Garcia','Carlos',8.5);
 insert into alumnos values ('A348','25555555','Perez','Daniela',7.85);
 insert into alumnos values ('A457','26666666','Perez','Fabian',3.2);
 insert into alumnos values ('A589','27777777','Gomez','Gaston',6.90);


-- 3- Intente crear un índice agrupado único para el campo "apellido".

create unique clustered index I_alumnos_apellido
on alumnos(apellido)


-- 4- Cree un índice agrupado, no único, para el campo "apellido".

create clustered index I_alumnos_apellido
on alumnos(apellido)


-- 5- Intente establecer una restricción "primary key" al campo "legajo" especificando que cree un 
-- índice agrupado.

alter table alumnos
add constraint PK_alumnos_legajo
primary key clustered (legajo)

-- 6- Establezca la restricción "primary key" al campo "legajo" especificando que cree un índice NO 
-- agrupado.

alter table alumnos
add constraint PK_alumnos_legajo
primary key nonclustered (legajo)



 -- 9- Cree un índice unique no agrupado para el campo "documento".

create unique nonclustered index I_alumnos_documento
on alumnos(documento)

-- 10- Intente ingresar un alumno con documento duplicado.

insert into alumnos values ('A534','24444444','fwefwef','fewfe',34)



 -- 11- Veamos los indices de "alumnos".

 sp_helpindex alumnos



 -- 12- Cree un índice compuesto para el campo "apellido" y "nombre".

create index I_alumnos_apellidoNombre
on alumnos(apellido,nombre)


-- 13- Consulte la tabla "sysindexes", para ver los nombres de todos los índices creados para 

select name from sysindexes
  where name like '%alumnos%';


  -- 14- Cree una restricción unique para el campo "documento".

alter table alumnos
add constraint UQ_alumnos_documento
unique (documento)


-- 15- Vea la información de "sp_helpconstraint".

sp_helpconstraint alumnos



--17- Consulte la tabla "sysindexes", para ver los nombres de todos los índices creados para 
--"alumnos":

select name from sysindexes
  where name like '%alumnos%';


  -- 18- Consulte la tabla "sysindexes", para ver los nombres de todos los índices creados por usted:

  select name from sysindexes
  where name like 'I_%';


 sp_helpindex alumnos
sp_helpconstraint alumnos
 select * from alumnos 

 ------------------------------------- 63 - Regenerar índices ------------------------------------------------

 drop table libros;

  create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15)
 );


 -- Creamos un índice no agrupado para el campo "titulo":

create nonclustered index I_libros_titulo
on libros(titulo)

sp_helpindex libros


-- Vamos a agregar el campo "autor" al índice "I_libros_titulo" y vemos si se modificó:

create index I_libros_titulo
on libros(titulo,autor)
with drop_existing


-- Lo convertimos en agrupado y ejecutamos "sp_helpindex":

create clustered index I_libros_titulo
on libros(titulo,autor)
with drop_existing

sp_helpindex libros


-- Quitamos un campo "autor" y verificamos la modificación:

create clustered index I_libros_titulo
on libros(titulo)
with drop_existing


sp_helpindex libros


------------------------------------------------ Primer problema:  --------------------------------------------------------

  drop table alumnos;

   create table alumnos(
  legajo char(5) not null,
  documento char(8) not null,
  apellido varchar(30),
  nombre varchar(30),
  notafinal decimal(4,2)
 );

 -- 2- Cree un índice no agrupado para el campo "apellido".


create nonclustered index I_alumnos_apellido
on alumnos(apellido)


-- 3- Vea la información de los índices de "alumnos".

sp_helpindex alumnos

-- 4- Modifíquelo agregando el campo "nombre".

create nonclustered index I_alumnos_apellido
on alumnos(apellido,nombre)
with drop_existing


 exec sp_helpindex alumnos;

 -- 6- Establezca una restricción "unique" para el campo "documento".

 alter table alumnos
 add constraint UQ_alumnos_documento
 unique (documento)


 -- 7- Vea la información que muestra "sp_helpindex":

 sp_helpindex alumnos


 -- 8- Intente modificar con "drop_existing" alguna característica del índice que se creó 
-- automáticamente al agregar la restricción "unique":

create clustered index UQ_alumnos_documento 
on alumnos(documento)
with drop_existing


-- 9- Cree un índice no agrupado para el campo "legajo".

create nonclustered index I_alumnos_legajo
on alumnos(legajo)

-- 10- Muestre todos los índices:

sp_helpindex alumnos


-- 11- Convierta el índice creado en el punto 9 a agrupado conservando las demás características.

create clustered index I_alumnos_legajo
on alumnos(legajo)
with drop_existing


sp_helpindex alumnos


-- 13- Intente convertir el índice "I_alumnos_legajo" a no agrupado:

create nonclustered index I_alumnos_legajo
on alumnos(legajo)
with drop_existing


-- 14- Modifique el índice "I_alumnos_apellido" quitándole el campo "nombre".

create index I_alumnos_apellido
on alumnos(apellido)
with drop_existing


-- 15- Intente convertir el índice "I_alumnos_apellido" en agrupado:

create clustered index I_alumnos_apellido
on alumnos(apellido)
with drop_existing

-- 16- Modifique el índice "I_alumnos_legajo" para que sea único y conserve todas las otras 
--  características

create unique clustered index I_alumnos_legajo
on alumnos(legajo)
with drop_existing



sp_helpindex alumnos


-- 18- Modifique nuevamente el índice "I_alumnos_legajo" para que no sea único y 
--conserve las demás características

create clustered index I_alumnos_legajo
on alumnos(legajo)
with drop_existing


 sp_helpindex alumnos;


 -------------------------------- 64 - Eliminar índices -------------------------------------

 If exists(select * from sysindexes where name ='dato')
 drop index tabla.nombreIndex


drop table libros;

create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15)
 );

 -- Creamos un índice para el campo "titulo":

 create index I_libros_titulo
 on libros(titulo)

 sp_helpindex libros

 -- Eliminamos el índice "I_libros_titulo":

 drop index libros.I_libros_titulo


 sp_helpindex libros

 if exists (select * from sysindexes where name = 'I_libros_titulo')
 drop index libros.I_libros_titulo
 

------------------------------------------Primer problema:  -------------------------------------

drop table alumnos;

create table alumnos(
  legajo char(5) not null,
  documento char(8) not null,
  apellido varchar(30),
  nombre varchar(30),
  notafinal decimal(4,2)
 );

 -- 2- Cree un índice no agrupado para el campo "apellido".

create nonclustered index I_alumnos_apellido
on alumnos(apellido)

sp_helpindex alumnos

-- 3- Establezca una restricción "primary" para el campo "legajo" y especifique que cree un índice 
--"agrupado".

alter table alumnos
add constraint PK_alumnos_legajo
primary  key clustered (legajo)


sp_helpindex alumnos

-- 5- Intente eliminar el índice "PK_alumnos_legajo" con "drop index":

drop index alumnos.PK_alumnos_legajo


--6- Intente eliminar el índice "I_alumnos_apellido" sin especificar el nombre de la tabla:

drop index I_alumnos_apellido

-- 7- Elimine el índice "I_alumnos_apellido" especificando el nombre de la tabla.

drop index alumnos.I_alumnos_apellido

-- 9- Solicite que se elimine el índice "I_alumnos_apellido" si existe:

if exists(select * from sysindexes where name = 'I_alumnos_apellido')
drop index alumnos.I_alumnos_apellido


-- 10- Elimine el índice "PK_alumnos_legajo" (quite la restricción).

alter table alumnos
drop constraint PK_alumnos_legajo


sp_helpindex alumnos


------------------------------------ 66 - Combinación interna (inner join) --------------------------------

drop table libros 

drop table editoriales;

create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );

 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
);

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',2,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',3,50);
 insert into libros values('Java en 10 minutos',default,3,45);

 select * from editoriales
 select * from libros


 -- Realizamos un join para obtener datos de ambas tablas (titulo, autor y nombre de la editorial):

select l.titulo,l.autor,e.nombre 
from libros l
join editoriales e 
on (l.codigoeditorial = e.codigo)


-- Realizamos la misma consulta anterior agregando un "where" para obtener solamente los libros de la editorial "Siglo XXI":

select l.titulo,l.autor,e.nombre from libros l
join editoriales e on (l.codigoeditorial = e.codigo)
where e.nombre = 'Siglo XXI'


-- Obtenemos título, autor y nombre de la editorial, esta vez ordenados por título:

select l.titulo,l.autor,e.nombre from libros l
join editoriales e on (l.codigoeditorial = e.codigo)
order by l.titulo

--------------------------------------------------------- Primer problema:  -----------------------------------------------------

drop table clientes;
drop table provincias;

create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );


 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Pereyra Lucas','San Martin 555','Cruz del Eje',1);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','Ibera',3);


 -- 4- Obtenga los datos de ambas tablas, usando alias:

 select c.nombre,domicilio,ciudad,p.nombre 
 from clientes c
 join provincias p 
 on (c.codigoprovincia=p.codigo)

 -- 5- Obtenga la misma información anterior pero ordenada por nombre de provincia.

select c.nombre,domicilio,ciudad,p.nombre
from clientes as c
join provincias as p
on (c.codigoprovincia = p.codigo)
order by p.nombre

-- 6- Recupere los clientes de la provincia "Santa Fe" (2 registros devueltos)

select c.nombre,domicilio,ciudad,p.nombre
from clientes as c
join provincias as p
on (c.codigoprovincia=p.codigo)
where p.nombre = 'Santa Fe'



 select * from clientes
 select * from provincias

 ------------------------------------------------------ Segundo problema: ----------------------------------------------------------------

drop table inscriptos;
drop table inasistencias;


create table inscriptos(
  nombre varchar(30),
  documento char(8),
  deporte varchar(15),
  matricula char(1), --'s'=paga 'n'=impaga
  primary key(documento,deporte)
 );

 create table inasistencias(
  documento char(8),
  deporte varchar(15),
  fecha datetime
 );


 insert into inscriptos values('Juan Perez','22222222','tenis','s');
 insert into inscriptos values('Maria Lopez','23333333','tenis','s');
 insert into inscriptos values('Agustin Juarez','24444444','tenis','n');
 insert into inscriptos values('Marta Garcia','25555555','natacion','s');
 insert into inscriptos values('Juan Perez','22222222','natacion','s');
 insert into inscriptos values('Maria Lopez','23333333','natacion','n');

 insert into inasistencias values('22222222','tenis','2006-12-01');
 insert into inasistencias values('22222222','tenis','2006-12-08');
 insert into inasistencias values('23333333','tenis','2006-12-01');
 insert into inasistencias values('24444444','tenis','2006-12-08');
 insert into inasistencias values('22222222','natacion','2006-12-02');
 insert into inasistencias values('23333333','natacion','2006-12-02');


-- 3- Muestre el nombre, el deporte y las fechas de inasistencias, ordenado por nombre y deporte.
-- Note que la condición es compuesta porque para identificar los registros de la tabla "inasistencias"

select ins.nombre,ina.deporte,ina.fecha 
from inscriptos as ins
join inasistencias as ina on (ins.documento = ina.documento and ins.deporte = ina.deporte)
order by nombre,ina.deporte

-- 4- Obtenga el nombre, deporte y las fechas de inasistencias de un determinado inscripto en un 
-- determinado deporte (3 registros)


select nombre,ina.deporte,fecha 
from inscriptos ins
join inasistencias ina on (ins.documento=ina.documento and ins.deporte=ina.deporte)
where nombre = 'Juan Perez'

-- 5- Obtenga el nombre, deporte y las fechas de inasistencias de todos los inscriptos que pagaron la 
-- matrícula(4 registros)

select nombre,ina.deporte,fecha
from inscriptos ins
join inasistencias ina on (ins.documento=ina.documento and ins.deporte = ina.deporte)
where matricula = 's'


select * from inscriptos
select * from inasistencias


---------------------------------------------------- 67 - Combinación externa izquierda (left join) -------------------------------------------------

--  En el siguiente ejemplo solicitamos el título y nombre de la editorial de los libros:

drop table libros;
drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
);

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',1,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',2,50);
 insert into libros values('Java en 10 minutos',default,4,45);


-- Realizamos una combinación izquierda para obtener los datos de los libros, incluyendo el nombre de la editorial:

select * from editoriales as l
left join libros  as e
on e.codigoeditorial = l.codigo


-- Realizamos la misma consulta anterior pero cambiamos el orden de las tablas:

select * from libros l
left join editoriales e 
on (l.codigoeditorial= e.codigo)


-- Restringimos el resultado de una consulta considerando solamente los registros que encuentran coincidencia en la tabla de la derecha,
-- es decir, cuyo valor de código está presente en "libros":

select * 
from editoriales e
left join libros l 
on (e.codigo=l.codigoeditorial)
where l.codigoeditorial is not null


-- Mostramos las editoriales que NO están presentes en "libros", es decir, que NO encuentran coincidencia en la tabla de la derecha:

select * 
from editoriales e
left join libros l 
on l.codigoeditorial = e.codigo
where l.codigoeditorial is null


select * from libros 
select * from editoriales

---------------------------------------------------------------- Primer problema: ---------------------------------------------------------------

if (object_id('clientes')) is not null
drop table clientes;

if (object_id('provincias')) is not null
drop table provincias;


create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );


 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
 insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);


-- 3- Muestre todos los datos de los clientes, incluido el nombre de la provincia:

select c.nombre,domicilio,ciudad,p.nombre 
from clientes c
left join provincias p
on (c.codigoprovincia=p.codigo)

-- 4- Realice la misma consulta anterior pero alterando el orden de las tablas:

select c.nombre,domicilio,ciudad,p.nombre as provincia
from provincias p
left join clientes c 
on (c.codigoprovincia = p.codigo)


-- 5- Muestre solamente los clientes de las provincias que existen en "provincias" (5 registros):
 
select c.nombre,domicilio,ciudad, p.nombre
from clientes c
left join provincias p
on (c.codigoprovincia=p.codigo)
where p.codigo is not null

-- 6- Muestre todos los clientes cuyo código de provincia NO existe en "provincias" ordenados por 
-- nombre del cliente (2 registros):

select c.nombre,domicilio,ciudad,p.nombre provincia
from clientes c
left join provincias p
on (c.codigoprovincia = p.codigo)
where p.codigo is null
order by c.nombre

-- 7- Obtenga todos los datos de los clientes de "Cordoba" (3 registros):

select * from 
clientes c
left join provincias p
on (c.codigoprovincia = p.codigo)
where p.nombre = 'Cordoba'


select * from clientes
select * from provincias 


------------------------------------------------- Combinación externa derecha (right join) ----------------------------

 if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
);


 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',1,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',2,50);
 insert into libros values('Java en 10 minutos',default,4,45);


 select * from editoriales
 select * from libros 


 -- Solicitamos el título y nombre de la editorial de los libros empleando un "right join":

select titulo,nombre
from libros as l
right join editoriales as e
on codigoeditorial = e.codigo;


-- Realizamos la misma consulta anterior agregando un "where" que restringa el resultado considerando solamente 
-- los registros que encuentran coincidencia en la tabla izquierda:

select titulo,nombre 
from libros l
right join editoriales e
on (e.codigo = codigoeditorial)
where codigoeditorial is not null


-- Mostramos las editoriales que NO están presentes en "libros" (que NO encuentran coincidencia en "editoriales"):

select titulo,e.nombre from 
libros l
right join editoriales e on (l.codigoeditorial = e.codigo)
where codigoeditorial is null


select * from editoriales 
select * from libros 


--------------------------------------------- Primer problema:  ------------------------------------------------

  if (object_id('clientes')) is not null
   drop table clientes;
  if (object_id('provincias')) is not null
   drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

  insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
 insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);


 -- 3- Muestre todos los datos de los clientes, incluido el nombre de la provincia empleando un "right 
-- join".

select c.nombre,domicilio,ciudad,p.nombre
from provincias  p
right join clientes c on (c.codigoprovincia=p.codigo)


-- 4- Obtenga la misma salida que la consulta anterior pero empleando un "left join".

select c.nombre,domicilio,ciudad,p.nombre
from clientes c
left join provincias p on (c.codigoprovincia=p.codigo)


-- 5- Empleando un "right join", muestre solamente los clientes de las provincias que existen en 
-- "provincias" (5 registros)

select c.nombre,domicilio,ciudad,p.nombre
from clientes c
right join provincias p on (c.codigoprovincia = p.codigo)
where codigoprovincia is not null


-- 6- Muestre todos los clientes cuyo código de provincia NO existe en "provincias" ordenados por 
-- ciudad (2 registros)

select c.nombre,domicilio,ciudad,p.nombre
from provincias p
right join clientes c on (c.codigoprovincia=p.codigo)
where p.codigo is null
order by ciudad 



select * from clientes 
select * from provincias  

------------------------------------- 69 - Combinación externa completa (full join) ----------------------------------

if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;



   create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
);


 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',1,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',2,50);
 insert into libros values('Java en 10 minutos',default,4,45);


 select * from editoriales
 select * from libros 


 select titulo,autor,precio,nombre as editorial
 from libros l
 full join editoriales e on (l.codigoeditorial=e.codigo)


 ---------------------------------------------- Primer problema: ---------------------------------------------------

  if (object_id('deportes')) is not null
  drop table deportes;
 if (object_id('inscriptos')) is not null
  drop table inscriptos;

   create table deportes(
  codigo tinyint identity,
  nombre varchar(30),
  profesor varchar(30),
  primary key (codigo)
 );
 create table inscriptos(
  documento char(8),
  codigodeporte tinyint not null,
  matricula char(1) --'s'=paga 'n'=impaga
 );

  insert into deportes values('tenis','Marcelo Roca');
 insert into deportes values('natacion','Marta Torres');
 insert into deportes values('basquet','Luis Garcia');
 insert into deportes values('futbol','Marcelo Roca');
 
 insert into inscriptos values('22222222',3,'s');
 insert into inscriptos values('23333333',3,'s');
 insert into inscriptos values('24444444',3,'n');
 insert into inscriptos values('22222222',2,'s');
 insert into inscriptos values('23333333',2,'s');
 insert into inscriptos values('22222222',4,'n'); 
 insert into inscriptos values('22222222',5,'n'); 




 -- 3- Muestre todos la información de la tabla "inscriptos", y consulte la tabla "deportes" para 
-- obtener el nombre de cada deporte (6 registros)

select documento, matricula, nombre
from inscriptos i
join deportes d on (i.codigodeporte = d.codigo)

-- 4- Empleando un "left join" con "deportes" obtenga todos los datos de los inscriptos (7 registros)

select documento,matricula,nombre
from inscriptos
left join deportes on (codigodeporte=codigo)

-- 5- Obtenga la misma salida anterior empleando un "rigth join".

select documento,matricula,nombre 
from deportes 
right join inscriptos on (codigodeporte=codigo)
 

-- 6- Muestre los deportes para los cuales no hay inscriptos, empleando un "left join" (1 registro)

select nombre,profesor,documento 
from deportes 
left join inscriptos on (codigo=codigodeporte)
where codigodeporte is null


--7- Muestre los documentos de los inscriptos a deportes que no existen en la tabla "deportes" (1 
-- registro)

select documento,matricula,nombre as deporte 
from inscriptos 
left join deportes on (codigo=codigodeporte)
where codigo is null 

-- 8- Emplee un "full join" para obtener todos los datos de ambas tablas, incluyendo las inscripciones 
-- a deportes inexistentes en "deportes" y los deportes que no tienen inscriptos (8 registros)

select * from inscriptos
full join deportes 
on (codigo = codigodeporte)


 select * from inscriptos
 select * from deportes

 ------------------------------------------- 70 - Combinaciones cruzadas (cross join) --------------------------------

 if object_id('comidas') is not null
  drop table comidas;
 if object_id('postres') is not null
  drop table postres;

  create table comidas(
  codigo tinyint identity,
  nombre varchar(30),
  precio decimal(4,2)
 );

 create table postres(
  codigo tinyint identity,
  nombre varchar(30),
  precio decimal(4,2)
 );

   insert into comidas values('ravioles',5);
 insert into comidas values('tallarines',4);
 insert into comidas values('milanesa',7);
 insert into comidas values('cuarto de pollo',6);

 insert into postres values('flan',2.5);
 insert into postres values('porcion torta',3.5);


 -- El restaurante quiere combinar los registros de ambas tablas para mostrar los distintos menúes que ofrece.
 -- Lo hacemos usando un "cross join"

 select c.nombre as comida ,c.precio,p.nombre as postre ,p.precio
 from comidas c 
 cross join postres p


-- La salida muestra cada plato combinado con cada uno de los postres, agregamos una columna que calcula el precio total 
--de cada menú. Se obtienen 8 registros

select c.nombre as comida, p.nombre as postre , c.precio+p.precio as total
from comidas c
cross join postres p


 select * from comidas 
 select * from postres 


 ----------------------------------------------------- Primer problema: ---------------------------------------------------

 if object_id('mujeres') is not null
  drop table mujeres;
 if object_id('varones') is not null
  drop table varones;

create table mujeres(
  nombre varchar(30),
  domicilio varchar(30),
  edad int
 );
 create table varones(
  nombre varchar(30),
  domicilio varchar(30),
  edad int
 );

  insert into mujeres values('Maria Lopez','Colon 123',45);
 insert into mujeres values('Liliana Garcia','Sucre 456',35);
 insert into mujeres values('Susana Lopez','Avellaneda 98',41);

 insert into varones values('Juan Torres','Sarmiento 755',44);
 insert into varones values('Marcelo Oliva','San Martin 874',56);
 insert into varones values('Federico Pereyra','Colon 234',38);
 insert into varones values('Juan Garcia','Peru 333',50);


 --3- La agencia necesita la combinación de todas las personas de sexo femenino con las de sexo 
-- masculino. Use un "cross join" (12 registros)

select v.nombre as varon, v.domicilio,v.edad, m.nombre as mujer, m.domicilio , m.edad 
from varones v
cross join mujeres m


-- 4- Realice la misma combinación pero considerando solamente las personas mayores de 40 años (6 
-- registros)


select v.nombre as varon, v.domicilio, v.edad, m.nombre as mujer , m.domicilio, m.edad 
from varones v
cross join mujeres m
where v.edad > 40 and m.edad > 40


-- 5- Forme las parejas pero teniendo en cuenta que no tengan una diferencia superior a 10 años (8 
-- registros)

select v.nombre as varon, v.domicilio, v.edad, m.nombre  as mujer, m.domicilio, m.edad 
from varones v 
cross join mujeres m
WHERE  v.edad - m.edad < 10 and m.edad - v.edad < 10


 select * from varones
 select * from mujeres 


-------------------------------------------------- Segundo problema: -------------------------------------------------------

 if object_id('guardias') is not null
  drop table guardias;
 if object_id('tareas') is not null
  drop table tareas;


  create table guardias(
  documento char(8),
  nombre varchar(30),
  sexo char(1), /* 'f' o 'm' */
  domicilio varchar(30),
  primary key (documento)
 );

 create table tareas(
  codigo tinyint identity,
  domicilio varchar(30),
  descripcion varchar(30),
  horario char(2), /* 'AM' o 'PM'*/
  primary key (codigo)
 );

  insert into guardias values('22333444','Juan Perez','m','Colon 123');
 insert into guardias values('24333444','Alberto Torres','m','San Martin 567');
 insert into guardias values('25333444','Luis Ferreyra','m','Chacabuco 235');
 insert into guardias values('23333444','Lorena Viale','f','Sarmiento 988');
 insert into guardias values('26333444','Irma Gonzalez','f','Mariano Moreno 111');

 insert into tareas values('Colon 1111','vigilancia exterior','AM');
 insert into tareas values('Urquiza 234','vigilancia exterior','PM');
 insert into tareas values('Peru 345','vigilancia interior','AM');
 insert into tareas values('Avellaneda 890','vigilancia interior','PM');


 -- 4- La empresa quiere que todos sus empleados realicen todas las tareas. Realice una "cross join" (20 
-- registros)

select nombre,sexo,g.domicilio, descripcion, t.domicilio,horario 
from guardias g
cross join tareas t

--5- En este caso, la empresa quiere que todos los guardias de sexo femenino realicen las tareas de 
--"vigilancia interior" y los de sexo masculino de "vigilancia exterior". Realice una "cross join" con 
-- un "where" que controle tal requisito (10 registros)


select nombre, sexo , g.domicilio, descripcion, t.domicilio, horario
from guardias g
cross join tareas  t
where (sexo = 'm' and descripcion = 'vigilancia exterior' ) or (sexo = 'f' and descripcion = 'vigilancia interior')


 select * from guardias 
 select * from tareas 


 ---------------------------------------------------- 71 - Autocombinación ----------------------------------------------------


 if object_id('comidas') is not null
  drop table comidas;


 create table comidas(
  codigo int identity,
  nombre varchar(30),
  precio decimal(4,2),
  rubro char(6),-- 'plato'=plato principal', 'postre'=postre
  primary key(codigo)
 );


 insert into comidas values('ravioles',5,'plato');
 insert into comidas values('tallarines',4,'plato');
 insert into comidas values('milanesa',7,'plato');
 insert into comidas values('cuarto de pollo',6,'plato');
 insert into comidas values('flan',2.5,'postre');
 insert into comidas values('porcion torta',3.5,'postre');


 select * from comidas 

 -- Realizamos un "cross join":

 select c1.nombre as 'plato principal', c1.rubro,
 c2.nombre as 'postre', c2.rubro,
 c1.precio + c2.precio as 'precio total'
 from comidas c1
 cross join comidas c2
 
 -- Note que aparecen filas duplicadas, por ejemplo, "ravioles" se combina con "ravioles" y la combinación 
 -- "ravioles- flan" se repite como "flan- ravioles". Debemos especificar que combine el rubro "plato" con "postre":

select c1.nombre as 'plato principal',
c2.nombre as postre,
c1.precio+c2.precio as total
from comidas as c1
cross join comidas as c2
where c1.rubro='plato' and
c2.rubro='postre';

-- La salida muestra cada plato combinado con cada postre, y una columna extra que calcula el total del menú.

-- También se puede realizar una autocombinación con "join":

select c1.nombre as 'Plato principal',
c2.nombre as 'Postre',
c1.precio + c2.precio as 'Precio Total'
from comidas c1
join comidas c2 on (c1.codigo!=c2.codigo)
where c1.rubro = 'Plato' and c2.rubro='Postre'


------------------------------------------- Primer problema:  --------------------------------------------------

 if object_id('clientes') is not null
  drop table clientes;

create table clientes(
nombre varchar(30),
sexo char(1),--'f'=femenino, 'm'=masculino
edad int,
domicilio varchar(30)
);


 insert into clientes values('Maria Lopez','f',45,'Colon 123');
 insert into clientes values('Liliana Garcia','f',35,'Sucre 456');
 insert into clientes values('Susana Lopez','f',41,'Avellaneda 98');
 insert into clientes values('Juan Torres','m',44,'Sarmiento 755');
 insert into clientes values('Marcelo Oliva','m',56,'San Martin 874');
 insert into clientes values('Federico Pereyra','m',38,'Colon 234');
 insert into clientes values('Juan Garcia','m',50,'Peru 333');



 -- 3- La agencia necesita la combinación de todas las personas de sexo femenino con las de sexo 
-- masculino. Use un  "cross join" (12 registros)

select c1.nombre, c1.sexo,c2.nombre,c2.sexo
from clientes c1
cross join clientes c2
where c1.sexo = 'f' and c2.sexo = 'm'

-- 4- Obtenga la misma salida enterior pero realizando un "join".

select c1.nombre, c1.sexo, c2.nombre, c2.sexo
from clientes c1 
join clientes c2 on (c1.sexo!= c2.sexo)
 where c1.sexo = 'f' and c2.sexo = 'm'


--5- Realice la misma autocombinación que el punto 3 pero agregue la condición que las parejas no 
-- tengan una diferencia superior a 5 años (5 registros)

select c1.nombre,c1.sexo,c1.edad,c2.nombre,c2.sexo,c2.edad 
from clientes c1
cross join clientes c2
where c1.sexo = 'm' and c2.sexo='f'
and  (c1.edad - c2.edad <= 5 ) and (c2.edad - c1.edad <= 5 )

select cm.nombre,cm.edad,cv.nombre,cv.edad
from clientes as cm
cross join clientes cv
where cm.sexo='f' and cv.sexo='m' and
cm.edad-cv.edad between -5 and 5;

select * from clientes  


------------------------------------------------------- 72 - Combinaciones y funciones de agrupamiento ---------------------------------------------------------


 if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
);


insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',1,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',3,50);
 insert into libros values('Uno','Richard Bach',3,15);
 insert into libros values('Java en 10 minutos',default,4,45);


-- Contamos la cantidad de libros de cada editorial consultando ambas 
--tablas:

select * from libros
select * from editoriales

select e.nombre as editorial, count(*) as total , codigoeditorial
from libros l
join editoriales e 
on (l.codigoeditorial = e.codigo)
group by e.nombre ,l.codigoeditorial



-- Buscamos el libro más costoso de cada editorial con un 


select nombre as editorial, max(precio) 
from libros l
right join editoriales e on (l.codigoeditorial = e.codigo)
group by nombre


---------------------------------------- Primer problema: -------------------------------------------------


if object_id('visitantes') is not null
drop table visitantes;
if object_id('ciudades') is not null
drop table ciudades;


 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1) default 'f',
  domicilio varchar(30),
  codigociudad tinyint not null,
  mail varchar(30),
  montocompra decimal (6,2)
 );

 create table ciudades(
  codigo tinyint identity,
  nombre varchar(20)
 );

 insert into ciudades values('Cordoba');
 insert into ciudades values('Carlos Paz');
 insert into ciudades values('La Falda');
 insert into ciudades values('Cruz del Eje');

 insert into visitantes values 
   ('Susana Molina', 35,'f','Colon 123', 1, null,59.80);
 insert into visitantes values 
   ('Marcos Torres', 29,'m','Sucre 56', 1, 'marcostorres@hotmail.com',150.50);
 insert into visitantes values 
   ('Mariana Juarez', 45,'f','San Martin 111',2,null,23.90);
 insert into visitantes values 
   ('Fabian Perez',36,'m','Avellaneda 213',3,'fabianperez@xaxamail.com',0);
 insert into visitantes values 
   ('Alejandra Garcia',28,'f',null,2,null,280.50);
 insert into visitantes values 
   ('Gaston Perez',29,'m',null,5,'gastonperez1@gmail.com',95.40);
 insert into visitantes values 
   ('Mariana Juarez',33,'f',null,2,null,90);


-- 4- Cuente la cantidad de visitas por ciudad mostrando el 
-- nombre de la ciudad (3 filas)


select c.nombre, count(*) as 'cantidad de visitas'
from  ciudades c
join visitantes v on (c.codigo = v.codigociudad )
group by c.nombre


-- 5- Muestre el promedio de gastos de las visitas agrupados 
-- por ciudad y sexo (4 filas)

select c.nombre as ciudad,sexo, avg(montocompra) as gastos
from ciudades c
join visitantes v on (codigo=codigociudad)
group by c.nombre,sexo 



-- 6- Muestre la cantidad de visitantes con mail, 
--agrupados por ciudad (3 filas)

select c.nombre as ciudad, count(mail) as 'cantidad de visitantes'
from visitantes v 
join ciudades c on (c.codigo=v.codigociudad)
group by c.nombre


-- 7- Obtenga el monto de compra más alto de cada 
-- ciudad (3 filas)


select c.nombre as ciudad, max(montocompra) as monto
from visitantes v
join ciudades c on (c.codigo=v.codigociudad)
group by c.nombre


---------------------------------------------------- 73 - Combinación de más de dos tablas -----------------------------------------------------

 if object_id('libros') is not null
  drop table libros;
 if object_id('autores') is not null
  drop table autores;
 if object_id('editoriales') is not null
  drop table editoriales;


   create table libros(
  codigo int identity,
  titulo varchar(40),
  codigoautor int not null,
  codigoeditorial tinyint not null,
  precio decimal(5,2),
  primary key(codigo)
 );

 create table autores(
  codigo int identity,
  nombre varchar(20),
  primary key (codigo)
 );

 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

insert into editoriales values('Planeta');
insert into editoriales values('Emece');
insert into editoriales values('Siglo XXI');
insert into editoriales values('Plaza');
 
insert into autores values ('Richard Bach');
insert into autores values ('Borges');
insert into autores values ('Jose Hernandez');
insert into autores values ('Mario Molina');
insert into autores values ('Paenza');
 
insert into libros values('El aleph',2,2,20);
insert into libros values('Martin Fierro',3,1,30);
insert into libros values('Aprenda PHP',4,3,50);
insert into libros values('Uno',1,1,15);
insert into libros values('Java en 10 minutos',0,3,45);
insert into libros values('Matematica estas ahi',0,0,15);
insert into libros values('Java de la A a la Z',4,0,50);


-- Recuperamos todos los datos de los libros consultando las tres tablas:

select titulo,precio,a.nombre,e.nombre 
from libros l
join autores a on(codigoautor=a.codigo)
join editoriales e on(codigoeditorial=e.codigo)


--Podemos combinar varios tipos de join en una misma 
--sentencia:



select titulo,a.nombre,e.nombre,precio
from autores as a
right join libros as l
on codigoautor=a.codigo
left join editoriales as e
on codigoeditorial=e.codigo;


----------------------------------------------  Primer problema:  -------------------------------------------------

 if object_id('socios') is not null
  drop table socios;
 if object_id('deportes') is not null
  drop table deportes;
 if object_id('inscriptos') is not null
  drop table inscriptos;


  create table socios(
  documento char(8) not null, 
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table deportes(
  codigo tinyint identity,
  nombre varchar(20),
  profesor varchar(15),
  primary key(codigo)
 );
 create table inscriptos(
  documento char(8) not null, 
  codigodeporte tinyint not null,
  anio char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,anio)
 );


-- 3- Ingrese algunos registros en "socios":
 insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');
--4- Ingrese algunos registros en "deportes":
 insert into deportes values('basquet','Juan Juarez');
 insert into deportes values('futbol','Pedro Perez');
 insert into deportes values('natacion','Marina Morales');
 insert into deportes values('tenis','Marina Morales');

--5- Inscriba a varios socios en el mismo deporte en el mismo año:
 insert into inscriptos values ('22222222',3,'2006','s');
 insert into inscriptos values ('23333333',3,'2006','s');
 insert into inscriptos values ('24444444',3,'2006','n');

--6- Inscriba a un mismo socio en el mismo deporte en distintos años:
 insert into inscriptos values ('22222222',3,'2005','s');
 insert into inscriptos values ('22222222',3,'2007','n');

--7- Inscriba a un mismo socio en distintos deportes el mismo año:
 insert into inscriptos values ('24444444',1,'2006','s');
 insert into inscriptos values ('24444444',2,'2006','s');




 8- Ingrese una inscripción con un código de deporte inexistente y un documento de socio que no 
exista en "socios":


insert into inscriptos values ('26666666',0,'2006','s');


-- 9- Muestre el nombre del socio, el nombre del deporte en que se inscribió y el año empleando 
-- diferentes tipos de join

select s.nombre,d.nombre,anio 
from socios s 
join inscriptos i on (s.documento = i.documento) 
join deportes d on (i.codigodeporte = d.codigo)


select s.nombre,d.nombre,anio 
from socios s 
right join inscriptos i on (s.documento = i.documento) 
left join deportes d on (i.codigodeporte = d.codigo)


-- 10- Muestre todos los datos de las inscripciones (excepto los códigos) incluyendo aquellas 
-- inscripciones cuyo código de deporte no existe en "deportes" y cuyo documento de socio no se 
-- encuentra en "socios".

select s.nombre,d.nombre,anio,matricula 
from inscriptos i
full join deportes d on (codigodeporte = d.codigo) 
full join socios s on (i.documento = s.documento)

select s.nombre,d.nombre,anio,matricula
  from deportes as d
  full join inscriptos as i
  on codigodeporte=d.codigo
  full join socios as s
  on s.documento=i.documento;

--- 11- Muestre todas las inscripciones del socio con documento "22222222".

select s.documento,s.nombre,d.nombre deporte, anio
from socios s
join inscriptos i on (s.documento=i.documento)
join deportes d on (i.codigodeporte=d.codigo)
where s.documento = '22222222'



--------------------------------------74 - Combinaciones con update y delete --------------------------------------

 if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial tinyint not null,
  precio decimal(5,2)
 );
 create table editoriales(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
);


insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Siglo XXI');

 insert into libros values('El aleph','Borges',2,20);
 insert into libros values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros values('Aprenda PHP','Mario Molina',3,50);
 insert into libros values('Java en 10 minutos',default,3,45);

 -- aumentamos en un 10% los precios de los libros de cierta editorial, necesitamos un "join" 
 -- para localizar los registros de la editorial "Planeta" en la tabla "libros":

update libros set precio = precio + (precio * 0.10)
from editoriales e
join libros  on (e.codigo=codigoeditorial) 
where nombre = 'Planeta'



-- Eliminamos todos los libros de editorial "Siglo XXI":

delete libros  
from libros
join editoriales e on (e.codigo=codigoeditorial)
where e.nombre = 'Planeta'

select * from libros 
select * from editoriales 

select * from libros
join editoriales e on (e.codigo=codigoeditorial)
where e.nombre = 'Siglo XXI'

------------------------------------------------76 - Restricciones (foreign key) -------------------------------------------------


 if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;


  create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint
 );
 create table editoriales(
  codigo tinyint,
  nombre varchar(20),
  primary key (codigo)
);


 insert into editoriales values(1,'Emece');
 insert into editoriales values(2,'Planeta');
 insert into editoriales values(3,'Siglo XXI');

 insert into libros values('El aleph','Borges',1);
 insert into libros values('Martin Fierro','Jose Hernandez',2);
 insert into libros values('Aprenda PHP','Mario Molina',2);


 -- Agregamos una restricción "foreign key" a la tabla "libros":

ALTER TABLE libros  -- ombre de la tabla a la cual le aplicamos la restricción.
add constraint FK_libros_codigoeditorial    -- es el nombre que le damos a la misma,
foreign key (codigoeditorial) --  entre paréntesis se coloca el campo de la tabla a la que le aplicamos la restricción que será establecida como clave foránea,
references editoriales(codigo)  -- aqui se coloca la tabla y el campo al que es referenciado siempre este campo siempre es clave primaria.


alter table libros
add constraint FK_libros_codigoeditorial
foreign key (codigoeditorial)
references editoriales(codigo)


insert into libros default values 


select * from libros 
select * from editoriales



-------------------------------------------------- Primer problema:  ----------------------------------------------------------


 if object_id('clientes') is not null
  drop table clientes;
 if object_id('provincias') is not null
  drop table provincias;


  create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint
 );

 create table provincias(
  codigo tinyint not null,
  nombre varchar(20)
 );



 -- 2- Intente agregar una restricción "foreign key" a la tabla "clientes" que haga referencia al 
 -- campo "codigo" de "provincias":


 alter table clientes 
 add constraint FK_clientes_codigoprovincia
 foreign key (codigoprovincia)
 references provincias(codigo)



 -- 3- Establezca una restricción "primary key" al campo "codigo" de "provincias":

alter table provincias
add constraint PK_provincias_codigo
primary key (codigo)


--4- Ingrese algunos registros para ambas tablas:

 insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Misiones');
 insert into provincias values(4,'Rio Negro');

 insert into clientes values('Perez Juan','San Martin 123','Carlos Paz',1);
 insert into clientes values('Moreno Marcos','Colon 234','Rosario',2);
 insert into clientes values('Acosta Ana','Avellaneda 333','Posadas',3);
 insert into clientes values('Luisa Lopez','Juarez 555','La Plata',4);


--  5- Intente agregar la restricción "foreign key" del punto 2 a la tabla "clientes":

alter table clientes
add constraint PK_clientes_codigoprovincia
foreign key (codigoprovincia)
references provincias(codigo)


-- 6- Elimine el registro de "clientes" que no cumple con la restricción y establezca 
-- la restricción  nuevamente:


delete from clientes where codigoprovincia = 6


alter table clientes 
add constraint PK_clientes_codigoprovincia
foreign key (codigoprovincia)
references provincias(codigo)



-- 7- Intente agregar un cliente con un código de provincia inexistente en "provincias".

insert into clientes values ('wefwefwe','wefwef','ewfew',7)


-- 8- Intente eliminar el registro con código 3, de "provincias".
-- No se puede porque hay registros en "clientes" al cual hace referencia.


delete provincias where codigo = 3


-- 9- Elimine el registro con código "4" de "provincias".
-- Se permite porque en "clientes" ningún registro hace referencia a él.


delete provincias where codigo = 4


-- 10- Intente modificar el registro con código 1, de "provincias".
-- No se puede porque hay registros en "clientes" al cual hace referencia.


update provincias set codigo = 88 where codigo = 1


sp_helpconstraint clientes
sp_helpconstraint provincias


------------------------------------------- 77 - Restricciones foreign key en la misma tabla --------------------------------------------

 if object_id('afiliados') is not null
  drop table afiliados;


  create table afiliados(
  numero int identity not null,
  documento char(8) not null,
  nombre varchar(30),
  afiliadotitular int,
  primary key (documento),
  unique (numero)
 );
  

  -- Establecemos una restricción "foreign key" para asegurarnos que el número de 
  --afiliado que se ingrese en el campo "afiliadotitular" exista en la tabla 
  --"afiliados":

alter table afiliados 
add constraint FK_afiliados_afiliadotitular
foreign key (afiliadotitular)
references afiliados(numero)


 insert into afiliados values('22222222','Perez Juan',null);
 insert into afiliados values('23333333','Garcia Maria',null);
 insert into afiliados values('24444444','Lopez Susana',null);
 insert into afiliados values('30000000','Perez Marcela',1);
 insert into afiliados values('31111111','Morales Luis',1);
 insert into afiliados values('32222222','Garcia Maria',2);


 delete from afiliados where numero = 5

------------------------------------------------------------------- Primer problema: -----------------------------------------------------------------


if object_id('clientes') is not null
  drop table clientes;

 create table clientes(
  codigo int not null,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  referenciadopor int,
  primary key(codigo)
 );


 insert into clientes values (50,'Juan Perez','Sucre 123','Cordoba',null);
 insert into clientes values(90,'Marta Juarez','Colon 345','Carlos Paz',null);
 insert into clientes values(110,'Fabian Torres','San Martin 987','Cordoba',50);
 insert into clientes values(125,'Susana Garcia','Colon 122','Carlos Paz',90);
 insert into clientes values(140,'Ana Herrero','Colon 890','Carlos Paz',9);


 --3- Intente agregar una restricción "foreign key" para evitar que en el campo "referenciadopor" se 
--ingrese un valor de código de cliente que no exista.
--No se permite porque existe un registro que no cumple con la restricción que se intenta establecer.

alter table clientes
  add constraint FK_clientes_referenciadopor
  foreign key (referenciadopor)
  references clientes (codigo);


-- 4- Cambie el valor inválido de "referenciadopor" del registro que viola la restricción por uno 
--válido.

 update clientes set referenciadopor=90 where referenciadopor=9;

--5- Agregue la restricción "foreign key" que intentó agregar en el punto 3.

 alter table clientes
  add constraint FK_clientes_referenciadopor
  foreign key (referenciadopor)
  references clientes (codigo);


---6- Vea la información referente a las restricciones de la tabla "clientes".

sp_helpconstraint clientes;

--7- Intente agregar un registro que infrinja la restricción.
--No lo permite.

insert into clientes values(150,'Karina Gomez','Caseros 444','Cruz del Eje',8);

--8- Intente modificar el código de un cliente que está referenciado en "referenciadopor".
--No se puede.

update clientes set codigo=180 where codigo=90;

--9- Intente eliminar un cliente que sea referenciado por otro en "referenciadopor".
--No se puede.

 delete from clientes where nombre='Marta Juarez';

--10- Cambie el valor de código de un cliente que no referenció a nadie.

 update clientes set codigo=180 where codigo=125;

--11- Elimine un cliente que no haya referenciado a otros.

delete from clientes where codigo=110;


------------------------------------- 78 - Restricciones foreign key (acciones) --------------------------------

 if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;


   create table libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint,
  primary key (codigo)
 );
 create table editoriales(
  codigo tinyint not null,
  nombre varchar(20),
  primary key (codigo)
);


 insert into editoriales values(1,'Emece');
 insert into editoriales values(2,'Planeta');
 insert into editoriales values(3,'Siglo XXI');

 insert into libros values(1,'El aleph','Borges',1);
 insert into libros values(2,'Martin Fierro','Jose Hernandez',2);
 insert into libros values(3,'Aprenda PHP','Mario Molina',2);

 
 -- Establecemos una restricción "foreign key" para evitar que se 
 -- ingrese en "libros" un código de editorial inexistente en "editoriales" 
 --con la opción "on cascade" para actualizaciones y eliminaciones:

 alter table libros 
 add constraint FK_libros_codigoeditorial 
 foreign key (codigoeditorial)
 references editoriales(codigo)
 on delete cascade
 on update cascade 

 sp_helpconstraint libros 

 --Si actualizamos un valor de código de "editoriales", la modificación se
 -- extiende a todos los registros de la tabla "libros" que hacen referencia
 -- a ella en "codigoeditorial":

 update editoriales set codigo = 5 where codigo = 1

 -- Veamos si la actualización se extendió a "libros":

 select titulo,autor,e.codigo,nombre from libros l
 join editoriales e on (codigoeditorial = e.codigo) 

 -- Si eliminamos una editorial, se borra tal editorial de "editoriales" y 
 -- todos los registros de "libros" de dicha editorial:

delete from editoriales where codigo = 2



------------------------------------------ Primer problema: -------------------------------------

if object_id('clientes') is not null
  drop table clientes;
 if object_id('provincias') is not null
  drop table provincias;


  create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint,
  nombre varchar(20),
  primary key (codigo)
 );


  insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Misiones');
 insert into provincias values(4,'Rio Negro');

 insert into clientes values('Perez Juan','San Martin 123','Carlos Paz',1);
 insert into clientes values('Moreno Marcos','Colon 234','Rosario',2);
 insert into clientes values('Acosta Ana','Avellaneda 333','Posadas',3);


-- 4- Establezca una restricción "foreign key" especificando la acción "en cascade" para 
--actualizaciones y "no_action" para eliminaciones.

alter table clientes 
add constraint FK_clientes_provincias
foreign key (codigoprovincia)
references provincias(codigo)
on update cascade



-- 5- Intente eliminar el registro con código 3, de "provincias".

delete provincias where codigo = 3 


-- 6- Modifique el registro con código 3, de "provincias".

update provincias set codigo = 10 where codigo = 3

-- 7- Verifique que el cambio se realizó en cascada, es decir, que se modificó en la 
--tabla "provincias" y en "clientes":

 select *from provincias;
 select *from clientes;


-- 8- Intente modificar la restricción "foreign key" para que permita eliminación en cascada. 
--Mensaje de error, no se pueden modificar las restricciones.


alter table clientes 
add constraint FK_clientes_provincias
foreign key (codigoprovincia)
references provincias(codigo)
on delete cascade
on update cascade 

-- 9- Intente eliminar la tabla "provincias".
-- No se puede eliminar porque una restricción "foreign key" hace referencia a ella.

delete from provincias
drop table provincias 


----------------------------------------- Segundo problema: -----------------------------------------------------


 if object_id('inscripciones') is not null
  drop table inscripciones;
 if object_id('deportes') is not null
  drop table deportes;
 if object_id('socios') is not null
  drop table socios;


  create table deportes(
  codigo tinyint,
  nombre varchar(20),
  primary key(codigo)
 );

 create table socios(
  documento char(8),
  nombre varchar(30),
  primary key(documento)
 );

 create table inscripciones(
  documento char(8), 
  codigodeporte tinyint,
  matricula char(1),-- 's' si está paga, 'n' si no está paga
  primary key(documento,codigodeporte)
 );


-- 3- Establezca una restricción "foreign key" para "inscripciones" que haga referencia al campo 
-- "codigo" de "deportes" que permita la actualización en cascada:

alter table inscripciones 
add constraint FK_inscripciones_deportes
foreign key (codigodeporte)
references deportes(codigo)
on update cascade 


-- 4- Establezca una restricción "foreign key" para "inscripciones" que haga referencia al campo 
-- "documento" de "socios" que permita la eliminación en cascada (Recuerde que se pueden establecer 
--varias retricciones "foreign key" a una tabla):

alter table inscripciones 
add constraint FK_inscripciones_socios
foreign key (documento)
references socios(documento)
on delete cascade 


 insert into deportes values(1,'basquet');
 insert into deportes values(2,'futbol');
 insert into deportes values(3,'natacion');
 insert into deportes values(4,'tenis');

 insert into socios values('30000111','Juan Lopez');
 insert into socios values('31111222','Ana Garcia');
 insert into socios values('32222333','Mario Molina');
 insert into socios values('33333444','Julieta Herrero');

 insert into inscripciones values ('30000111',1,'s');
 insert into inscripciones values ('30000111',2,'s');
 insert into inscripciones values ('31111222',1,'s');
 insert into inscripciones values ('32222333',3,'n');

 -- 6- Intente ingresar una inscripción con un código de deporte inexistente:

 insert into inscripciones values ('30000111',10,'s')

 -- 7- Intente ingresar una inscripción con un documento inexistente en "socios":

 insert into inscripciones values ('12345678',4,'s')


 -- 8- Elimine un registro de "deportes" que no tenga inscriptos:

 delete from deportes where codigo = 4


 -- 9- Intente eliminar un deporte para los cuales haya inscriptos:

 delete from deportes where codigo = 3


 -- 10- Modifique el código de un deporte para los cuales haya inscriptos.
-- La opción para actualizaciones se estableció en cascada, se modifica el código en "deportes" y en 
-- "inscripciones".

update deportes set codigo = 10 where codigo = 2


-- 12- Elimine el socio que esté inscripto en algún deporte.

delete from socios where nombre = 'Ana Garcia'


-- 14- Modifique el documento de un socio que esté inscripto.

update socios set documento = '12345678' where nombre = 'Mario Molina'


-- 15- Intente eliminar la tabla "deportes":

drop table deportes 

-- 16- Vea las restricciones de la tabla "socios":
 sp_helpconstraint socios;


-- 17- Vea las restricciones de la tabla "deportes":
 sp_helpconstraint deportes;


--18- Vea las restricciones de la tabla "inscripciones":
 sp_helpconstraint inscripciones;



-------------------------------------------- 79 - Restricciones foreign key deshabilitar y eliminar (with check - nocheck) ---------------------------------------------------------

if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;


   create table libros(
  codigo int not null,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint,
  primary key (codigo)
 );
 create table editoriales(
  codigo tinyint not null,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into editoriales values(1,'Planeta');
 insert into editoriales values(2,'Emece');
 insert into editoriales values(3,'Paidos');

 insert into libros values(1,'Uno','Richard Bach',1);
 insert into libros values(2,'El aleph','Borges',2);
 insert into libros values(3,'Aprenda PHP','Mario Molina',5);


 -- Agregamos una restricción "foreign key" a la tabla "libros" para evitar que se ingresen 
 --códigos de editoriales inexistentes en "editoriales". Incluimos la opción "with nocheck"
 -- para evitar la comprobación de la restricción en los datos existentes 
 --(note que hay un libro que tiene un código de editorial inválido):


 alter table libros 
 with Nocheck
 add constraint FK_libros_editoriales
 foreign key (codigoeditorial)
 references editoriales(codigo)

 -- Para poder ingresar, modificar o eliminar datos a una tabla sin que SQL Server 
 --compruebe la restricción debemos deshabilitarla:

 alter table libros
 nocheck constraint FK_libros_editoriales

 -- Ahora podemos ingresar un registro en "libros" con código inválido:

 insert into libros values (4,'ZZZZ','XXXX',10);


 -- También podemos modificar:

 update libros set codigoeditorial = 66 where titulo = 'Uno'


-- También realizar eliminaciones:

delete editoriales where codigo = 2

-- Habilitamos la restricción:

alter table libros 
check constraint FK_libros_editoriales


-- Eliminamos la restricción:

alter table libros
drop constraint FK_libros_editoriales

sp_helpconstraint libros 

sp_helpconstraint editoriales 


------------------------------------------------ Primer problema:  --------------------------------------------------------------------

 if object_id('clientes') is not null
  drop table clientes;
 if object_id('provincias') is not null
  drop table provincias;

   create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint,
  nombre varchar(20),
  primary key (codigo)
 );

  insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Misiones');
 insert into provincias values(4,'Rio Negro');

 insert into clientes values('Perez Juan','San Martin 123','Carlos Paz',1);
 insert into clientes values('Moreno Marcos','Colon 234','Rosario',2);
 insert into clientes values('Garcia Juan','Sucre 345','Cordoba',1);
 insert into clientes values('Lopez Susana','Caseros 998','Posadas',3);
 insert into clientes values('Marcelo Moreno','Peru 876','Viedma',4);
 insert into clientes values('Lopez Sergio','Avellaneda 333','La Plata',5);


 -- 4- Intente agregar una restricción "foreign key" para que los códigos de provincia de "clientes" 
-- existan en "provincias" con acción en cascada para actualizaciones y eliminaciones, sin especificar 
-- la opción de comprobación de datos:

alter table clientes
add constraint FK_clientes_provincias
foreign key (codigoprovincia)
references provincias(codigo)
on update cascade
on delete cascade


-- 5- Agregue la restricción anterior pero deshabilitando la comprobación de datos existentes:

alter table clientes
with nocheck
add constraint FK_clientes_provincias
foreign key (codigoprovincia) 
references provincias(codigo)
on delete cascade
on update cascade


-- 6- Vea las restricciones de "clientes":

sp_helpconstraint clientes

-- 7- Vea las restricciones de "provincias":

sp_helpconstraint provincias 


-- 8- Deshabilite la restricción "foreign key" de "clientes":

alter table clientes 
nocheck constraint FK_clientes_provincias


-- 9- Vea las restricciones de "clientes":

sp_helpconstraint clientes 


-- 10- Vea las restricciones de "provincias":
sp_helpconstraint provincias 


-- 11- Agregue un registro que no cumpla la restricción "foreign key":

insert into clientes values ('XXX','YYY','CCC',10)


-- 12- Elimine una provincia de las cuales haya clientes:

delete from provincias where codigo = 4

--13- Corrobore que el registro se eliminó de "provincias" pero no se extendió a "clientes":

select * from provincias  
select * from clientes

-- 14- Modifique un código de provincia de la cual haya clientes:

update provincias set codigo = 66 where codigo = 3


-- 15- Verifique que el cambio se realizó en "provincias" pero no se extendió a "clientes":
 select *from clientes;
 select *from provincias;


 -- 16- Intente eliminar la tabla "provincias":

 drop table provincias 


 -- 17- Habilite la restricción "foreign key":

alter table clientes 
check constraint FK_clientes_provincias


-- 18- Intente agregar un cliente con código de provincia inexistente en "provincias":

insert into clientes values ('RRRR','SSSS','TTTT',222)


-- 19- Modifique un código de provincia al cual se haga referencia en "clientes":

update provincias set codigo = 88 where codigo = 1 


-- 20- Vea que se modificaron en ambas tablas:

select * from provincias  
select * from clientes

-- 21- Elimine una provincia de la cual haya referencia en "clientes":

delete from provincias where codigo = 2


-- 22- Vea que los registros de ambas tablas se eliminaron:

select *from clientes;
 select *from provincias;


-- 23- Elimine la restriccion "foreign key":

alter table clientes
drop constraint FK_clientes_provincias


-- 24- Vea las restriciones de la tabla "provincias":

 sp_helpconstraint provincias;


 -- 25- Elimine la tabla "provincias":

drop table provincias 


------------------------------------------- 80 - Restricciones foreign key (información) --------------------------------------------------------

-- NO hay ejercicios 


-------------------------------------- 81 - Restricciones al crear la tabla ----------------------------------------------------

 if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;
 if object_id('autores') is not null
  drop table autores;


-- Creamos la tabla "editoriales" con una restricción "primary key":

create table editoriales
(
codigo int not null,
nombre varchar(50) not null,
constraint PK_editoriales_codigo primary key (codigo)
);


-- Creamos la tabla "autores" con una restricción "primary key", 
--una "unique" y una "check":

create table autores
(
  codigo int not null,
  nombre varchar(50),
  constraint PK_autores_codigo primary key (codigo),
  constraint UQ_autores_nombre unique (nombre),
  constraint CK_autores_codigoPositivo check (codigo >= 0),

)


-- Aplicamos varias restricciones cuando creamos la tabla "libros":

create table libros (
codigo int not null,
titulo varchar(50),
codigoautor int not null,
codigoeditorial int not null,
precio decimal(5,2)
constraint DF_libros_precio default 0,
constraint PK_libros_codigo primary key clustered (codigo) ,
constraint UQ_libros_tituloautor unique(titulo,codigoautor),
constraint FK_libros_autores foreign key (codigoautor) references autores(codigo) on update cascade,
constraint FK_libros_editoriales foreign key (codigoeditorial) references editoriales(codigo) on update cascade,
constraint CK_libros_precio check (precio>=0)
)

-- Veamos las restricciones de "editoriales":

sp_helpconstraint editoriales 

sp_helpconstraint autores 

sp_helpconstraint libros 


----------------------------------------------- Primer problema:  ----------------------------------------------------------------

if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;
 if object_id('profesores') is not null
  drop table profesores;
 if object_id('deportes') is not null
  drop table deportes;


/* 2- Considere que:
- un socio puede inscribirse en varios deportes, pero no dos veces en el mismo.
- un socio tiene un documento único y un número de socio único.
- el documento del socio debe contener 8 dígitos.
- un deporte debe tener asignado un profesor que exista en "profesores" o "null" si aún no tiene un 
instructor definido.
- el campo "dia" de "deportes" puede ser: lunes, martes, miercoles, jueves, viernes o sabado.
- el campo "dia" de "deportes" por defecto debe almacenar 'sabado'.
- un profesor puede ser instructor de varios deportes o puede no dictar ningún deporte.
- un profesor no puede estar repetido en "profesores".
- el documento del profesor debe contener 8 dígitos.
- un inscripto debe ser socio, un socio puede no estar inscripto en ningún deporte.
- una inscripción debe tener un valor en socio existente en "socios" y un deporte que exista en 
"deportes".
- el campo 
*/


-- 3- Cree las tablas con las restricciones necesarias:

create table socios
(
documento varchar(8) not null,
numero varchar(10) not null,
nombre varchar(40),
domicilio varchar(60),
constraint PK_socios_documento primary key nonclustered(numero),
constraint UQ_socios_numero unique clustered(documento),
constraint CK_socios_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
)

create table profesores
(
documento varchar(8) not null,
nombre varchar(30),
domicilio varchar(30)
constraint PK_profesores primary key(documento),
constraint CK_profesores check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
)

create table deportes
(
codigo int identity,
nombre varchar(50),
dia varchar(20)
constraint DF_deportes_dia default 'sabado' ,
documentoprofesor varchar(8)
constraint PK_deportes_codigo primary key (codigo),
constraint CK_deportes_dia check (dia in ('lunes','martes','miercoles','jueves','viernes','sabado','domingo')),
constraint FK_deportes_profesores foreign key (documentoprofesor) references profesores(documento)
)

create table inscriptos
(
numerosocio varchar(10),
codigodeporte int ,
matricula char(1),
constraint PK_inscriptos primary key clustered(numerosocio,codigodeporte),
constraint FK_inscriptos_deportes foreign key (codigodeporte) references deportes(codigo) on update cascade,
constraint FK_inscriptos_socios foreign key(numerosocio) references socios(numero) on update cascade on delete  cascade,
constraint CK_inscriptos_matricula check (matricula in('s','n'))
)


--4- Ingrese registros en "profesores":
 insert into profesores values('21111111','Andres Acosta','Avellaneda 111');
 insert into profesores values('22222222','Betina Bustos','Bulnes 222');
 insert into profesores values('23333333','Carlos Caseros','Colon 333');

--5- Ingrese registros en "deportes". Ingrese el mismo día para distintos deportes, un deporte sin día 
--confirmado, un deporte sin profesor definido:
 insert into deportes values('basquet','lunes',null);
 insert into deportes values('futbol','lunes','23333333');
 insert into deportes values('natacion',null,'22222222');
 insert into deportes values('padle',default,'23333333');
 insert into deportes (nombre,dia) values('tenis','jueves');

--6- Ingrese registros en "socios":
 insert into socios values('30111111','Ana Acosta','America 111');
 insert into socios values('30222222','Bernardo Bueno','Bolivia 222');
 insert into socios values('30333333','Camila Conte','Caseros 333');
 insert into socios values('30444444','Daniel Duarte','Dinamarca 444');

--7- Ingrese registros en "inscriptos". Inscriba a un socio en distintos deportes, inscriba varios 
--socios en el mismo deporte.
 insert into inscriptos values(1,3,'s');
 insert into inscriptos values(1,5,'s');
 insert into inscriptos values(2,1,'s');
 insert into inscriptos values(4,1,'n');
 insert into inscriptos values(4,4,'s');

 /*8- Realice un "join" (del tipo que sea necesario) para mostrar 
 todos los datos del socio junto con 
el nombre de los deportes en los cuales está inscripto, el día 
que tiene que asistir y el nombre del 
profesor que lo instruirá.
5 registros. */

select s.nombre,d.nombre,d.dia,p.nombre from socios s
left join inscriptos i on (s.numero = i.numerosocio)
join deportes d on (i.codigodeporte = d.codigo)
left join profesores p on (d.documentoprofesor = p.documento)


/*9- Realice la misma consulta anterior pero incluya los socios que no están
 inscriptos en ningún 
deporte.
6 registros.
*/

select s.nombre as socio, d.nombre as deporte, d.dia, p.nombre 
from inscriptos i
full join socios s on (i.numerosocio = s.numero)
join deportes d on (i.codigodeporte = d.codigo)
full join profesores p on (d.documentoprofesor = p.documento)


/*10- Muestre todos los datos de los profesores, incluido el deporte que 
dicta y el día, incluyendo 
los profesores que no tienen asignado ningún deporte.
4 registros.
*/ 

select p.documento, p.nombre, p.domicilio , d.nombre, d.dia 
from profesores p
left join deportes d on (documento = documentoprofesor)


/*
11- Muestre todos los deportes y la cantidad de inscriptos, incluyendo 
aquellos deportes para los 
cuales no hay inscriptos.
5 registros.
*/


select d.nombre, count(codigodeporte) as 'Total de inscriptos' from deportes d
left join inscriptos i on (codigodeporte = codigo)
group by d.nombre 


/*
12- Muestre las restricciones de "socios".
3 restricciones y 1 "foreign key" de "inscriptos" que la referencia.
*/

sp_helpconstraint socios 

--13- Muestre las restricciones de "deportes".
--3 restricciones y 1 "foreign key" de "inscriptos" que la referencia.

sp_helpconstraint deportes 

--14- Muestre las restricciones de "profesores".
--2 restricciones.

sp_helpconstraint profesores

--15- Muestre las restricciones de "inscriptos".
--4 restricciones.

sp_helpconstraint inscriptos

------------------------------------------------- 82 - Unión ------------------------------------------------------------------

 if object_id('alumnos') is not null
  drop table alumnos;
 if object_id('profesores') is not null
  drop table profesores;

 
  create table profesores(
  documento varchar(8) not null,
  nombre varchar (30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table alumnos(
  documento varchar(8) not null,
  nombre varchar (30),
  domicilio varchar(30),
  primary key(documento)
 );


 insert into alumnos values('30000000','Juan Perez','Colon 123');
 insert into alumnos values('30111111','Marta Morales','Caseros 222');
 insert into alumnos values('30222222','Laura Torres','San Martin 987');
 insert into alumnos values('30333333','Mariano Juarez','Avellaneda 34');
 insert into alumnos values('23333333','Federico Lopez','Colon 987');
 insert into profesores values('22222222','Susana Molina','Sucre 345');
 insert into profesores values('23333333','Federico Lopez','Colon 987');


--La academia necesita el nombre y domicilio de profesores y alumnos para enviarles una tarjeta de invitación.
--Empleamos el operador "union" para obtener dicha información de ambas tablas:

select nombre,domicilio from alumnos
union 
select nombre,domicilio from profesores

--Note que existe un profesor que también está presente en la tabla "alumnos";
-- dicho registro aparece una sola vez en el resultado de "union". 
-- Si queremos que las filas duplicadas aparezcan, debemos emplear "all":

select nombre,domicilio from alumnos
union all
select nombre,domicilio from profesores

-- Ordenamos por domicilio:

select nombre,domicilio from alumnos
union all
select nombre,domicilio from profesores 
order by domicilio


--Podemos agregar una columna extra a la consulta con el encabezado "condicion"
-- en la que aparezca el literal "profesor" o "alumno" según si la persona es
--  uno u otro:

select nombre,domicilio, 'alumno' as condicion from alumnos
union all 
select nombre,domicilio, 'profesor' as condicion from profesores
order by condicion

-------------------------------------------------- Primer problema:  -----------------------------------------------------

if object_id('clientes') is not null
  drop table clientes;
 if object_id('proveedores') is not null
  drop table proveedores;
 if object_id('empleados') is not null
  drop table empleados;


   create table proveedores(
  codigo int identity,
  nombre varchar (30),
  domicilio varchar(30),
  primary key(codigo)
 );
 create table clientes(
  codigo int identity,
  nombre varchar (30),
  domicilio varchar(30),
  primary key(codigo)
 );
 create table empleados(
  documento char(8) not null,
  nombre varchar(20),
  apellido varchar(20),
  domicilio varchar(30),
  primary key(documento)
 );


  insert into proveedores values('Bebida cola','Colon 123');
 insert into proveedores values('Carnes Unica','Caseros 222');
 insert into proveedores values('Lacteos Blanca','San Martin 987');
 insert into clientes values('Supermercado Lopez','Avellaneda 34');
 insert into clientes values('Almacen Anita','Colon 987');
 insert into clientes values('Garcia Juan','Sucre 345');
 insert into empleados values('23333333','Federico','Lopez','Colon 987');
 insert into empleados values('28888888','Ana','Marquez','Sucre 333');
 insert into empleados values('30111111','Luis','Perez','Caseros 956');


---- 4- El supermercado quiere enviar una tarjeta de salutación a todos los 
--proveedores, clientes y 
----empleados y necesita el nombre y domicilio de todos ellos. Emplee el operador 
--"union" para obtener 
----dicha información de las tres tablas.

select nombre,domicilio from proveedores
union 
select nombre,domicilio from clientes
union
select nombre,domicilio from empleados



-- 5- Agregue una columna con un literal para indicar si es un proveedor, 
--un cliente o un empleado y 
--ordene por dicha columna.

select nombre,domicilio, 'proveedor' as persona from proveedores 
union
select nombre,domicilio, 'cliente' as persona from clientes 
union
select nombre,domicilio, 'empleado' as persona from empleados
order by persona



------------------------------------------ 83 - Agregar y eliminar campos ( alter table - add - drop)--------------------------------------------------------------

if object_id('libros') is not null
  drop table libros;

   create table libros(
  titulo varchar(30),
  editorial varchar(15),
  edicion datetime,
  precio decimal(6,2)
 );


  insert into libros (titulo,editorial,precio)
  values ('El aleph','Emece',25.50);


  -- Agregamos el campo "cantidad" a la tabla "libros", de tipo tinyint, que acepta valores 
  --nulos:


 alter table libros 
 add cantidad tinyint 


 --Verificamos la estructura de la tabla empleando el procedimiento almacenado "sp_columns":

sp_columns libros 


-- Agregamos un campo "codigo" a la tabla "libros", de tipo int con el atributo "identity":

alter table libros
add codigo int identity


-- Intentamos agregar un campo llamado "autor" de tipo varchar(30) que NO acepte valores nulos:

alter table libros 
add autor varchar(30) not null


-- Intentamos agregar un campo llamado "autor" de tipo varchar(30) que 
-- NO acepte valores nulos y que tenga valor por default :


alter table libros
add autor varchar(30) not null default 'Desconocido'

sp_helpconstraint libros 


-- En el siguiente ejemplo eliminamos el campo "precio" de la tabla "libros":

alter table libros 
drop column precio 


sp_columns libros 

-- Recuerde que no pueden eliminarse los campos con restricciones, intentémoslo:

alter table libros
drop column autor 


-- Podemos eliminar varios campos en una sola sentencia:

alter table libros
drop column editorial,edicion


------------------------------------------------ Primer problema:  -----------------------------------------------------------

 if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  fechaingreso datetime
 );

  insert into empleados(apellido,nombre) values ('Rodriguez','Pablo');

-- 2- Agregue el campo "sueldo", de tipo decimal(5,2).

alter table empleados
add sueldo decimal(5,2) 


-- 3- Verifique que la estructura de la tabla ha cambiado.

sp_columns empleados 


-- 4- Agregue un campo "codigo", de tipo int con el atributo "identity".

alter table empleados
add codigo int identity 


-- 5- Intente agregar un campo "documento" no nulo.
--No es posible, porque SQL Server no permite agregar campos "not null" a menos que se especifique un 
--valor por defecto.

alter table empleados 
add documento varchar(10) not null


---6- Agregue el campo del punto anterior especificando un valor por defecto:

alter table empleados
add documento char(8) not null default '00000000'


-- 7- Verifique que la estructura de la tabla ha cambiado.

sp_columns empleados 


-- 8- Elimine el campo "sueldo".

alter table empleados
drop column sueldo 

--9- Verifique la eliminación:
 sp_columns empleados;


 -- 10- Intente eliminar el campo "documento".
 -- no lo permite.


alter table empleados 
drop column documento


-- 11- Elimine los campos "codigo" y "fechaingreso" en una sola sentencia.

alter table empleados
drop column codigo,fechaingreso


--12- Verifique la eliminación de los campos:

select * from empleados 

sp_helpconstraint empleados 



------------------------------------------------ 84 - Alterar campos (alter table - alter)------------------------------------------------------------

 if object_id('libros') is not null
  drop table libros;


  create table libros(
  codigo int identity,
  titulo varchar(30),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(6,2) not null default 0
 );


  insert into libros
  values('El aleph','Borges','Planeta',20);
 insert into libros
  values('Java en 10 minutos',null,'Siglo XXI',30);
 insert into libros
  values('Uno','Richard Bach','Planeta',15);
 insert into libros
  values('Martin Fierro','Jose Hernandez',null,30);
 insert into libros
  values('Aprenda PHP','Mario Molina','Emece',25);


--Modificamos el campo "titulo" para que acepte una cadena más larga y no admita valores nulos:

alter table libros
alter column titulo varchar(60) not null

-- Si intentamos modificar el campo "autor" para que no admita valores nulos SQL Server no 
--lo permite porque hay registros con valor nulo en "autor".

alter table libros 
alter column autor varchar(30) not null


-- Eliminamos tal registro y realizamos la modificación:

delete from libros where autor is null

alter table libros 
alter column autor varchar(30) not null


-- Intentamos quitar el atributo "identity" del campo "codigo" y lo redefinimos como "smallint":

alter table libros
alter column codigo smallint

-- No aparece mensaje de error pero no se realizó el cambio completo, controlémoslo:

 sp_columns libros;


 alter table libros
 alter column precio decimal(6,2) null



 ----------------------------------------------------- Primer problema: ------------------------------------------------------

  if object_id('empleados') is not null
  drop table empleados;


  create table empleados(
  legajo int not null,
  documento char(7) not null,
  nombre varchar(10),
  domicilio varchar(30),
  ciudad varchar(20) default 'Buenos Aires',
  sueldo decimal(6,2),
  cantidadhijos tinyint default 0,
  primary key(legajo)
 );


 -- 2- Modifique el campo "nombre" extendiendo su longitud.

 alter table empleados
 alter column nombre varchar(50)


-- 3- Controle la modificación:

 sp_columns empleados


 -- 4- Modifique el campo "sueldo" para que no admita valores nulos.

 alter table empleados
 alter column sueldo decimal(6,2)  not null


-- 4- Modifique el campo "documento" ampliando su longitud a 8 caracteres.

alter table empleados
alter column documento char(8) not null


-- 5- Intente modificar el tipo de datos del campo "legajo" a "tinyint":

alter table empleados
alter column legajo tinyint not null

-- 6- Ingrese algunos registros, uno con "nombre" nulo:

 insert into empleados values(1,'22222222','Juan Perez','Colon 123','Cordoba',500,3);
 insert into empleados values(2,'30000000',null,'Sucre 456','Cordoba',600,2);


 -- 7- Intente modificar el campo "nombre" para que no acepte valores nulos:

alter table empleados
alter column nombre varchar(50) not null


-- 8- Elimine el registro con "nombre" nulo y realice la modificación del punto 7:

delete from empleados where nombre is null 

alter table empleados 
alter column nombre varchar(50) not null



-- 9- Modifique el campo "ciudad" a 10 caracteres.

alter table empleados 
alter column ciudad varchar(10) 

-- 10- Intente agregar un registro con el valor por defecto para "ciudad":

insert into empleados values (2,'123456','fsdfwef','fwefwfe',default,434,2)


-- 11- Modifique el campo "ciudad" sin que afecte la restricción dándole una 
--longitud de 15 caracteres.

alter table empleados 
alter column ciudad varchar(15)  null


-- 12- Agregue el registro que no pudo ingresar en el punto 10:

 insert into empleados values(3,'33333333','Juan Perez','Sarmiento 856',default,500,4);


 -- 13- Intente agregar el atributo identity de "legajo".

 alter table empleados 
 alter column nombre int 


 ------------------------------------------- 85 - Agregar campos y restricciones (alter table) --------------------------------------------------

  if object_id('libros') is not null
  drop table libros;

  create table libros(
  autor varchar(30),
  editorial varchar(15)
 );


 -- Agregamos el campo "titulo" de tipo varchar(30) y una restricción "unique" con índice agrupado:

 alter table libros
 add titulo varchar(30) 
 constraint UQ_libros_titulo unique clustered 


 --Veamos si la estructura cambió:

 sp_columns libros;


 ---- Agregamos el campo "codigo" de tipo int identity not null y en la misma 
 --sentencia una restricción "primary key" con índice no agrupado:

 alter table libros
 add codigo int identity not null
 constraint PK_libros_codigo primary key nonclustered


 -- Agregamos el campo "precio" de tipo decimal(6,2) y una restricción "check" 
 --que no permita valores negativos para dicho campo:


 alter table libros
 add precio decimal(6,2) 
 constraint CK_libros_precioPositivo check (precio>=0)


 --------------------------------------------------- Primer problema:  -------------------------------------------------------------

  if object_id('empleados') is not null
  drop table empleados;


  create table empleados(
  documento char(8) not null,
  nombre varchar(10),
  domicilio varchar(30),
  ciudad varchar(20) default 'Buenos Aires'
 );


 -- 2- Agregue el campo "legajo" de tipo int identity y una restricción 
 --"primary key":

 alter table empleados 
 add legajo int identity 
 constraint PK_empleados_legajo primary key

 -- 3- Vea si la estructura cambió y si se agregó la restricción:

 sp_helpconstraint empleados 


 -- 4- Agregue el campo "hijos" de tipo tinyint y en la misma sentencia una 
 --restricción "check" que no 
--permita valores menores o iguales a 30:

alter table empleados
add hijos tinyint not null
constraint CK_empleados_hijosValidacion check(hijos <=3)


--5- Ingrese algunos registros:

 insert into empleados values('22222222','Juan Lopez','Colon 123','Cordoba',2);
 insert into empleados values('23333333','Ana Garcia','Sucre 435','Cordoba',3);


 -- 6- Intente agregar el campo "sueldo" de tipo decimal(6,2) no nulo y una 
 --restricción "check" que no 
-- permita valores negativos para dicho campo:

--No lo permite porque no damos un valor por defecto para dicho campo no nulo y los 
--registros 
--existentes necesitan cargar un valor.

alter table empleados
add sueldo decimal(6,2) not null
constraint CK_empleados_sueldoPositivo check(sueldo>=0)


/*
7- Agregue el campo "sueldo" de tipo decimal(6,2) no nulo, una restricción 
"check" que no permita 
valores negativos para dicho campo y una restricción "default" que almacene
 el valor "0":
 */

 alter table empleados
add sueldo decimal(6,2) not null
constraint CK_empleados_sueldoPositivo check (sueldo>=0)
constraint DF_empleados_sueldo default 0


--8- Recupere los registros:

 select *from empleados;

 --9- Vea la nueva estructura de la tabla:
 sp_columns empleados;

 --10- Vea las restricciones:
 sp_helpconstraint empleados;


 -------------------------------------------------- 86 - Campos calculados-----------------------------------------------------------

  if object_id('empleados') is not null
  drop table empleados;

  create table empleados(
  documento char(8),
  nombre varchar(10),
  domicilio varchar(30),
  sueldobasico decimal(6,2),
  hijos tinyint not null default 0,
  sueldototal as sueldobasico + (hijos*100)
 );

 --El campo "sueldototal" es un campo calculado que suma al sueldo básico de 
 --cada empleado y la cantidad abonada por los hijos (100 por cada hijo).

-- No puede ingresarse valor para dicho campo:

 insert into empleados values('22222222','Juan Perez','Colon 123',300,2);
 insert into empleados values('23333333','Ana Lopez','Sucre 234',500,0);

 select * from empleados 

 --update empleados set sueldototal = 666 where documento = '22222222'
 --insert into empleados values('23333333','Ana Lopez','Sucre 234',500,0,666);

 -- Veamos lo que sucede si actualizamos un registro:

 update empleados set hijos=1 where documento='23333333';

 -- Agregamos un campo calculado:

 alter table empleados
 add salariofamiliar  as (hijos*100)


 ------------------------------------------------ Primer problema:  ------------------------------------------------------------------------------

  if object_id('articulos') is not null
  drop table articulos;

  create table articulos(
  codigo int identity,
  descripcion varchar(30),
  precio decimal(5,2) not null,
  cantidad smallint not null default 0,
  montocompra as precio*cantidad
 );


--  2- Intente ingresar un registro con valor para el campo calculado:

insert into articulos values ('AAAA',20,50,900)


-- 3- Ingrese algunos registros:
 insert into articulos values('birome',1.5,100);
 insert into articulos values('cuaderno 12 hojas',4.8,150);
 insert into articulos values('lapices x 12',5,200);

-- 4- Recupere los registros:

select * from articulos 

-- 5- Actualice un precio y recupere los registros:

update articulos set precio = 10 where codigo = 1

select * from articulos 


-- 6- Actualice una cantidad y vea el resultado:

update articulos set cantidad = 500 where codigo = 2


-- 7- Intente actualizar un campo calculado:

update articulos set montocompra = 666 where codigo = 1


---------------------------------------------------- 87 - Tipo de dato definido por el usuario (crear - informacion) -----------------------------------------------------------


if object_id('alumnos') is not null
  drop table alumnos;


--if exists(select codigo from articulos where codigo = 1) 
--select 'Si existe'
--else
--select 'No existe'


if exists (select * from systypes where name = 'tipo_documento')
 exec sp_droptype tipo_documento;


 -- Creamos un tipo de dato definido por el usuario llamado "tipo_documento" basado en el tipo 
 --"char" que permita 8 caracteres y valores nulos:

 
 exec sp_addtype tipo_documento , 'int' , 'null'

 -- Ejecutamos el procedimiento almacenado "sp_help" junto al nombre del tipo de dato definido 
 --anteriormente para obtener información del mismo:


 sp_help tipo_documento;

 /*
 Creamos la tabla "alumnos" con 2 campos: documento (del tipo de dato definido anteriormente) 
 y nombre (30 caracteres). Antes la eliminamos (si existe):
 */

 create table alumnos
 (
  documento tipo_documento,
  nombre varchar(50)
 )


 -- Ingresamos un registro con valor para "documento" permitido por el tipo de dato:

 insert into alumnos values ('12345678','Luis')


 -- No podríamos ingresar en "documento" una cadena de 9 caracteres.

 insert into alumnos values ('123456789','Mary')


 ------------------------------------------------------- Primer problema: ------------------------------------------------------------------

  if object_id ('empleados') is not null
  drop table empleados;

 -- 2- Defina un nuevo tipo de dato llamado "tipo_legajo". Primero debe eliminarlo (si existe) para 
--volver a crearlo. Para ello emplee esta sentencia que explicaremos en el siguiente capítulo:

if exists(select * from systypes where name = 'tipo_legajo')
exec sp_droptype tipo_legajo


--3- Cree un tipo de dato definido por el usuario llamado "tipo_legajo" basado en el tipo "char" de 4 
--caracteres que no permita valores nulos.


exec sp_addtype tipo_legajo , 'char(4)', 'not null'

--4- Ejecute el procedimiento almacenado "sp_help" junto al nombre del tipo de dato definido 
--anteriormente para obtener información del mismo.

sp_help tipo_legajo


-- 5- Cree la tabla "empleados" con 3 campos: legajo (tipo_legajo), documento (char de 8) y 
--nombre (30) caracteres):

create table empleados
(
legajo tipo_legajo,
documento char(8),
nombre varchar(30)
)

-- 6- Intente ingresar un registro con valores por defecto:

insert into empleados default values 


-- 7- Ingrese un registro con valores válidos.

insert into empleados values ('1234','12345678','Luis')


------------------------------------------------ 88 - Tipo de dato definido por el usuario (asociación de reglas) ------------------------------------------------

 if object_id('alumnos') is not null
  drop table alumnos;
 if object_id('docentes') is not null
  drop table docentes;


-- Queremos definir un nuevo tipo de dato llamado "tipo_documento". Primero debemos eliminarlo, 
--si existe para volver a crearlo. Para ello empleamos esta sentencia que explicaremos
-- próximamente:

if exists (select * from systypes where name = 'tipo_documento')
EXEC sp_droptype tipo_documento 


-- Creamos un tipo de dato definido por el usuario llamado "tipo_documento" 
-- basado en el tipo "char" que permita 8 caracteres y valores nulos:

exec sp_addtype tipo_documento, 'char(8)', 'null'   

-- Ejecutamos el procedimiento almacenado "sp_help" junto al nombre del tipo de dato 
-- definido anteriormente para obtener información del mismo:

sp_help tipo_documento 


-- Creamos la tabla "alumnos" con 2 campos: documento (del tipo de dato definido anteriormente)
-- y nombre (30 caracteres):

create table alumnos 
(
documento tipo_documento,
nombre varchar(50)
)

-- Eliminamos si existe, la regla "RG_documento":

if object_id('RG_documento') is not null
drop rule RG_documento


-- Creamos la regla que permita 8 caracteres que solamente pueden ser dígitos del 0 al 5
-- para el primer dígito y de 0 al 9 para los siguientes:

create rule RG_documento
as @documento like '[0-5][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'


-- Asociamos la regla al tipo de datos "tipo_documento" especificando que solamente se 
--aplique a los futuros campos de este tipo:


exec sp_bindrule RG_documento, 'tipo_documento', 'futureonly'

-- Creamos la tabla "docentes" con 2 campos: documento (del tipo de dato definido anteriormente) 
--y nombre (30 caracteres):


create table docentes 
(
	documento tipo_documento,
	nombre varchar(30)
)


-- Ingresamos registros en "alumnos" con valores para documento que infrinjan la regla:

insert into alumnos values ('912345','Luis Molina')

-- Quitamos la asociación:

exec sp_unbindrule 'tipo_documento'

-- Volvemos a asociar la regla, ahora sin el parámetro "futureonly":

exec sp_bindrule RG_documento, 'tipo_documento'


sp_helpconstraint alumnos 
sp_helpconstraint docentes 


-- Eliminamos si existe, la regla "RG_documento2":

if OBJECT_ID('RG_documento2') is not null
drop rule RG_documento2


-- Creamos la regla llamada "RG_documento2" que permita 8 caracteres que solamente 
--pueden ser dígitos del 0 al 9 para todas las posiciones:

create rule RG_documento2
as @documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'

-- Asociamos la regla al tipo de datos "tipo_documento" (ya tiene una regla asociada):

exec sp_bindrule RG_documento2, 'tipo_documento'

-- Veamos si la asociación fue reemplazada en el tipo de datos:

sp_help tipo_documento


-- Veamos si la asociación fue reemplazada en las tablas:

sp_helpconstraint alumnos 
sp_helpconstraint docentes 


-- Asociamos la regla "RG_documento" al campo "documento" de "alumnos":

exec sp_bindrule RG_documento, 'alumnos.documento'

-- Verificamos que "documento" de "alumnos" tiene asociada la regla "RG_documento":

sp_helpconstraint alumnos 


--Verificamos que el tipo de dato "tipo_documento" tiene asociada la regla
-- "RG_documento2":

sp_help tipo_documento 


-- Intente ingresar un valor para "documento" aceptado por la regla asociada al 
--tipo de dato pero no por la regla asociada al campo:

insert into alumnos values ('61234567','Jose')


-- Ingrese un valor para "documento" aceptado por la regla asociada al campo:

insert into alumnos values ('31234567','Luis')


--------------------------------------------------- Primer problema:  -----------------------------------------------------------------

 if object_id ('empleados') is not null
  drop table empleados;
 if object_id ('clientes') is not null
  drop table clientes;

/*2- Defina un nuevo tipo de dato llamado "tipo_año". Primero debe eliminarlo, si existe, 
para volver 
a crearlo. Para ello emplee esta sentencia que explicaremos en el siguiente capítulo:*/

if exists(select * from systypes where name = 'tipo_anio')
exec sp_droptype tipo_anio

/*
3- Cree un tipo de dato definido por el usuario llamado "tipo_año" basado en el tipo "int"
 que 
permita valores nulos:
*/

exec sp_addtype tipo_anio, 'int' , 'null'


/*
4- Ejecute el procedimiento almacenado "sp_help" junto al nombre del tipo de dato definido 
anteriormente para obtener información del mismo:
*/

sp_help tipo_anio

/*
5- Cree la tabla "empleados" con 3 campos: documento (char de 8), nombre (30 caracteres) y 
añoingreso (tipo_año):
*/

create table empleados 
(
documento char(8),
nombre varchar(30),
anioingreso tipo_anio
)

-- 6- Elimine la regla llamada "RG_año" si existe:

if object_id('RG_anio') is not null
drop rule RG_anio


-- 7- Cree la regla que permita valores integer desde 1990 (año en que se inauguró el 
--comercio) y el 
--año actual:

create rule RG_anio
as @anio between 1990 and year(getdate())


--8- Asocie la regla al tipo de datos "tipo_año" especificando que solamente se aplique a 
--los futuros 
--campos de este tipo:

exec sp_bindrule RG_anio, 'tipo_anio' , 'futureonly'


--9- Vea si se aplicó a la tabla empleados:

sp_helpconstraint empleados 


/*10- Cree la tabla "clientes" con 3 campos: nombre (30 caracteres), añoingreso (tipo_año) y 
domicilio 
(30 caracteres):*/

create table clientes
(
nombre varchar(30),
anioingreso tipo_anio,
domicilio varchar(30)
)

--11- Vea si se aplicó la regla en la nueva tabla:

sp_helpconstraint clientes


-- 12- Ingrese registros con valores para el año que infrinjan la regla en la tabla "empleados":


insert into empleados values('11111111','Luis','3000')


-- 13- Intente ingresar en la tabla "clientes" un valor de fecha que infrinja la regla:

insert into clientes values ('22222222',3000,'Juan')



-- 14- Quite la asociación de la regla con el tipo de datos:

exec sp_unbindrule 'tipo_anio'


-- 15- Vea si se quitó la asociación:

sp_helpconstraint clientes 


-- 16- Vuelva a asociar la regla, ahora sin el parámetro "futureonly":

exec sp_bindrule RG_anio, 'tipo_anio' 


-- 17- Intente agregar una fecha de ingreso fuera del intervalo que admite la regla en cualquiera de 
--las tablas (ambas tienen la asociación):

insert into empleados values ('12345678','Manuel',5000)


-- 18- Vea la información del tipo de dato:

sp_help RG_anio
sp_helpconstraint empleados


-- 19- Elimine la regla llamada "RG_añonegativo", si existe:

if object_id('RG_anionegativo') is not null
drop rule RG_anionegativo

-- 20- Cree una regla llamada "RG_añonegativo" que admita valores entre -2000 y -1:
  -- create rule RG_añonegativo

  create rule RG_anionegativo
  as @anio between -2000 and -1


-- 21- Asocie la regla "RG_añonegativo" al campo "añoingreso" de la tabla "clientes":

exec sp_bindrule RG_anionegativo, 'clientes.anioingreso'


--22- Vea si se asoció:

sp_helpconstraint clientes


-- 23- Verifique que no está asociada al tipo de datos "tipo_año":

sp_help tipo_anio


-- 24- Intente ingresar un registro con valor '-1900' para el campo "añoingreso" de "empleados":

insert into empleados values ('22222222','jose',-1900)


-- 25- Ingrese un registro con valor '-1900' para el campo "añoingreso" de "clientes" y 
--recupere los registros de dicha tabla:

insert into clientes values('Manuel',-1990,'conocido')


-------------------------------------------------  89 - Tipo de dato definido por el usuario (valores predeterminados) ----------------------------------------------------

 if object_id('alumnos') is not null
  drop table alumnos;
 if object_id('docentes') is not null
  drop table docentes;

  /*Queremos definir un nuevo tipo de dato llamado "tipo_documento". Primero debemos eliminarlo, 
  si existe para volver a crearlo.*/

if exists(select * from systypes where name = 'tipo_documento')
exec sp_droptype tipo_documento

/*
Creamos un tipo de dato definido por el usuario llamado "tipo_documento" basado en el tipo "char"
 que permita 8 caracteres y valores nulos:
*/

exec sp_addtype tipo_documento, 'char(8)', 'null' 

sp_help tipo_documento 


/*
Creamos la tabla "alumnos" con 2 campos: documento (del tipo de dato definido anteriormente) 
y nombre (30 caracteres):
*/

create table alumnos
(
documento tipo_documento,
nombre varchar(30)
)

-- Eliminamos si existe, el valor predeterminado "VP_documento0":

if object_id('VP_documento0') is not null
drop default VP_documento0

-- Creamos el valor predeterminado "VP_documento0" que almacene el valor '00000000':

create default VP_documento0
as '00000000'


sp_help VP_documento0

/*Asociamos el valor predeterminado al tipo de datos "tipo_documento" especificando que solamente 
se aplique a los futuros campos de este tipo:*/

exec sp_bindefault VP_documento0, 'tipo_documento', 'futureonly'


/*Creamos la tabla "docentes" con 2 campos: documento (del tipo de dato definido anteriormente) 
y nombre (30 caracteres):*/

create table docentes
(
documento tipo_documento,
nombre varchar(30)
)

--Verificamos que se aplicó el valor predeterminado creado anteriormente al campo "documento" 
--de la nueva tabla:


sp_helpconstraint docentes

-- Ingresamos un registro en "alumnos" sin valor para documento y vemos qué se almacenó:

insert into alumnos (nombre) values('Luis')

select * from alumnos


-- Si ingresamos en la tabla "docentes" un registro con valores por defecto:

insert into docentes default values 

select * from docentes


-- Quitamos la asociación:

exec sp_unbindefault 'tipo_documento' 


-- Volvemos a asociar el valor predeterminado, ahora sin el parámetro "futureonly":

exec sp_bindefault VP_documento0, 'tipo_documento'


-- Ingresamos un registro en "alumnos" y en "docentes" sin valor para documento y vemos qué se 
--almacenó:

insert into alumnos (nombre) values ('DDDD')
insert into docentes (nombre) values ('EEEE')


select * from alumnos
select * from docentes


-- Eliminamos si existe, el valor predeterminado "VP_documentoDesconocido":

if object_id('VP_documentoDesconocido') is not null
drop default VP_documentoDesconocido

--Creamos el valor predeterminado llamado "VP_documentoDesconocido" que almacene el valor 'SinDatos':

create default VP_documentoDesconocido
as 'Sin Datos'

/*Asociamos el valor predeterminado al tipo de datos "tipo_documento" 
(ya tiene otro valor predeterminado asociado):*/

exec sp_bindefault VP_documentoDesconocido, 'tipo_documento'


-- Veamos si la asociación fue reemplazada en el tipo de datos:

sp_help tipo_documento


sp_helpconstraint alumnos
sp_helpconstraint docentes 


-- Quitamos la asociación del valor predeterminado:

exec sp_unbindefault tipo_documento

sp_helpconstraint alumnos
sp_helpconstraint docentes 

-- Ingresamos un registro en "alumnos" y vemos qué se almacenó en el campo "documento":

insert into alumnos default values

select * from alumnos

-- Agregue a la tabla "docentes" una restricción "default" para el campo "documento":

alter table docentes
add constraint DF_docentes_documento
default '-------'
for documento

/*Ingrese un registro en "docentes" con valores por defecto y vea qué se almacenó en "documento"
 recuperando los registros:*/


 insert into docentes default values 

 select * from docentes


 -- Asocie el valor predeterminado "VP_documento0" al tipo de datos "tipo_documento":

 exec sp_bindefault VP_documento0, 'tipo_documento'

 sp_helpconstraint docentes 

 -- Ingrese un registro en "docentes" con valores por defecto y vea qué se almacenó en "documento":

 insert into docentes default values 
 select * from docentes

 alter table docentes
 drop constraint DF_docentes_documento

sp_helpconstraint docentes 

-- Asociamos el valor predeterminado "VP_documento0" al tipo de datos "tipo_documento":

exec sp_bindefault VP_documento0, 'tipo_documento'

sp_helpconstraint docentes

-- Intente agregar una restricción "default" al campo "documento" de "docentes":

insert into docentes default values

-- Intente agregar una restricción "default" al campo "documento" de "docentes":
-- SQL Server no lo permite porque el tipo de dato de ese campo ya tiene un valor predeterminado 
--asociado.

alter table docentes
add constraint DF_docentes_documento
default '-------'
for documento


------------------------------------------------------ Primer problema: -------------------------------------------------------------

 if object_id ('empleados') is not null
  drop table empleados;
 if object_id ('clientes') is not null
  drop table clientes;

/*2- Defina un nuevo tipo de dato llamado "tipo_año". Primero debe eliminarlo, si existe, para volver 
a crearlo. Para ello emplee esta sentencia que explicaremos en el siguiente capítulo:*/

if exists (select * from systypes where name='tipo_año')
exec sp_droptype tipo_año

--3- Cree un tipo de dato definido por el usuario llamado "tipo_año" basado en el tipo "int" que 
--permita valores nulos:

exec sp_addtype tipo_año, 'int','null'


--4- Ejecute el procedimiento almacenado "sp_help" junto al nombre del tipo de dato definido 
 
 sp_help tipo_año


 /*5- Cree la tabla "empleados" con 3 campos: documento (char de 8), nombre (30 caracteres) y 
añoingreso (tipo_año):*/

create table empleados
(
documento char(8),
nombre varchar(30),
añoingreso tipo_año
)

-- 6- Elimine el valor predeterminado "VP_añoactual" si existe:

if object_id('VP_añoactual') is not null
drop default VP_añoactual


-- 7- Cree el valor predeterminado "VP_añoactual" que almacene el año actual:

create default VP_añoactual
as year(getdate())

-- 8- Asocie el valor predeterminado al tipo de datos "tipo_año" especificando que solamente se aplique 
--a los futuros campos de este tipo:


exec sp_bindefault VP_añoactual, tipo_año ,'futureonly'

--9- Vea si se aplicó a la tabla empleados:
 
 sp_helpconstraint empleados;

--No se aplicó porque especificamos la opción "futureonly":

/*
10- Cree la tabla "clientes" con 3 campos: nombre (30 caracteres), añoingreso (tipo_año) y domicilio 
(30 caracteres):*/

create table clientes 
(
nombre varchar(30),
añoingreso tipo_año,
domicilio varchar(30)
)

-- 11- Vea si se aplicó la regla en la nueva tabla:

sp_helpconstraint clientes 

-- 12- Ingrese un registro con valores por defecto en la tabla "empleados" y vea qué se almacenó en 
--"añoingreso":

insert into empleados default values 

select * from empleados

-- 13- Ingrese en la tabla "clientes" un registro con valores por defecto y recupere los registros:
 
 insert into clientes default values;

 select * from clientes


 -- 14- Elimine el valor predeterminado llamado "VP_año2000", si existe:

if object_id('VP_año2000') is not null
drop default VP_año2000

-- 15- Cree un valor predeterminado llamado "VP_año2000" con el valor 2000:

create default VP_año2000
as 2000


-- 16- Asócielo al tipo de dato definido sin especificar "futureonly":

exec sp_bindefault VP_año2000, tipo_año


-- 17- Verifique que se asoció a la tabla "empleados":
 sp_helpconstraint empleados;


 -- 18- Verifique que reemplazó al valor predeterminado anterior en la tabla "clientes":
 sp_helpconstraint clientes;


 -- 18- Ingrese un registro en ambas tablas con valores por defecto y vea qué se almacenó en el año de 

 insert into empleados default values 
 insert into clientes default values 

 
select * from empleados
select * from clientes

-- 19- Vea la información del tipo de dato:
-- La columna que hace referencia al valor predeterminado asociado muestra "VP_año2000".

sp_help tipo_año

-- 20- Intente agregar a la tabla "empleados" una restricción "default":
-- No lo permite porque el tipo de dato del campo ya tiene un valor predeterminado asociado.

alter table empleados
add constraint DF_empleados_añoingreso
default 1990
for añoingreso

-- 21- Quite la asociación del valor predeterminado al tipo de dato:

exec sp_unbindefault 'tipo_año'


-- 22- Agregue a la tabla "empleados" una restricción "default":

alter table empleados
add constraint DF_empleados_añoingreso
default 1990
for añoingreso

sp_helpconstraint empleados


-- 23- Asocie el valor predeterminado "VP_añoactual" al tipo de dato "tipo_año":

exec sp_bindefault VP_añoactual, 'tipo_año'


-- 24- Verifique que el tipo de dato tiene asociado el valor predeterminado:

sp_help tipo_año


-- 25- Verifique que la tabla "clientes" tiene asociado el valor predeterminado:
sp_helpconstraint clientes 


-- 26- Verifique que la tabla "empleados" no tiene asociado el valor predeterminado 
--"VP_añoactual" 
--asociado al tipo de dato y tiene la restricción "default":

 sp_helpconstraint empleados;


 ------------------------------------------------------ 90 - Tipo de dato definido por el usuario (eliminar) -----------------------------------------------------

 if object_id('alumnos') is not null
  drop table alumnos;

/*Definimos un nuevo tipo de dato llamado "tipo_documento". Primero debemos eliminarlo, 
si existe, para volver a crearlo:*/

if exists(select * from systypes where name = 'tipo_documento')
exec sp_droptype  tipo_documento


/*Creamos un tipo de dato definido por el usuario llamado "tipo_documento" basado en el tipo
 "char" que permita 8 caracteres y valores nulos:*/

exec sp_addtype tipo_documento , 'char(8)', 'null'


-- Eliminamos la regla "RG_documento" si existe:

if object_id('RG_documento') is not null
drop rule RG_documento


-- Creamos la regla que permita 8 caracteres que solamente serán dígitos:

create rule RG_documento
as @documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'

-- Asociamos la regla al tipo de datos "tipo_documento":

exec sp_bindrule RG_documento , 'tipo_documento'

-- Creamos la tabla "alumnos":

create table alumnos(
  nombre varchar(30),
  documento tipo_documento
 );

 -- No podemos eliminar el tipo de dato "tipo_documento" porque hay una tabla "alumnos" 
 --que lo utiliza. Entonces eliminamos la tabla:

 exec sp_droptype tipo_documento 

 drop table alumnos 


 -- Ahora podemos eliminar el tipo de datos:

 exec sp_droptype tipo_documento 


 /*Note que no quitamos la asociación de la regla al tipo de datos, pero la asociación se 
 quitó al eliminar el tipo de dato.*/


 -- Volvemos a crear el tipo de dato:

exec sp_addtype tipo_documento , 'char(8)' , 'null'


-- Note que no tiene reglas asociadas:

sp_help tipo_documento


-- Asociamos la regla nuevamente:

exec sp_bindrule RG_documento, 'tipo_documento'


-- Note que no hemos vuelto a crear la regla porque la regla subsiste.


------------------------------------------------------ Primer problema: ---------------------------------------------------------------------------


if object_id ('empleados') is not null
  drop table empleados;


 --2- Defina un nuevo tipo de dato llamado "tipo_año". Primero debe eliminarlo, 
 --si existe para volver a crearlo:

 if exists(select * from systypes where name = 'tipo_año')
 exec sp_droptype tipo_año

 
 -- 3- Cree un tipo de dato definido por el usuario llamado "tipo_año" basado en el tipo 
 --"int" que permita valores nulos:

exec sp_addtype tipo_año, 'int' , 'null'

-- 4- Elimine la regla llamada "RG_año" si existe:

if object_id('RG_año') is not null
drop rule RG_año


-- 5- Cree la regla que permita valores integer desde 1990 
--(fecha en que se inauguró el comercio) y el 
-- año actual:

create rule RG_año
as @anio >=1990 and @anio <= year(getdate())


-- 6- Asocie la regla al tipo de datos "tipo_año":

exec sp_bindrule RG_año, 'tipo_año'


-- 7- Cree la tabla "empleados" con un campo del tipo creado anteriormente:

create table empleados(
  documento char(8),
  nombre varchar(30),
  añoingreso tipo_año
 );

 -- 8- Intente ingresar un registro con un valor inválido para el campo "añoingreso":

 insert into empleados values ('ewfe','wefef',9000)


 -- 9- Ingrese un registro con un valor válido para el campo "añoingreso":

 insert into empleados values ('ewfe','wefef',2000)


 -- 10- Intente eliminar la regla asociada al tipo de datos:

 drop rule RG_año

 -- 11- Elimine la asociación:

 exec sp_unbindrule 'tipo_año'


 --12- Verifique que la asociación ha sido eliminada pero la regla sigue existiendo:
 sp_helpconstraint empleados;
 exec sp_help tipo_año;


 -- 13- Elimine la regla:

drop rule RG_año

-- 14- Verifique que la regla ya no existe:

sp_help RG_año
sp_helpconstraint empleados

-- 15- Ingrese el registro que no pudo ingresar en el punto 8:

insert into empleados values ('ewfe','wefef',9000)

-- 16- Intente eliminar el tipo de datos "tipo_año":

exec sp_droptype tipo_año


-- 17- Elimine la tabla "empleados":

drop table empleados 

-- 18- Verifique que el tipo de dato "tipo_año" aún existe:

sp_help tipo_año

-- 19- Elimine el tipo de datos:

exec sp_droptype tipo_año


-- 20- Verifique que el tipo de dato "tipo_año" ya no existe:

sp_help tipo_año


------------------------------------------------  91 - Subconsultas -------------------------------------------------------------------

-- No hay ejercicios 

-------------------------------------------------- 92 - Subconsultas como expresión ----------------------------------------------------------

 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2)
 );


 insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',20.00);
 insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll','Plaza',35.00);
 insert into libros values('Aprenda PHP','Mario Molina','Siglo XXI',40.00);
 insert into libros values('El aleph','Borges','Emece',10.00);
 insert into libros values('Ilusiones','Richard Bach','Planeta',15.00);
 insert into libros values('Java en 10 minutos','Mario Molina','Siglo XXI',50.00);
 insert into libros values('Martin Fierro','Jose Hernandez','Planeta',20.00);
 insert into libros values('Martin Fierro','Jose Hernandez','Emece',30.00);
 insert into libros values('Uno','Richard Bach','Planeta',10.00);

-- Obtenemos el título, precio de un libro específico y la diferencia entre su precio 
--y el máximo valor:

select titulo,precio, precio- (select max(precio) from libros ) as diferencia
from libros 
where titulo = 'Uno'

-- Mostramos el título y precio del libro más costoso:

select titulo,precio from libros
where precio = (select max(precio) from libros )


-- Actualizamos el precio del libro con máximo valor:

update libros set precio = 100
where precio = (select max(precio) from libros)

-- Eliminamos los libros con precio menor:


delete libros 
where precio = (select min(precio) from libros)

--------------------------------------------- Primer problema:  ----------------------------------------------------------

if object_id('alumnos') is not null
  drop table alumnos;

create table alumnos(
  documento char(8),
  nombre varchar(30),
  nota decimal(4,2),
  primary key(documento),
  constraint CK_alumnos_nota_valores check (nota>=0 and nota <=10),
 );

  insert into alumnos values('30111111','Ana Algarbe',5.1);
 insert into alumnos values('30222222','Bernardo Bustamante',3.2);
 insert into alumnos values('30333333','Carolina Conte',4.5);
 insert into alumnos values('30444444','Diana Dominguez',9.7);
 insert into alumnos values('30555555','Fabian Fuentes',8.5);
 insert into alumnos values('30666666','Gaston Gonzalez',9.70);

 -- 4- Obtenga todos los datos de los alumnos con la nota más alta, empleando subconsulta.
--2 registros.

select documento,nombre,nota from alumnos 
where nota = (select max(nota) from alumnos)


-- 6- Muestre los alumnos que tienen una nota menor al promedio, su nota, y la diferencia 
--con el 
--promedio.
--3 registros.

select documento,nombre, nota, nota - (select avg(nota) from alumnos) from alumnos
where nota <= (select avg(nota) from alumnos)


-- 7- Cambie la nota del alumno que tiene la menor nota por 4.
-- 1 registro modificado.

update alumnos set nota = 4 
where nota = (select min(nota) from alumnos)

-- 8- Elimine los alumnos cuya nota es menor al promedio.
--3 registros eliminados.

delete from alumnos 
where nota < (select avg(nota) from alumnos)

------------------------------------------------------- 93 - Subconsultas con in ------------------------------------------------------------

 if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

  create table editoriales(
  codigo tinyint identity,
  nombre varchar(30),
  primary key (codigo)
 );
 
 create table libros (
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint,
  primary key(codigo),
 constraint FK_libros_editorial
   foreign key (codigoeditorial)
   references editoriales(codigo)
   on update cascade,
 );


  insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Paidos');
 insert into editoriales values('Siglo XXI');

 insert into libros values('Uno','Richard Bach',1);
 insert into libros values('Ilusiones','Richard Bach',1);
 insert into libros values('Aprenda PHP','Mario Molina',4);
 insert into libros values('El aleph','Borges',2);
 insert into libros values('Puente al infinito','Richard Bach',2);

 -- Queremos conocer el nombre de las editoriales que han publicado libros 
 --del autor "Richard Bach":

 -- Empleando subconsulta
 select nombre from editoriales 
 where codigo in (select codigoeditorial from libros where autor = 'Richard Bach') 
 
 -- Empleado join

 select distinct nombre from editoriales e
 join libros  on (e.codigo = codigoeditorial)
 where autor = 'Richard Bach'

 -- También podemos buscar las editoriales que no han publicado libros de "Richard Bach":

 -- con subconsulta
 select nombre from editoriales
 where codigo not in (select codigoeditorial from libros where autor = 'Richard Bach')


 ------------------------------------------------------------ Primer problema: -----------------------------------------------------------------

  if (object_id('ciudades')) is not null
   drop table ciudades;
  if (object_id('clientes')) is not null
   drop table clientes;
/*
2- Cree la tabla "clientes" (codigo, nombre, domicilio, ciudad, codigociudad) 
y "ciudades" (codigo, nombre). Agregue una restricción "primary key" 
para el campo "codigo" de ambas tablas y una "foreing 
key" para validar que el campo "codigociudad" exista en "ciudades" 
con actualización en cascada:
*/

create table ciudades
(
codigo int identity,
nombre varchar(30),
constraint PK_ciudades_codigo
primary key (codigo)
)



create table clientes
(
codigo int identity,
nombre varchar(30),
domicilio varchar(30),
codigociudad int not null,
constraint PK_clientes_codigo
primary key (codigo),
constraint FK_clientes_ciudades
foreign key (codigociudad)
references ciudades(codigo)
on update cascade,
)


 insert into ciudades (nombre) values('Cordoba');
 insert into ciudades (nombre) values('Cruz del Eje');
 insert into ciudades (nombre) values('Carlos Paz');
 insert into ciudades (nombre) values('La Falda');
 insert into ciudades (nombre) values('Villa Maria');

 insert into clientes values ('Lopez Marcos','Colon 111',1);
 insert into clientes values ('Lopez Hector','San Martin 222',1);
 insert into clientes values ('Perez Ana','San Martin 333',2);
 insert into clientes values ('Garcia Juan','Rivadavia 444',3);
 insert into clientes values ('Perez Luis','Sarmiento 555',3);
 insert into clientes values ('Gomez Ines','San Martin 666',4);
 insert into clientes values ('Torres Fabiola','Alem 777',5);
 insert into clientes values ('Garcia Luis','Sucre 888',5);


/*4- Necesitamos conocer los nombres de las ciudades de aquellos clientes cuyo domicilio es 
en calle "San Martin", empleando subconsulta.
3 registros.
*/

select nombre from ciudades 
where codigo in (select codigociudad from clientes where domicilio like 'San Martin%')


-- 5- Obtenga la misma salida anterior pero empleando join.

select a.nombre from ciudades a
join clientes b on (codigociudad = a.codigo)
where domicilio like 'San Martin%'


-- 6- Obtenga los nombre de las ciudades de los clientes cuyo apellido no comienza con una 
--letra específica, empleando subconsulta.
-- 2 registros.

select nombre from ciudades 
where codigo not in (select codigociudad from clientes where nombre  like 'G%' )


-- 7- Pruebe la subconsulta del punto 6 separada de la consulta exterior para verificar que
-- retorna una 
-- lista de valores de un solo campo.

select codigociudad from clientes where nombre  like 'G%'


---------------------------------------------- 94 - Subconsultas any - some - all ---------------------------------------------------------

 if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;

   create table editoriales(
  codigo tinyint identity,
  nombre varchar(30),
  primary key (codigo)
 );
 
 create table libros (
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint,
  precio decimal(5,2),
  primary key(codigo),
 constraint FK_libros_editorial
   foreign key (codigoeditorial)
   references editoriales(codigo)
   on update cascade,
 );

 insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Paidos');
 insert into editoriales values('Siglo XXI');

 insert into libros values('Uno','Richard Bach',1,15);
 insert into libros values('Ilusiones','Richard Bach',4,18);
 insert into libros values('Puente al infinito','Richard Bach',2,20);
 insert into libros values('Aprenda PHP','Mario Molina',4,40);
 insert into libros values('El aleph','Borges',2,10);
 insert into libros values('Antología','Borges',1,20);
 insert into libros values('Cervantes y el quijote','Borges',3,25);


select titulo,codigoeditorial
from libros
where autor='Borges' and
codigoeditorial = any
(select e.codigo
from editoriales as e
join libros as l
on codigoeditorial=e.codigo
where l.autor='Richard Bach');

-- Mostramos los títulos de los libros de "Borges" de editoriales que han publicado también
-- libros de "Richard Bach":

select titulo from libros
where autor = 'Borges'
and codigoeditorial = any 
(select codigoeditorial from libros l
join editoriales e  on (e.codigo = l.codigoeditorial)
where autor = 'Richard Bach')


-- Mostramos los títulos y editorial de los libros de "Borges" de editoriales que han publicado también
-- libros de "Richard Bach":

select titulo,e.nombre from libros l
join editoriales e on (e.codigo = l.codigoeditorial)
where autor = 'Borges' and codigoeditorial = any
(select codigoeditorial 
from libros l 
join editoriales e on (l.codigoeditorial = e.codigo)
where autor = 'Richard Bach'
)


-- Realizamos la misma consulta pero empleando "all" en lugar de "any":

select titulo from libros 
where autor = 'Borges'
and codigoeditorial = all 
(select codigoeditorial from libros l
join editoriales e on (l.codigoeditorial = e.codigo)
where autor = 'Richard Bach'
 )


 -- Mostramos los títulos y precios de los libros "Borges" cuyo precio supera a 
 -- ALGUN precio de los libros de "Richard Bach":

 select titulo, precio from libros 
 where autor = 'Borges' 
 and precio > any 
 (select precio from libros l 
 join editoriales e on (l.codigoeditorial = e.codigo)
 where autor = 'Richard Bach'
 )


 -- Veamos la diferencia si empleamos "all" en lugar de "any":

 select titulo,precio from libros 
 where autor = 'Borges' and 
 precio > all 
 (select precio from libros l
 join editoriales e on (l.codigoeditorial = e.codigo)
 where autor = 'Richard Bach'
 )



 -- Empleamos la misma subconsulta para eliminación:

delete from libros
where autor = 'Borges' and 
precio > all 
(select precio from libros l
join editoriales e on (l.codigoeditorial = e.codigo)
where autor = 'Richard Bach'
)

/*
Emplear "= any" es lo mismo que emplear "in".

Emplear "<> all" es lo mismo que emplear "not in".

Recuerde que solamente las subconsultas luego de un operador de comparación al cual es 
seguido por "any" o "all") pueden incluir cláusulas "group by".

*/

------------------------------------------------ Primer problema:  -------------------------------------------------------

 if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

  create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );


  insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);


 -- 4- Muestre el número de socio, el nombre del socio y el deporte en que está
  -- inscripto con un join de ambas tablas.

select numerosocio,nombre,deporte 
from socios s
join inscriptos i on (s.numero = i.numerosocio)


-- 5- Muestre los socios que  serán compañeros en tenis y también en natación (empleando 
-- subconsulta)
-- 3 filas devueltas.

select documento,nombre 
from socios 
where numero = any 
(
select numerosocio from inscriptos i
join socios s on (i.numerosocio = s.numero)
where deporte in('tenis','natación')
)


-- 6- vea si el socio 1 se ha inscripto en algún deporte en el cual se haya inscripto el 
--socio 2.
--3 filas.

select deporte from inscriptos 
where numerosocio = 1 and deporte = any
(
select deporte from inscriptos where numerosocio = 2
)



-- 7-  vea si el socio 1 se ha inscripto en algún deporte en el cual se haya inscripto el 
--socio 2  pero empleando join.

select deporte 
from socios s
join inscriptos i on (s.numero = i.numerosocio)
where numero = 1
and deporte = any 
(
select deporte 
from socios s
join inscriptos i on (s.numero = i.numerosocio)
where numero = 2
)

/*
8- Muestre los deportes en los cuales el socio 2 pagó más cuotas que ALGUN deporte en los
 que se inscribió el socio 1.
2 registros.
*/

select deporte from inscriptos 
where numerosocio = 2 and cuotas > any 
(select cuotas from inscriptos where numerosocio = 1)


/*
9- Muestre los deportes en los cuales el socio 2 pagó más cuotas que TODOS los deportes 
en que se inscribió el socio 1.
1 registro.
*/

select deporte from inscriptos
where numerosocio = 2 and cuotas > all
(
select cuotas from inscriptos where numerosocio = 1
)

/*
10- Cuando un socio no ha pagado la matrícula de alguno de los deportes en que se ha 
inscripto, se 
lo borra de la inscripción de todos los deportes. Elimine todos los socios que no pagaron 
ninguna 
cuota en algún deporte.
7 registros.*/

delete from inscriptos  
where numerosocio = any
(
select numerosocio from inscriptos where cuotas = 0
)

---------------------------------------------------- 95 - Subconsultas correlacionadas --------------------------------------------------------------

if object_id('detalles') is not null
  drop table detalles;
 if object_id('facturas') is not null
  drop table facturas;

  create table facturas(
  numero int not null,
  fecha datetime,
  cliente varchar(30),
  primary key(numero)
 );

 create table detalles(
  numerofactura int not null,
  numeroitem int not null, 
  articulo varchar(30),
  precio decimal(5,2),
  cantidad int,
  primary key(numerofactura,numeroitem),
   constraint FK_detalles_numerofactura
   foreign key (numerofactura)
   references facturas(numero)
   on update cascade
   on delete cascade,
 );

 set dateformat 'ymd'

  insert into facturas values(1200,'2007-01-15','Juan Lopez');
 insert into facturas values(1201,'2007-01-15','Luis Torres');
 insert into facturas values(1202,'2007-01-15','Ana Garcia');
 insert into facturas values(1300,'2007-01-20','Juan Lopez');

 insert into detalles values(1200,1,'lapiz',1,100);
 insert into detalles values(1200,2,'goma',0.5,150);
 insert into detalles values(1201,1,'regla',1.5,80);
 insert into detalles values(1201,2,'goma',0.5,200);
 insert into detalles values(1201,3,'cuaderno',4,90);
 insert into detalles values(1202,1,'lapiz',1,200);
 insert into detalles values(1202,2,'escuadra',2,100);
 insert into detalles values(1300,1,'lapiz',1,300);

 /*
 Se necesita una lista de todas las facturas que incluya el número, la fecha, el cliente, 
 la cantidad de artículos comprados y el total:
 */

 select f.*,
 (select count(*) from detalles 
 where f.numero = numerofactura) as cantidad,
 (select sum(precio*cantidad) from detalles 
 where f.numero = numerofactura) as total
 from facturas as f

 -- con un join se puede arrojar el mismo resultado 

  select f.* , count(numeroitem) cantidad ,sum(precio*cantidad) total from facturas f
 join detalles d on(f.numero = d.numerofactura)
 group by numero,fecha,cliente

 ------------------------------------------------ Primer problema:  -----------------------------------------------------------

 if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;


   create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

  insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);


 /*4- Se necesita un listado de todos los socios que incluya nombre 
 y domicilio, la cantidad de 
deportes a los cuales se ha inscripto, empleando subconsulta.
4 registros.*/


select nombre,domicilio,
(select count(*) from inscriptos 
 where numerosocio = s.numero ) as 'cantidad deportes'
from socios s

/*
5- Se necesita el nombre de todos los socios, el total de cuotas que debe pagar (10 por cada 
deporte) y el total de cuotas pagas, empleando subconsulta.
4 registros.
*/

select nombre,  
(select (count(*)*10) from inscriptos  where numerosocio = s.numero) as 'total de cuotas a pagar',
(select  sum(cuotas) from inscriptos  where numerosocio = s.numero) as 'total de cuotas pagadas'
from socios s 


-- 6-   Se necesita el nombre de todos los socios, el total de cuotas que debe pagar (10 por cada 
-- deporte) y el total de cuotas pagas, empleando join.

select nombre, count(i.deporte)*10 as 'total de cuotas a pagar', sum(cuotas) as 'total de cuotas pagadas'  from socios s
join inscriptos i on (s.numero = i.numerosocio)
group by nombre


----------------------------------------------- 96 - Exists y No Exists ---------------------------------------------------

if object_id('detalles') is not null
  drop table detalles;
 if object_id('facturas') is not null
  drop table facturas;

create table facturas(
  numero int not null,
  fecha datetime,
  cliente varchar(30),
  primary key(numero)
 );

 create table detalles(
  numerofactura int not null,
  numeroitem int not null, 
  articulo varchar(30),
  precio decimal(5,2),
  cantidad int,
  primary key(numerofactura,numeroitem),
   constraint FK_detalles_numerofactura
   foreign key (numerofactura)
   references facturas(numero)
   on update cascade
   on delete cascade
 );

 set dateformat 'ymd'

  insert into facturas values(1200,'2007-01-15','Juan Lopez');
 insert into facturas values(1201,'2007-01-15','Luis Torres');
 insert into facturas values(1202,'2007-01-15','Ana Garcia');
 insert into facturas values(1300,'2007-01-20','Juan Lopez');

 insert into detalles values(1200,1,'lapiz',1,100);
 insert into detalles values(1200,2,'goma',0.5,150);
 insert into detalles values(1201,1,'regla',1.5,80);
 insert into detalles values(1201,2,'goma',0.5,200);
 insert into detalles values(1201,3,'cuaderno',4,90);
 insert into detalles values(1202,1,'lapiz',1,200);
 insert into detalles values(1202,2,'escuadra',2,100);
 insert into detalles values(1300,1,'lapiz',1,300);


 /*
 En este ejemplo se usa una subconsulta correlacionada con un operador "exists" 
 en la cláusula "where" para devolver una lista de clientes que compraron el artículo 
 "lapiz":*/

 select cliente from facturas 
 where exists 
 (select * from detalles where numerofactura = numero and articulo = 'lapiz')

 select cliente from facturas
 join detalles on (numero = numerofactura) 
 where articulo = 'lapiz'

-- Podemos buscar los clientes que no han adquirido el artículo "lapiz" empleando 
-- "if not exists":

select cliente from facturas f
where not exists 
(
 select * from detalles
 where numerofactura = f.numero and articulo = 'lapiz'
 )

 ----------------------------------------------- Primer problema: -------------------------------------------------------

 if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  cuotas tinyint
  constraint CK_inscriptos_cuotas
   check (cuotas>=0 and cuotas<=10)
  constraint DF_inscriptos_cuotas default 0,
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
   on update cascade
   on delete cascade,
 );

 insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis',1);
 insert into inscriptos values(1,'basquet',2);
 insert into inscriptos values(1,'natacion',1);
 insert into inscriptos values(2,'tenis',9);
 insert into inscriptos values(2,'natacion',1);
 insert into inscriptos values(2,'basquet',default);
 insert into inscriptos values(2,'futbol',2);
 insert into inscriptos values(3,'tenis',8);
 insert into inscriptos values(3,'basquet',9);
 insert into inscriptos values(3,'natacion',0);
 insert into inscriptos values(4,'basquet',10);

 /*4- Emplee una subconsulta con el operador "exists" para devolver la lista de socios 
 que se inscribieron en un determinado deporte.
3 registros.*/

select nombre from socios
where exists
(select * from inscriptos where numero = numerosocio
and deporte = 'natacion')

select nombre from socios s
join inscriptos i on (s.numero=i.numerosocio)
where deporte = 'natacion'

/*5- Busque los socios que NO se han inscripto en un deporte determinado empleando 
"not exists".
1 registro.*/

select nombre from socios 
where not exists 
(select * from inscriptos where numero = numerosocio and deporte = 'natacion')

/*6- Muestre todos los datos de los socios que han pagado todas las cuotas.
1 registro.*/

select nombre from socios
where exists
(select * from inscriptos where cuotas = 10 and numero = numerosocio)


---------------------------------------------- 97 - Subconsulta simil autocombinación -------------------------------------------------------

if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2)
 );

 insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',20.00);
 insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll','Plaza',35.00);
 insert into libros values('Aprenda PHP','Mario Molina','Siglo XXI',40.00);
 insert into libros values('El aleph','Borges','Emece',10.00);
 insert into libros values('Ilusiones','Richard Bach','Planeta',15.00);
 insert into libros values('Java en 10 minutos','Mario Molina','Siglo XXI',50.00);
 insert into libros values('Martin Fierro','Jose Hernandez','Planeta',20.00);
 insert into libros values('Martin Fierro','Jose Hernandez','Emece',30.00);
 insert into libros values('Uno','Richard Bach','Planeta',10.00);


select distinct l1.titulo
from libros as l1
where l1.titulo in
(select l2.titulo
from libros as l2 
where l1.editorial <> l2.editorial);


-- Con el siguiente "join" se obtiene el mismo resultado:

select distinct l1.titulo from libros l1
join libros l2 on (l1.titulo = l2.titulo and l1.autor=l2.autor ) 
where l1.editorial <> l2.editorial


/*
Otro ejemplo: Buscamos todos los libros que tienen el mismo precio que "El aleph" empleando
 subconsulta:
*/

select l1.titulo from libros l1
where l1.titulo <> 'El aleph' 
and l1.precio in 
(select l2.precio 
from libros l2 
where  l2.titulo = 'El aleph')

-- Buscamos los libros cuyo precio supere el precio promedio de los libros por editorial:

select titulo,editorial, precio from libros l1
where precio >
(select avg(l2.precio) from libros l2 
 where l1.editorial = l2.editorial
)

-------------- practica jeje -----------------------------------

-- Obtenemos la lista de los libros que han sido publicados por distintas editoriales
--  empleando una consulta correlacionada:

select distinct titulo from libros l1
where titulo in
(select titulo from libros l2 where l1.editorial<>l2.editorial)


-- El siguiente "join" retorna el mismo resultado:

select distinct l1.titulo from libros l1
join libros l2 on (l2.titulo = l1.titulo)
where l1.editorial <> l2.editorial 

-- Buscamos todos los libros que tienen el mismo precio que "El aleph" empleando subconsulta:

select l1.titulo from libros l1 
where  l1.titulo <> 'El aleph' and l1.precio = 
(select l2.precio from libros l2 where titulo = 'El aleph')

-- Buscamos todos los libros que tienen el mismo precio que "El aleph" empleando "join":

select distinct l1.titulo from libros l1
join libros l2 on (l1.precio=l2.precio)
where l2.titulo = 'El aleph' and l1.titulo <> 'El aleph'


-- Buscamos los libros cuyo precio supere el precio promedio de los libros por editorial:

select distinct l1.titulo from libros l1
where l1.precio > 
(select avg(l2.precio) from libros l2 where l1.editorial = l2.editorial)


-- Obtenemos la misma salida pero empleando un "join" con "having":

select l1.titulo,l1.editorial,l1.precio from libros l1
join libros l2 on (l1.editorial = l2.editorial)
group by l1.titulo,l1.editorial,l1.precio
having l1.precio > avg(l2.precio)


----------------------------------------- Primer problema:  --------------------------------------------------------------

 if object_id('deportes') is not null
  drop table deportes;


   create table deportes(
  nombre varchar(15),
  profesor varchar(30),
  dia varchar(10),
  cuota decimal(5,2),
 );

  insert into deportes values('tenis','Ana Lopez','lunes',20);
 insert into deportes values('natacion','Ana Lopez','martes',15);
 insert into deportes values('futbol','Carlos Fuentes','miercoles',10);
 insert into deportes values('basquet','Gaston Garcia','jueves',15);
 insert into deportes values('padle','Juan Huerta','lunes',15);
 insert into deportes values('handball','Juan Huerta','martes',10);

 -- 4- Muestre los nombres de los profesores que dictan más de un deporte empleando subconsulta.

 select d1.nombre,d1.profesor from deportes d1
 where d1.profesor in
 (select d2.profesor from deportes d2 where d1.nombre <> d2.nombre)

 select distinct d1.profesor from deportes d1
 where d1.profesor in
 (select d2.profesor from deportes d2 where d1.nombre <> d2.nombre)


 -- 5- Obtenga el mismo resultado empleando join.

select d1.nombre,d1.profesor from deportes d1
join deportes d2 on (d1.profesor= d2.profesor)
where d1.nombre <> d2.nombre

select distinct d1.profesor from deportes d1
join deportes d2 on (d1.profesor= d2.profesor)
where d1.nombre <> d2.nombre


-- 6- Buscamos todos los deportes que se dictan el mismo día que un determinado deporte (natacion) 
--empleando subconsulta.

select nombre from deportes d1
where nombre <> 'natacion' and dia in
(select dia from deportes d2 where nombre = 'natacion')


-- 7- Obtenga la misma salida empleando "join".

select d1.nombre from deportes d1
join deportes d2 on (d1.dia = d2.dia)
where d2.nombre = 'natacion' and d1.nombre <>'natacion'


------------------------------------------------------- 98 - Subconsulta en lugar de una tabla ------------------------------------------------------------------


 if object_id('detalles') is not null
  drop table detalles;
 if object_id('facturas') is not null
  drop table facturas;
 if object_id('clientes') is not null
  drop table clientes;


  create table clientes(
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  primary key(codigo)
 );

 create table facturas(
  numero int not null,
  fecha datetime,
  codigocliente int not null,
  primary key(numero),
  constraint FK_facturas_cliente
   foreign key (codigocliente)
   references clientes(codigo)
   on update cascade
 );

 create table detalles(
  numerofactura int not null,
  numeroitem int not null, 
  articulo varchar(30),
  precio decimal(5,2),
  cantidad int,
  primary key(numerofactura,numeroitem),
   constraint FK_detalles_numerofactura
   foreign key (numerofactura)
   references facturas(numero)
   on update cascade
   on delete cascade,
 );

set dateformat 'ymd'

insert into clientes values('Juan Lopez','Colon 123');
 insert into clientes values('Luis Torres','Sucre 987');
 insert into clientes values('Ana Garcia','Sarmiento 576');

 insert into facturas values(1200,'2007-01-15',1);
 insert into facturas values(1201,'2007-01-15',2);
 insert into facturas values(1202,'2007-01-15',3);
 insert into facturas values(1300,'2007-01-20',1);

 insert into detalles values(1200,1,'lapiz',1,100);
 insert into detalles values(1200,2,'goma',0.5,150);
 insert into detalles values(1201,1,'regla',1.5,80);
 insert into detalles values(1201,2,'goma',0.5,200);
 insert into detalles values(1201,3,'cuaderno',4,90);
 insert into detalles values(1202,1,'lapiz',1,200);
 insert into detalles values(1202,2,'escuadra',2,100);
 insert into detalles values(1300,1,'lapiz',1,300);


-- Vamos a realizar un "select" para recuperar el número de factura, el código de cliente, 
--la fecha y la suma total de todas las facturas:

select numero,codigocliente,fecha,
(select sum(precio*cantidad) 
from detalles 
where numero = numerofactura ) as total
from facturas c


/*
Ahora utilizaremos el resultado de la consulta anterior como una tabla derivada que 
emplearemos en lugar de una tabla para realizar un "join" y recuperar el número de factura, 
el nombre del cliente y el monto total por factura:*/

select td.numero,c.nombre, td.total 
from clientes c
join (select numero,codigocliente,fecha,
(select sum(precio*cantidad) 
from detalles 
where numero = numerofactura ) as total
from facturas c ) td
on (c.codigo = td.codigocliente)


--------------------------------------------- Primer problema: --------------------------------------------------

 if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;
 if object_id('deportes') is not null
  drop table deportes;


   create table socios(
  documento char(8) not null, 
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table deportes(
  codigo tinyint identity,
  nombre varchar(20),
  profesor varchar(15),
  primary key(codigo)
 );
 create table inscriptos(
  documento char(8) not null, 
  codigodeporte tinyint not null,
  año char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,año),
  constraint FK_inscriptos_socio
   foreign key (documento)
   references socios(documento)
   on update cascade
   on delete cascade
 );


 insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

 insert into deportes values('basquet','Juan Juarez');
 insert into deportes values('futbol','Pedro Perez');
 insert into deportes values('natacion','Marina Morales');
 insert into deportes values('tenis','Marina Morales');

 insert into inscriptos values ('22222222',3,'2006','s');
 insert into inscriptos values ('23333333',3,'2006','s');
 insert into inscriptos values ('24444444',3,'2006','n');
 insert into inscriptos values ('22222222',3,'2005','s');
 insert into inscriptos values ('22222222',3,'2007','n');
 insert into inscriptos values ('24444444',1,'2006','s');
 insert into inscriptos values ('24444444',2,'2006','s');


 /*
 4- Realice una consulta en la cual muestre todos los datos de las inscripciones, 
 incluyendo el 
nombre del deporte y del profesor.
Esta consulta es un join.*/

select i.*,
(select nombre 
from deportes d 
where i.codigodeporte = d.codigo) deporte,
(select profesor 
from deportes d 
where i.codigodeporte = d.codigo) profesor
from inscriptos i

select i.*, nombre,profesor
from inscriptos i
join deportes d 
on(i.codigodeporte = d.codigo)


/*
5- Utilice el resultado de la consulta anterior como una tabla derivada para emplear en 
lugar de una 
tabla para realizar un "join" y recuperar el nombre del socio, el deporte en el cual 
está inscripto, 
el año, el nombre del profesor y la matrícula.
*/

select s.nombre,td.nombre,año,matricula from socios s
join (select i.*, nombre,profesor
from inscriptos i
join deportes d 
on(i.codigodeporte = d.codigo)) as td
on (s.documento = td.documento)



--------------------------------------------------- 99 - Subconsulta (update - delete) -------------------------------------------------------------------------

 if object_id('libros') is not null
  drop table libros;
 if object_id('editoriales') is not null
  drop table editoriales;


  create table editoriales(
  codigo tinyint identity,
  nombre varchar(30),
  primary key (codigo)
 );
 
 create table libros (
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  codigoeditorial tinyint,
  precio decimal(5,2),
  primary key(codigo)
 );


  insert into editoriales values('Planeta');
 insert into editoriales values('Emece');
 insert into editoriales values('Paidos');
 insert into editoriales values('Siglo XXI');

 insert into libros values('Uno','Richard Bach',1,15);
 insert into libros values('Ilusiones','Richard Bach',2,20);
 insert into libros values('El aleph','Borges',3,10);
 insert into libros values('Aprenda PHP','Mario Molina',4,40);
 insert into libros values('Poemas','Juan Perez',1,20);
 insert into libros values('Cuentos','Juan Perez',3,25);
 insert into libros values('Java en 10 minutos','Marcelo Perez',2,30);


-- Actualizamos el precio de todos los libros de editorial "Emece" incrementándolos en un 10%:

select titulo,autor,precio from libros 
where codigoeditorial =
(select codigo from editoriales e where nombre = 'Emece')

update libros set precio = precio + (precio*0.1)
where codigoeditorial =
(select codigo from editoriales e where nombre = 'Emece')

select titulo,autor,precio from libros l
join editoriales e on(l.codigoeditorial = e.codigo)
where nombre = 'Emece'

update libros set precio = precio + (precio*0.1)
from libros l
join editoriales e on(l.codigoeditorial = e.codigo)
where nombre = 'Emece'


-- Eliminamos todos los libros de las editoriales que tiene publicados libros de "Juan Perez":

select * from libros
  where codigoeditorial in
   (select e.codigo
    from editoriales as e
    join libros
    on codigoeditorial=e.codigo
    where autor='Juan Perez');

delete from libros
  where codigoeditorial in
   (select e.codigo
    from editoriales as e
    join libros
    on codigoeditorial=e.codigo
    where autor='Juan Perez');

select titulo,autor from libros 
where autor = 'Juan Perez' and codigoeditorial in
(select codigo from editoriales)

delete from libros 
where autor = 'Juan Perez' and codigoeditorial in
(select codigo from editoriales)


select titulo,autor from libros l
join editoriales e on(l.codigoeditorial = e.codigo)
where autor = 'Juan Perez'

delete libros 
from libros l
join editoriales e on(l.codigoeditorial = e.codigo)
where autor = 'Juan Perez'


-- Actualizamos el precio de todos los libros de editorial "Emece" incrementándolos en un 10%:

select titulo,autor,precio from libros l
where codigoeditorial in 
(select codigo from editoriales where nombre = 'Emece')

update libros set precio = precio + (precio*0.1)
where codigoeditorial in 
(select codigo from editoriales where nombre = 'Emece')


select titulo,autor,precio from libros l
join editoriales e on (l.codigoeditorial = e.codigo)
where nombre = 'Emece'

update libros set precio= precio+(precio*0.1)
from libros l
join editoriales e on (l.codigoeditorial = e.codigo)
where nombre = 'Emece'


-- Eliminamos todos los libros de las editoriales que tiene publicados libros de "Juan Perez":

select titulo,autor from libros
where codigoeditorial in
(select e.codigo from editoriales e 
join libros l on(e.codigo = l.codigoeditorial)
where autor = 'Juan Perez'
)


delete from libros
where codigoeditorial in
(select e.codigo from editoriales e 
join libros l on(e.codigo = l.codigoeditorial)
where autor = 'Juan Perez'
)


-------------------------------------------- Primer problema: ---------------------------------------------------

 if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;

   create table socios(
  numero int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (numero)
 );
 
 create table inscriptos (
  numerosocio int not null,
  deporte varchar(20) not null,
  matricula char(1),-- 'n' o 's'
  primary key(numerosocio,deporte),
  constraint FK_inscriptos_socio
   foreign key (numerosocio)
   references socios(numero)
 );


  insert into socios values('23333333','Alberto Paredes','Colon 111');
 insert into socios values('24444444','Carlos Conte','Sarmiento 755');
 insert into socios values('25555555','Fabian Fuentes','Caseros 987');
 insert into socios values('26666666','Hector Lopez','Sucre 344');

 insert into inscriptos values(1,'tenis','s');
 insert into inscriptos values(1,'basquet','s');
 insert into inscriptos values(1,'natacion','s');
 insert into inscriptos values(2,'tenis','s');
 insert into inscriptos values(2,'natacion','s');
 insert into inscriptos values(2,'basquet','n');
 insert into inscriptos values(2,'futbol','n');
 insert into inscriptos values(3,'tenis','s');
 insert into inscriptos values(3,'basquet','s');
 insert into inscriptos values(3,'natacion','n');
 insert into inscriptos values(4,'basquet','n');


-- 4- Actualizamos la cuota ('s') de todas las inscripciones de un socio determinado (por documento) 
--empleando subconsulta.

select deporte,matricula from inscriptos 
where numerosocio in
(select numero from socios where nombre = 'Carlos Conte')

update inscriptos set matricula = 's'
where numerosocio in
(select numero from socios where nombre = 'Carlos Conte')

select deporte,matricula from inscriptos i
join socios s on(i.numerosocio = s.numero)
where nombre = 'Carlos Conte'

update inscriptos set matricula='a'
from inscriptos i
join socios s on(i.numerosocio = s.numero)
where nombre = 'Carlos Conte'


--5- Elimine todas las inscripciones de los socios que deben alguna matrícula.
--5 registros eliminados.

select * from inscriptos 
where matricula = 'n' and numerosocio in
(select numero from socios  )

delete from inscriptos 
where matricula = 'n' and numerosocio in
(select numero from socios  )

select * from inscriptos 
where numerosocio in
(select numero from socios 
join inscriptos on(numero = numerosocio) 
where matricula = 'n')

delete inscriptos 
where numerosocio in
(select numero from socios 
join inscriptos on(numero = numerosocio) 
where matricula = 'n')

----------------------------------------- 100 - Subconsulta (insert) -------------------------------------------------------

 if object_id('alumnos') is not null
  drop table alumnos;
 if object_id('aprobados') is not null
  drop table aprobados;

   create table alumnos(
  documento char(8) not null,
  nombre varchar(30),
  nota decimal(4,2)
   constraint CK_alumnos_nota_valores check (nota>=0 and nota <=10),
  primary key(documento),
 );

 create table aprobados(
  documento char(8) not null,
  nota decimal(4,2)
   constraint CK_aprobados_nota_valores check (nota>=0 and nota <=10),
  primary key(documento),
 );

  insert into alumnos values('30000000','Ana Acosta',8);
 insert into alumnos values('30111111','Betina Bustos',9);
 insert into alumnos values('30222222','Carlos Caseros',2.5); 
 insert into alumnos values('30333333','Daniel Duarte',7.7);
 insert into alumnos values('30444444','Estela Esper',3.4);


 insert into aprobados(documento,nota)
 select documento,nota from alumnos

 ------------------------------------------------- Problema: --------------------------------------------------------

-- Ingresamos registros en la tabla "aprobados" seleccionando registros de la tabla
-- "alumnos":

insert into aprobados
select documento,nota 
from alumnos where nota >=4

--Note que no se listan los campos en los cuales se cargan los datos porque tienen el 
--mismo nombre que los de la tabla de la cual extraemos la información.

insert into aprobados(documento,nota)
select documento,nota from alumnos 
where nota >=4

-------------------------------------------------- Primer problema:  --------------------------------------------------

 if object_id('facturas') is not null
  drop table facturas;
 if object_id('clientes') is not null
  drop table clientes;

   create table clientes(
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  primary key(codigo)
 );

 create table facturas(
  numero int not null,
  fecha datetime,
  codigocliente int not null,
  total decimal(6,2),
  primary key(numero),
  constraint FK_facturas_cliente
   foreign key (codigocliente)
   references clientes(codigo)
   on update cascade
 );

 set dateformat 'ymd'

  insert into clientes values('Juan Lopez','Colon 123');
 insert into clientes values('Luis Torres','Sucre 987');
 insert into clientes values('Ana Garcia','Sarmiento 576');
 insert into clientes values('Susana Molina','San Martin 555');

 insert into facturas values(1200,'2007-01-15',1,300);
 insert into facturas values(1201,'2007-01-15',2,550);
 insert into facturas values(1202,'2007-01-15',3,150);
 insert into facturas values(1300,'2007-01-20',1,350);
 insert into facturas values(1310,'2007-01-22',3,100);
 
-- 4- El comercio necesita una tabla llamada "clientespref" en la cual quiere almacenar el 
--nombre y domicilio de aquellos clientes que han comprado hasta el momento más de 500 pesos
 --en mercaderías. Elimine la tabla si existe y créela con esos 2 campos:

 if object_id ('clientespref') is not null
  drop table clientespref;
 create table clientespref(
  nombre varchar(30),
  domicilio varchar(30)
 );
 
-- 5- Ingrese los registros en la tabla "clientespref" seleccionando registros de la tabla
-- "clientes" y "facturas".

insert into clientespref  (nombre,domicilio)
select nombre,domicilio from clientes c
join facturas f on(c.codigo = f.codigocliente)
group by nombre,domicilio
having sum(total) > 500


---------------------------------------- 101 - Crear tabla a partir de otra (select - into) --------------------------------------------------------

 if object_id('libros')is not null
  drop table libros;
 if object_id('editoriales')is not null
  drop table editoriales;

  create table libros( 
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  primary key(codigo)
 ); 

  insert into libros values('Uno','Richard Bach','Planeta',15);
 insert into libros values('El aleph','Borges','Emece',25);
 insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo',18);
 insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',45);
 insert into libros values('Ilusiones','Richard Bach','Planeta',14);
 insert into libros values('Java en 10 minutos','Mario Molina','Nuevo siglo',50);

-- Creamos una tabla llamada "editoriales" que contenga los nombres de las editoriales:

select distinct editorial as nombre 
into editoriales 
from libros 


-- Necesitamos una nueva tabla llamada "librosporeditorial" que contenga la cantidad de libros 
--de cada editorial. Primero eliminamos la tabla, si existe:

if object_id('cantidadporeditorial') is not null
drop table cantidadporeditorial

select editorial as nombre,count(editorial) as cantidad
into cantidadporeditorial 
from libros 
group by editorial


--Queremos una tabla llamada "ofertas4" que contenga los mismos campos que "libros" y guarde 
--los 4 libros más económicos. Primero eliminamos, si existe, la tabla "ofertas4":

if object_id('ofertas4') is not null 
drop table ofertas4

select top 4 * 
into ofertas4
from libros
order by precio 


-- Agregamos una columna a la tabla "editoriales" que contiene la ciudad en la cual está la casa 
--central de cada editorial:

alter table editoriales 
add ciudad varchar(40)

-- Actualizamos dicho campo:

 update editoriales set ciudad='Cordoba' where nombre='Planeta';
 update editoriales set ciudad='Cordoba' where nombre='Emece';
 update editoriales set ciudad='Buenos Aires' where nombre='Nuevo siglo';


 --Queremos una nueva tabla llamada "librosdecordoba" que contenga los títulos y autores de los
 -- libros de editoriales de Cordoba. En primer lugar, la eliminamos, si existe:

 if object_id('librosdecordoba') is not null
 drop table librosdecordoba

 
 select titulo,autor 
 into librosdecordoba
 from libros 
 join editoriales on (editorial = nombre) 
 where ciudad = 'Cordoba'

 ------------------------------------------- Primer problema:  -----------------------------------------------------------------

  if object_id('empleados')is not null
  drop table empleados;
 if object_id('sucursales')is not null
  drop table sucursales;


   create table sucursales( 
  codigo int identity,
  ciudad varchar(30) not null,
  primary key(codigo)
 ); 


 create table empleados( 
  documento char(8) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2),
  codigosucursal int,
  primary key(documento),
  constraint FK_empleados_sucursal
   foreign key (codigosucursal)
   references sucursales(codigo)
   on update cascade
 ); 

  insert into sucursales values('Cordoba');
 insert into sucursales values('Villa Maria');
 insert into sucursales values('Carlos Paz');
 insert into sucursales values('Cruz del Eje');

 insert into empleados values('22222222','Ana Acosta','Avellaneda 111','Secretaria',500,1);
 insert into empleados values('23333333','Carlos Caseros','Colon 222','Sistemas',800,1);
 insert into empleados values('24444444','Diana Dominguez','Dinamarca 333','Secretaria',550,2);
 insert into empleados values('25555555','Fabiola Fuentes','Francia 444','Sistemas',750,2);
 insert into empleados values('26666666','Gabriela Gonzalez','Guemes 555','Secretaria',580,3);
 insert into empleados values('27777777','Juan Juarez','Jujuy 777','Secretaria',500,4);
 insert into empleados values('28888888','Luis Lopez','Lules 888','Sistemas',780,4);
 insert into empleados values('29999999','Maria Morales','Marina 999','Contaduria',670,4);


 --5- Realice un join para mostrar todos los datos de "empleados" incluyendo la ciudad de 
 --la sucursal:
 --select documento,nombre,domicilio,seccion,sueldo,ciudad

 select documento,nombre,domicilio,seccion,sueldo, ciudad 
 from empleados e
 join sucursales s on(e.codigosucursal = s.codigo) 


-- 6-Cree una tabla llamada "secciones" que contenga las secciones de la empresa (primero elimínela, si 
--existe):

if object_id('secciones') is not null
drop table secciones 


select distinct seccion 
into secciones
from empleados 


--8- Se necesita una nueva tabla llamada "sueldosxseccion" que contenga la suma de los sueldos de los 
--empleados por sección. Primero elimine la tabla, si existe:

 if object_id('sueldosxseccion') is not null
  drop table sueldosxseccion;


select seccion, sum(sueldo) as total
into sueldosxseccion
from empleados 
group by seccion 


--10- Se necesita una tabla llamada "maximossueldos" que contenga los mismos campos que "empleados" y 
--guarde los 3 empleados con sueldos más altos. Primero eliminamos, si existe, la tabla 
--"maximossueldos":

go

if OBJECT_ID('maximossueldos') is not null
drop table maximossueldos

select top 3 * 
into maximossueldos
from empleados 
order by sueldo desc



--12- Se necesita una nueva tabla llamada "sucursalCordoba" que contenga los nombres y sección de los 
--empleados de la ciudad de Córdoba. En primer lugar, eliminamos la tabla, si existe. Luego, consulte 
--las tablas "empleados" y "sucursales" y guarde el resultado en la nueva tabla:

if object_id('sucursalCordoba') is not null
drop table sucursalCordoba;

select nombre,seccion 
into sucursalCordoba
from empleados e
join sucursales s on (e.codigosucursal = s.codigo)
where ciudad = 'Cordoba'


------------------------------------------------------- 102 - go  -------------------------------------------------------------


--"go" es un signo de finalización de un lote de sentencias. No es una sentencia, es un comando. 
--El lote de sentencias está compuesto por todas las sentencias antes de "go" o todas 
--las sentencias entre dos "go".

--Las sentencias no deben ocupar la misma linea en la que está "go".

--Habrá notado que no se puede ejecutar un procedimiento almacenado luego de otras sentencias 
--a menos que se incluya "execute" (o "exec").

select * from empleados 
sp_helpconstraint empleados 


select *from empleados;
 exec sp_helpconstraint empleados;

 select *from empleados;
 go
 sp_helpconstraint empleados;

 ----------------------------------------------------------- 103 - Vistas --------------------------------------------------------------


  if object_id('empleados') is not null
  drop table empleados;
 if object_id('secciones') is not null
  drop table secciones;


   create table secciones(
  codigo tinyint identity,
  nombre varchar(20),
  sueldo decimal(5,2)
   constraint CK_secciones_sueldo check (sueldo>=0),
  constraint PK_secciones primary key (codigo)
 );


 create table empleados(
  legajo int identity,
  documento char(8)
   constraint CK_empleados_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  sexo char(1)
   constraint CK_empleados_sexo check (sexo in ('f','m')),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  seccion tinyint not null,
  cantidadhijos tinyint
   constraint CK_empleados_hijos check (cantidadhijos>=0),
  estadocivil char(10)
   constraint CK_empleados_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
  fechaingreso datetime,
   constraint PK_empleados primary key (legajo),
  constraint FK_empleados_seccion
   foreign key (seccion)
   references secciones(codigo)
   on update cascade,
  constraint UQ_empleados_documento
   unique(documento)
);


 insert into secciones values('Administracion',300);
 insert into secciones values('Contaduría',400);
 insert into secciones values('Sistemas',500);

 insert into empleados values('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10');
 insert into empleados values('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10');
 insert into empleados values('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado','1998-07-12');
 insert into empleados values('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09');
 insert into empleados values('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09');


 -- Eliminamos la vista "vista_empleados" si existe. Aún no hemos aprendido a eliminar 
 --vistas, lo veremos próximamente:

 if object_id('vista_empleados') is not null
  drop view vista_empleados;

  -- Creamos la vista "vista_empleados", que es resultado de una combinación en la cual se
  -- muestran 5 campos:

  create view vista_empleados
  as
  select e.nombre +' '+ apellido as nombre, sexo,
  s.nombre as seccion,cantidadhijos 
  from empleados e
  join secciones s
  on(e.seccion = codigo)
  

  select * from vista_empleados 

  --- Realizamos una consulta a la vista como si se tratara de una tabla:

  select seccion, count(*)
  from vista_empleados
  group by seccion

  -- Eliminamos la vista "vista_empleados_ingreso" si existe:

if object_id('vista_empleados_ingreso') is not null
  drop view vista_empleados_ingreso


-- Creamos otra vista de "empleados" denominada "vista_empleados_ingreso" que almacena 
-- la cantidad de empleados por año:

create view vista_empleados_ingreso (anio,empleados)
as
select datepart(year,fechaingreso), count(*)
from empleados
group by datepart(year,fechaingreso)

select * from vista_empleados_ingreso


--------------------------------------------- Primer problema: --------------------------------------------------------

 if object_id('inscriptos') is not null  
  drop table inscriptos;
 if object_id('socios') is not null  
  drop table socios;
 if object_id('profesores') is not null  
  drop table profesores; 
 if object_id('cursos') is not null  
  drop table cursos;

   create table socios(
  documento char(8) not null,
  nombre varchar(40),
  domicilio varchar(30),
  constraint PK_socios_documento
   primary key (documento)
 );

 create table profesores(
  documento char(8) not null,
  nombre varchar(40),
  domicilio varchar(30),
  constraint PK_profesores_documento
   primary key (documento)
 );

 create table cursos(
  numero tinyint identity,
  deporte varchar(20),
  dia varchar(15),
   constraint CK_inscriptos_dia check (dia in('lunes','martes','miercoles','jueves','viernes','sabado')),
  documentoprofesor char(8),
  constraint PK_cursos_numero
   primary key (numero),
 );

 create table inscriptos(
  documentosocio char(8) not null,
  numero tinyint not null,
  matricula char(1),
  constraint CK_inscriptos_matricula check (matricula in('s','n')),
  constraint PK_inscriptos_documento_numero
   primary key (documentosocio,numero)
 );


  insert into socios values('30000000','Fabian Fuentes','Caseros 987');
 insert into socios values('31111111','Gaston Garcia','Guemes 65');
 insert into socios values('32222222','Hector Huerta','Sucre 534');
 insert into socios values('33333333','Ines Irala','Bulnes 345');

 insert into profesores values('22222222','Ana Acosta','Avellaneda 231');
 insert into profesores values('23333333','Carlos Caseres','Colon 245');
 insert into profesores values('24444444','Daniel Duarte','Sarmiento 987');
 insert into profesores values('25555555','Esteban Lopez','Sucre 1204');

 insert into cursos values('tenis','lunes','22222222');
 insert into cursos values('tenis','martes','22222222');
 insert into cursos values('natacion','miercoles','22222222');
 insert into cursos values('natacion','jueves','23333333');
 insert into cursos values('natacion','viernes','23333333');
 insert into cursos values('futbol','sabado','24444444');
 insert into cursos values('futbol','lunes','24444444');
 insert into cursos values('basquet','martes','24444444');

 insert into inscriptos values('30000000',1,'s');
 insert into inscriptos values('30000000',3,'n');
 insert into inscriptos values('30000000',6,null);
 insert into inscriptos values('31111111',1,'s');
 insert into inscriptos values('31111111',4,'s');
 insert into inscriptos values('32222222',8,'s');


 3- Elimine la vista "vista_club" si existe:

 if object_id('vista_club') is not null
  drop view vista_club;

--  4- Cree una vista en la que aparezca el nombre y documento del socio, el deporte, 
--el día y el nombre del profesor.
go
create view vista_club
as
select s.nombre as socio,s.documento,c.deporte,c.dia,p.nombre as profesor
from socios s
join inscriptos i on(s.documento = i.documentosocio)
join cursos c on (i.numero = c.numero)
join profesores p on(p.documento = c.documentoprofesor)


go
 create view vista_club2 as
  select s.nombre as socio,s.documento as docsocio,s.domicilio as domsocio,c.deporte,dia,
   p.nombre as profesor, matricula
   from socios as s
   full join inscriptos as i
   on s.documento=i.documentosocio
   full join cursos as c
   on i.numero=c.numero
   full join profesores as p
   on c.documentoprofesor=p.documento;

-- 5- Muestre la información contenida en la vista.

select * from vista_club
select * from vista_club2


--6- Realice una consulta a la vista donde muestre la cantidad de socios inscriptos en cada deporte 
--ordenados por cantidad.

select deporte,count(*) cantidad
from vista_club
group by deporte
order by cantidad


-- 7- Muestre (consultando la vista) los cursos (deporte y día) para los cuales no hay inscriptos.

select deporte,dia 
from cursos c1
where not exists
(select distinct socio,v.deporte,v.dia
from vista_club v
join inscriptos i on(v.documento = i.documentosocio)
join cursos c on(c.numero = i.numero)
where c1.deporte = v.deporte and c1.dia = v.dia
)

select deporte,dia from vista_club2
where socio is null and deporte is not null

-- 8- Muestre los nombres de los socios que no se han inscripto en 
--ningún curso (consultando la vista)

select socio from vista_club2 
where deporte is null and socio is not null

select nombre from socios 
where documento not in(
select documentosocio from inscriptos i
join socios on(documento = documentosocio)
join cursos c on(i.numero = c.numero)
)

select nombre from socios s1
where not exists(
select s.documento,s.nombre 
from socios s
join inscriptos i on(s.documento=i.documentosocio)
join cursos c on(i.numero = c.numero) 
where s1.documento = i.documentosocio
)

-- 9- Muestre (consultando la vista) los profesores que no tienen asignado ningún deporte aún.

select profesor from vista_club2 
where deporte is null and profesor is not null


select nombre as profesor 
from profesores 
where documento not in
(select documentoprofesor from cursos)

select nombre as profesor 
from profesores p
where not exists 
(select * from cursos 
where p.documento = documentoprofesor)

-- 10- Muestre (consultando la vista) el nombre y documento de los socios que deben 
--matrículas.

select socio,docsocio from vista_club2 
where matricula = 'n' and socio is not null and deporte is not null

select nombre from socios 
join inscriptos on(documento = documentosocio) 
where matricula = 'n'

-- 11- Consulte la vista y muestre los nombres de los profesores y los días en que 
-- asisten al club para dictar sus clases.

select distinct profesor,dia
  from vista_club2 where profesor is not null ;

select p.nombre as profesor,dia from profesores p
left join cursos c on(p.documento = c.documentoprofesor)



-- 12-  Consulte la vista y muestre los nombres de los profesores y los días en que 
-- asisten al club para dictar sus clases. pero ordenada por día.

select nombre as profesor, dia 
from profesores p 
left join cursos c on(documentoprofesor = documento)
order by dia 

select distinct profesor,dia 
from vista_club2
where profesor is not null 
order by dia


-- 13- Muestre todos los socios que son compañeros en tenis los lunes.

select socio from vista_club2 
where dia = 'lunes' and deporte = 'tenis'

select nombre as socio from socios s
join inscriptos i on(documento = documentosocio)
join cursos c on(c.numero = i.numero)
where dia = 'lunes' and deporte = 'tenis'

--14- Elimine la vista "vista_inscriptos" si existe y créela para que muestre la
-- cantidad de 
--inscriptos por curso, incluyendo el número del curso, el nombre del deporte
-- y el día.

create view vista_inscriptos
as
select deporte,dia,count(i.numero) as cantidad from cursos c
left join inscriptos i on(i.numero = c.numero)
group by c.numero,dia,c.deporte

create view vista_inscriptos
as
select deporte,dia ,(select count(*) from inscriptos i where i.numero = c.numero ) as cantidad
from cursos c 

select * from vista_inscriptos


----------------------------------------------------- 104 - Vistas (información) -------------------------------------------------------------------

sp_help
go
sp_help vista_inscriptos
go
sp_helptext vista_inscriptos
go
sp_depends vista_inscriptos


sp_depends empleados;


 select *from sysobjects;

 select *from sysobjects
  where xtype='V' and-- tipo vista
  name like 'vista%';--búsqueda con comodín


-------------------------------------------------------------- Problema ----------------------------------------------------------------

 if object_id('empleados') is not null
  drop table empleados;
 if object_id('secciones') is not null
  drop table secciones;


  create table secciones(
  codigo tinyint identity,
  nombre varchar(20),
  sueldo decimal(5,2)
   constraint CK_secciones_sueldo check (sueldo>=0),
  constraint PK_secciones primary key (codigo)
 );

create table empleados(
  legajo int identity,
  documento char(8)
   constraint CK_empleados_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  sexo char(1)
   constraint CK_empleados_sexo check (sexo in ('f','m')),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  seccion tinyint not null,
  cantidadhijos tinyint
   constraint CK_empleados_hijos check (cantidadhijos>=0),
  estadocivil char(10)
   constraint CK_empleados_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
  fechaingreso datetime,
   constraint PK_empleados primary key (legajo),
  constraint FK_empleados_seccion
   foreign key (seccion)
   references secciones(codigo)
   on update cascade,
  constraint UQ_empleados_documento
   unique(documento)
);


insert into secciones values('Administracion',300);
 insert into secciones values('Contaduría',400);
 insert into secciones values('Sistemas',500);

 insert into empleados values('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10');
 insert into empleados values('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10');
 insert into empleados values('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado','1998-07-12');
 insert into empleados values('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09');
 insert into empleados values('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09');


 -- Eliminamos la vista "vista_empleados" si existe:

 if object_id('vista_empleados') is not null
 drop view vista_empleados

 -- Creamos la vista "vista_empleados", que es resultado de una combinación en la cual 
 --se muestran 5 campos:

 go
create view vista_empleados
as
select apellido+' '+e.nombre as nombre, sexo, s.nombre as seccion,cantidadhijos 
from empleados e
join secciones s on(e.seccion = s.codigo)


select * from vista_empleados 


-- Ejecutamos "sp_help" enviándole como argumento el nombre de la vista:

sp_help vista_empleados 

-- Vemos el texto que define la vista:

sp_helptext vista_empleados


--Ejecutamos el procedimiento almacenado del sistema "sp_depends" seguido del nombre
-- de la vista:

sp_depends vista_empleados

-- Ejecutamos el procedimiento "sp_depends" seguido del nombre de la tabla "empleados":

sp_depends empleados 

-- Consultamos la tabla del sistema "sysobjects":

select * from sysobjects


-- Si queremos ver todas las vistas creadas por nosotros, podemos tipear:

 select *from sysobjects
  where xtype='V' and-- tipo vista
  name like 'vista%';--búsqueda con comodín


  ------------------------------------------------------ 105 - vistas (encriptar) --------------------------------------------------------

   if object_id('empleados') is not null
  drop table empleados;
 if object_id('secciones') is not null
  drop table secciones;


  create table secciones(
  codigo tinyint identity,
  nombre varchar(20),
  sueldo decimal(5,2)
   constraint CK_secciones_sueldo check (sueldo>=0),
  constraint PK_secciones primary key (codigo)
 );

 create table empleados(
  legajo int identity,
  documento char(8)
   constraint CK_empleados_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  sexo char(1)
   constraint CK_empleados_sexo check (sexo in ('f','m')),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  seccion tinyint not null,
  cantidadhijos tinyint
   constraint CK_empleados_hijos check (cantidadhijos>=0),
  estadocivil char(10)
   constraint CK_empleados_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
  fechaingreso datetime,
   constraint PK_empleados primary key (legajo),
  constraint FK_empleados_seccion
   foreign key (seccion)
   references secciones(codigo)
   on update cascade,
  constraint UQ_empleados_documento
   unique(documento)
);


if object_id('vista_empleados') is not null
drop view vista_empleados


-- Creamos una vista con su definición oculta:

create view vista_empleados
with encryption
as
select e.nombre+' '+apellido as nombre, sexo,cantidadhijos, s.nombre as seccion
from empleados e
join secciones s on(e.seccion = s.codigo)


-- Ejecutamos el procedimiento almacenado del sistema "sp_helptext" seguido del nombre 
--de una vista encriptada:

sp_helptext vista_empleados

---------------------------------------------- 106 - Vistas (eliminar) ----------------------------------------------------------------

 if object_id('empleados') is not null
  drop table empleados;
 if object_id('secciones') is not null
  drop table secciones;



  create table secciones(
  codigo tinyint identity,
  nombre varchar(20),
  sueldo decimal(5,2)
   constraint CK_secciones_sueldo check (sueldo>=0),
  constraint PK_secciones primary key (codigo)
 );

 create table empleados(
  legajo int identity,
  documento char(8)
   constraint CK_empleados_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  sexo char(1)
   constraint CK_empleados_sexo check (sexo in ('f','m')),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  seccion tinyint not null,
  cantidadhijos tinyint
   constraint CK_empleados_hijos check (cantidadhijos>=0),
  estadocivil char(10)
   constraint CK_empleados_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
  fechaingreso datetime,
   constraint PK_empleados primary key (legajo),
  constraint FK_empleados_seccion
   foreign key (seccion)
   references secciones(codigo)
   on update cascade,
  constraint UQ_empleados_documento
   unique(documento)
);


insert into secciones values('Administracion',300);
 insert into secciones values('Contaduría',400);
 insert into secciones values('Sistemas',500);

 insert into empleados values('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10');
 insert into empleados values('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10');
 insert into empleados values('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado','1998-07-12');
 insert into empleados values('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09');
 insert into empleados values('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09');


if object_id('vista_empleados') is not null
  drop view vista_empleados;


--Creamos la vista "vista_empleados", que es resultado de una combinación en la cual se 
--muestran 5 campos:

create view vista_empleados 
as
select e.nombre+' '+apellido as nombre, sexo,cantidadhijos, s.nombre as seccion
from empleados e
join secciones s
on (e.seccion = s.codigo)

-- Veamos la información de la vista:

select * from vista_empleados 

--Eliminamos la tabla "empleados":

drop table empleados 

-- Verificamos que la vista aún existe:

sp_help 

-- Eliminamos la vista:

drop view vista_empleados 

-- Verificamos que la vista ya no existe:

sp_help vista_empleados;

--------------------------------------------- 107 - Vistas (with check option) ------------------------------------------------------------

 if object_id('empleados') is not null
  drop table empleados;
 if object_id('secciones') is not null
  drop table secciones;

  create table secciones(
  codigo tinyint identity,
  nombre varchar(20),
  sueldo decimal(5,2)
   constraint CK_secciones_sueldo check (sueldo>=0),
  constraint PK_secciones primary key (codigo)
 );

 create table empleados(
  legajo int identity,
  documento char(8)
   constraint CK_empleados_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  sexo char(1)
   constraint CK_empleados_sexo check (sexo in ('f','m')),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  seccion tinyint not null,
  cantidadhijos tinyint
   constraint CK_empleados_hijos check (cantidadhijos>=0),
  estadocivil char(10)
   constraint CK_empleados_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
  fechaingreso datetime,
   constraint PK_empleados primary key (legajo),
  constraint FK_empleados_seccion
   foreign key (seccion)
   references secciones(codigo)
   on update cascade,
  constraint UQ_empleados_documento
   unique(documento)
 );

 insert into secciones values('Administracion',300);
 insert into secciones values('Contaduría',400);
 insert into secciones values('Sistemas',500);

 insert into empleados values('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10');
 insert into empleados values('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10');
 insert into empleados values('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado','1998-07-12');
 insert into empleados values('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09');
 insert into empleados values('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09');

  
  --Eliminamos la vista "vista_empleados" si existe:

 if object_id('vista_empleados') is not null
  drop view vista_empleados;

 --Creamos la vista "vista_empleados", que es resultado de una combinación:

create view vista_empleados
 as
  select apellido, e.nombre, sexo, s.nombre as seccion
  from empleados as e
  join secciones as s
  on seccion=codigo
  where s.nombre='Administracion'
  with check option;

 
 select *from vista_empleados;

update vista_empleados set nombre='zzz' where nombre='bbb';
update empleados set nombre='zzz' where nombre='bbb';

-- Podemos actualizar el nombre, apellido y sexo a través de la vista, pero no el campo "seccion" porque está restringuido.

update vista_empleados set seccion = 'Seguridad' where seccion ='Administracion'

select *from empleados;

----------------------------------------------- 107 - Vistas (with check option) --------------------------------------------------------

if object_id('clientes') is not null
  drop table clientes;
 if object_id('ciudades') is not null
  drop table ciudades;
 

  create table ciudades(
  codigo tinyint identity,
  nombre varchar(20),
  constraint PK_ciudades
   primary key (codigo)
 );

 create table clientes(
  nombre varchar(20),
  apellido varchar(20),
  documento char(8),
  domicilio varchar(30),
  codigociudad tinyint
   constraint FK_clientes_ciudad
    foreign key (codigociudad)
   references ciudades(codigo)
   on update cascade
 );


  insert into ciudades values('Cordoba');
 insert into ciudades values('Carlos Paz');
 insert into ciudades values('Cruz del Eje');
 insert into ciudades values('La Falda');

 insert into clientes values('Juan','Perez','22222222','Colon 1123',1);
 insert into clientes values('Karina','Lopez','23333333','San Martin 254',2);
 insert into clientes values('Luis','Garcia','24444444','Caseros 345',1);
 insert into clientes values('Marcos','Gonzalez','25555555','Sucre 458',3);
 insert into clientes values('Nora','Torres','26666666','Bulnes 567',1);
 insert into clientes values('Oscar','Luque','27777777','San Martin 786',4);


-- 4- Elimine la vista "vista_clientes" si existe:
 if object_id('vista_clientes') is not null
  drop view vista_clientes;

--5- Cree la vista "vista_clientes" para que recupere el nombre, apellido, documento, 
--domicilio, el código y nombre de la ciudad a la cual pertenece, de la ciudad de 
--"Cordoba" empleando "with check 
--option".

create view vista_clientes
as
select c.nombre,apellido,documento,domicilio,cu.codigo, cu.nombre as ciudad 
from clientes c
join ciudades cu on(c.codigociudad = cu.codigo)
where cu.nombre = 'Cordoba'
with check option

-- 6- Consulte la vista:

select * from vista_clientes

-- 7- Actualice el apellido de un cliente a través de la vista.

update vista_clientes set apellido = 'Molina' where apellido = 'Garcia'

-- 9- Intente cambiar la ciudad de algún registro.

update vista_clientes set ciudad = 'DF' where ciudad = 'Cordoba'


--------------------------------------------- 108 - Vistas (modificar datos de una tabla a través de vistas) ----------------------------------------------------

 if object_id('empleados') is not null
  drop table empleados;
 if object_id('secciones') is not null
  drop table secciones;


   create table secciones(
  codigo tinyint identity,
  nombre varchar(20),
  sueldo decimal(5,2)
   constraint CK_secciones_sueldo check (sueldo>=0),
  constraint PK_secciones primary key (codigo)
 );

 create table empleados(
  legajo int identity,
  documento char(8)
   constraint CK_empleados_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  sexo char(1)
   constraint CK_empleados_sexo check (sexo in ('f','m')),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  seccion tinyint not null,
  cantidadhijos tinyint
   constraint CK_empleados_hijos check (cantidadhijos>=0),
  estadocivil char(10)
   constraint CK_empleados_estadocivil check (estadocivil in ('casado','divorciado','soltero','viudo')),
  fechaingreso datetime,
   constraint PK_empleados primary key (legajo),
  sueldo decimal(6,2),
  constraint FK_empleados_seccion
   foreign key (seccion)
   references secciones(codigo)
   on update cascade,
  constraint UQ_empleados_documento
   unique(documento)
);

insert into secciones values('Administracion',300);
 insert into secciones values('Contaduría',400);
 insert into secciones values('Sistemas',500);

 insert into empleados values('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10',600);
 insert into empleados values('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10',650);
 insert into empleados values('24444444', 'm', 'Garcia', 'Marcos', 'Sarmiento 1234', 2, 3, 'divorciado', '1998-07-12',800);
 insert into empleados values('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09',900);
 insert into empleados values('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09',700);

 if object_id('vista_empleados') is not null
  drop view vista_empleados;
 
-- Creamos la vista "vista_empleados", que es resultado de una combinación en la 
-- cual se muestran 5 campos:

create view vista_empleados 
as
select (apellido+' '+e.nombre) as nombre,sexo,
   s.nombre as seccion, cantidadhijos
   from empleados as e
   join secciones as s
   on codigo=seccion;


-- Eliminamos la vista "vista_empleados2" si existe:

 if object_id('vista_empleados2') is not null
  drop view vista_empleados2;

/*
Creamos otra vista de "empleados" denominada "vista_empleados2" que consulta solamente 
la tabla "empleados" con "with check option":
*/

create view vista_empleados2
as
  select nombre, apellido,fechaingreso,seccion,estadocivil,sueldo
   from empleados
  where sueldo>=600
  with check option;


select * from vista_empleados2

-- Ingresamos un registro en la vista "vista_empleados2":

insert into vista_empleados2 values ('Pedro','Perez','2000-10-10',1,'casado',800);

-- No es posible insertar un registro en la vista "vista_empleados" porque el campo de 
-- la vista "nombre" es un campo calculado.

insert into vista_empleados values ('XXX','XXX','2000-09-09',1,'casado',900)


-- Actualizamos la sección de un registro de la vista "vista_empleados":

update vista_empleados set seccion = 'Sistemas' where nombre = 'Lopez Ana'

-- Si intentamos actualizar el nombre de un empleado no lo permite porque es una columna calculada.

update vista_empleados set nombre = 'Laura G' where nombre = 'Lopez Ana'

-- Actualizamos el nombre de un registro de la vista "vista_empleados2":

update vista_empleados2 set nombre = 'Alejandra'  where nombre = 'Laura'


-- Eliminamos un registro de la vista "vista_empleados2":

delete vista_empleados2 where nombre = 'Pedro' 

--Si podemos eliminar registros de la vista "vista_empleados2" dicha vista solamente
-- consulta una tabla. 



-- No podemos eliminar registros de la vista "vista_empleados" porque
-- hay varias tablas en su definición.

delete from vista_empleados where nombre = 'Perez Alejandra'


----------------------------------------------------------- Primer problema:  --------------------------------------------------------------------

 if object_id('inscriptos') is not null  
  drop table inscriptos;
 if object_id('socios') is not null  
  drop table socios;
 if object_id('cursos') is not null  
  drop table cursos;


  create table socios(
  documento char(8) not null,
  nombre varchar(40),
  domicilio varchar(30),
  constraint PK_socios_documento
   primary key (documento)
 );

 create table cursos(
  numero tinyint identity,
  deporte varchar(20),
  dia varchar(15),
   constraint CK_inscriptos_dia check (dia in('lunes','martes','miercoles','jueves','viernes','sabado')),
  profesor varchar(20),
  constraint PK_cursos_numero
   primary key (numero),
 );


  create table inscriptos(
  documentosocio char(8) not null,
  numero tinyint not null,
  matricula char(1),
  constraint PK_inscriptos_documento_numero
   primary key (documentosocio,numero),
  constraint FK_inscriptos_documento
   foreign key (documentosocio)
   references socios(documento)
   on update cascade,
  constraint FK_inscriptos_numero
   foreign key (numero)
   references cursos(numero)
   on update cascade
  );


  insert into socios values('30000000','Fabian Fuentes','Caseros 987');
 insert into socios values('31111111','Gaston Garcia','Guemes 65');
 insert into socios values('32222222','Hector Huerta','Sucre 534');
 insert into socios values('33333333','Ines Irala','Bulnes 345');

 insert into cursos values('tenis','lunes','Ana Acosta');
 insert into cursos values('tenis','martes','Ana Acosta');
 insert into cursos values('natacion','miercoles','Ana Acosta');
 insert into cursos values('natacion','jueves','Carlos Caseres');
 insert into cursos values('futbol','sabado','Pedro Perez');
 insert into cursos values('futbol','lunes','Pedro Perez');
 insert into cursos values('basquet','viernes','Pedro Perez');

 insert into inscriptos values('30000000',1,'s');
 insert into inscriptos values('30000000',3,'n');
 insert into inscriptos values('30000000',6,null);
 insert into inscriptos values('31111111',1,'s');
 insert into inscriptos values('31111111',4,'s');
 insert into inscriptos values('32222222',1,'s');
 insert into inscriptos values('32222222',7,'s');


 -- 4- Realice un join para mostrar todos los datos de todas las tablas, sin repetirlos:
 
 select distinct documentosocio,s.nombre as socio, domicilio,matricula,deporte,dia,profesor 
 from socios s 
 join inscriptos i on(s.documento=i.documentosocio)
 join cursos c on(i.numero = c.numero)
 

 -- 5- Elimine, si existe, la vista "vista_cursos":
 if object_id('vista_cursos') is not null
  drop view vista_cursos;

-- 6- Cree la vista "vista_cursos" que muestre el número, deporte y día de todos los cursos.

create view vista_cursos
as
select numero,deporte,dia from cursos 

--- 7- Consulte la vista ordenada por deporte.

select * from vista_cursos
order by deporte 

/*8- Ingrese un registro en la vista "vista_cursos" y vea si afectó a "cursos".
Puede realizarse el ingreso porque solamente afecta a una tabla base.*/

insert into vista_cursos values ('Volley','lunes')


/*9- Actualice un registro sobre la vista y vea si afectó a la tabla "cursos".
Puede realizarse la actualización porque solamente afecta a una tabla base.*/

update vista_cursos set deporte ='Programacion' where numero = 8


/*10- Elimine un registro de la vista para el cual no haya inscriptos y vea si afectó a "cursos".
Puede realizarse la eliminación porque solamente afecta a una tabla base.*/

delete from vista_cursos where numero = 8 


/*11- Intente eliminar un registro de la vista para el cual haya inscriptos.
No lo permite por la restricción "foreign key".
*/

delete from vista_cursos where numero = 7



/*
12- Elimine la vista "vista_inscriptos" si existe y créela para que muestre el documento y nombre 
del socio, el numero de curso, el deporte y día de los cursos en los cuales está inscripto.
*/

if OBJECT_ID('vista_inscriptos') is not null
drop view vista_inscriptos

create view vista_inscriptos
as
select s.documento,nombre as socio,c.numero,deporte,dia 
from socios s 
join inscriptos i on(s.documento = i.documentosocio)
join cursos c on(i.numero = c.numero)


select * from vista_inscriptos 


/*13- Intente ingresar un registro en la vista.
No lo permite porque la modificación afecta a más de una tabla base. */

insert into vista_inscriptos values('1234567','XXXXXX',3,'YYYYY','DDDD')


/*
14- Actualice un registro de la vista.
Lo permite porque la modificación afecta a una sola tabla base.
*/

update vista_inscriptos set deporte='Beis' where numero = 7

/*15- Vea si afectó a la tabla "socios":
 */

 select *from socios;


 /*16- Intente actualizar el documento de un socio.
No lo permite por la restricción.*/

update vista_inscriptos set documento = '1111111' where documento = '31111111'


/*
17- Intente eliminar un registro de la vista.
No lo permite porque la vista incluye varias tablas.
*/

delete vista_inscriptos where documento = '1111111'

------------------------------------------------------ 109 - Vistas modificar (alter view) --------------------------------------------------------

if object_id('empleados') is not null
  drop table empleados;
 if object_id('secciones') is not null
  drop table secciones;


  create table secciones(
  codigo tinyint identity,
  nombre varchar(20),
  constraint PK_secciones primary key (codigo)
 );

 create table empleados(
  legajo int identity,
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  seccion tinyint not null,
  constraint FK_empleados_seccion
   foreign key (seccion)
   references secciones(codigo)
   on update cascade,
  constraint PK_empleados
   primary key (documento)
);


 insert into secciones values('Administracion');
 insert into secciones values('Contaduría');
 insert into secciones values('Sistemas');

 insert into empleados values('22222222','Lopez Ana','Colon 123',1);
 insert into empleados values('23333333','Lopez Luis','Sucre 235',1);
 insert into empleados values('24444444','Garcia Marcos','Sarmiento 1234',2);
 insert into empleados values('25555555','Gomez Pablo','Bulnes 321',3);
 insert into empleados values('26666666','Perez Laura','Peru 1254',3);

-- Eliminamos la vista "vista_empleados" si existe:

if OBJECT_ID('vista_empleados') is not null
drop view vista_empleados 


/*Creamos la vista "vista_empleados" encriptada que muestre algunos campos
 de los empleados de la sección 1 y colocamos "with check option":*/

 create view vista_empleados
 with encryption
 as
 select documento,nombre,seccion 
 from empleados
 where seccion = 1
 with check option

 -- Veamos el texto de la vista:

sp_helptext vista_empleados 


-- Si intentamos modificar la sección de un empleado desde la vista la opción
-- "with check option" no lo permite.

update vista_empleados set seccion = 3 where documento = '23333333'

-- Modificamos la vista para que muestre el domicilio y no colocamos la opción de 
--encriptación ni "with check option":

alter view vista_empleados 
as
select documento,nombre,seccion,domicilio 
from empleados 
where seccion = 1

-- Veamos el texto de la vista:

sp_helptext vista_empleados 

-- Actualizamos la sección de un empleado:

update vista_empleados set seccion = 2 where documento = '22222222'

-- Eliminamos la vista "vista_empleados2" si existe:

if object_id('vista_empleados2') is not null
  drop view vista_empleados2;

-- Creamos la vista "vista_empleados2" que muestre todos los campos de la tabla "empleados":

create view vista_empleados2
as
select * from empleados 

-- Agregamos un campo a la tabla "empleados":

alter table empleados 
add  sueldo decimal(6,2);

/*Note que el nuevo campo agregado a "empleados" no aparece, a pesar que la vista 
indica que muestre todos los campos de dicha tabla; esto sucede porque los campos se 
seleccionan al ejecutar "create view", para que aparezcan debemos alterar la vista:*/

alter view vista_empleados2
as 
select * from empleados 


--------------------------------------------------- Primer problema:  --------------------------------------------------------------------

 if object_id('inscriptos') is not null  
  drop table inscriptos;
 if object_id('socios') is not null  
  drop table socios;
 if object_id('cursos') is not null  
  drop table cursos;

 create table socios(
  documento char(8) not null,
  nombre varchar(40),
  domicilio varchar(30),
  constraint PK_socios_documento
   primary key (documento)
 );

  create table cursos(
  numero tinyint identity,
  deporte varchar(20),
  dia varchar(15),
   constraint CK_inscriptos_dia check (dia in('lunes','martes','miercoles','jueves','viernes','sabado')),
  profesor varchar(20),
  constraint PK_cursos_numero
   primary key (numero),
 );

  create table inscriptos(
  documentosocio char(8) not null,
  numero tinyint not null,
  matricula char(1),
  constraint PK_inscriptos_documento_numero
   primary key (documentosocio,numero),
  constraint FK_inscriptos_documento
   foreign key (documentosocio)
   references socios(documento)
   on update cascade,
  constraint FK_inscriptos_numero
   foreign key (numero)
   references cursos(numero)
   on update cascade
  );

 insert into socios values('30000000','Fabian Fuentes','Caseros 987');
 insert into socios values('31111111','Gaston Garcia','Guemes 65');
 insert into socios values('32222222','Hector Huerta','Sucre 534');
 insert into socios values('33333333','Ines Irala','Bulnes 345');

 insert into cursos values('tenis','lunes','Ana Acosta');
 insert into cursos values('tenis','martes','Ana Acosta');
 insert into cursos values('natacion','miercoles','Ana Acosta');
 insert into cursos values('natacion','jueves','Carlos Caseres');
 insert into cursos values('futbol','sabado','Pedro Perez');
 insert into cursos values('futbol','lunes','Pedro Perez');
 insert into cursos values('basquet','viernes','Pedro Perez');

 insert into inscriptos values('30000000',1,'s');
 insert into inscriptos values('30000000',3,'s');
 insert into inscriptos values('30000000',6,null);
 insert into inscriptos values('31111111',1,'n');
 insert into inscriptos values('31111111',4,'s');
 insert into inscriptos values('32222222',1,'n');
 insert into inscriptos values('32222222',7,'n');


 -- 4- Elimine la vista "vista_deudores" si existe:

 if object_id('vista_deudores') is not null
  drop view vista_deudores;


/*
5- Cree la vista "vista_deudores" que muestre el documento y nombre del socio, el 
deporte, el día y 
la matrícula, de todas las inscripciones no pagas colocando "with check option".
*/

create view vista_deudores 
as
select s.documento,s.nombre,deporte,dia, matricula 
from socios s
join inscriptos i on(s.documento = i.documentosocio)
join cursos c on(i.numero = c.numero)
where matricula = 'n'
with check option


-- 7- Veamos el texto de la vista.

sp_helptext vista_deudores 


/*8- Intente actualizar a "s" la matrícula de una inscripción desde la vista.
No lo permite por la opción "with check option".*/

update vista_deudores set matricula = 's' where documento = '31111111'


-- 9- Modifique el documento de un socio mediante la vista.

update vista_deudores set documento = '66666666' where nombre = 'Gaston Garcia'

/*
11- Modifique la vista para que muestre el domicilio, coloque la opción de 
encriptación y omita 
"with check option".
*/

alter view vista_deudores
with encryption
as
select s.documento,s.nombre,deporte,dia, matricula,domicilio
from socios s
join inscriptos i on(s.documento = i.documentosocio)
join cursos c on(i.numero = c.numero)
where matricula = 'n'

sp_helptext vista_deudores 


/*14- Actualice la matrícula de un inscripto.
Si se permite porque la opción "with check option" se quitó de la vista.*/

update vista_deudores set matricula = 's' where documento = '66666666'


-- 16- Elimine la vista "vista_socios" si existe:

 if object_id('vista_socios') is not null
  drop view vista_socios;

-- 17- Cree la vista "vista_socios" que muestre todos los campos de la tabla "socios".

create view vista_socios
as
select * from socios 


-- 19- Agregue un campo a la tabla "socios".

alter table socios 
add telefono varchar(11)


-- 20- Consulte la vista "vista_socios".

select *from vista_socios;

-- 21- Altere la vista para que aparezcan todos los campos.

alter view vista_socios
as
select * from socios 

--------------------------------------- 110 - Lenguaje de control de flujo (case) ---------------------------------------------------------

if object_id('alumnos') is not null
  drop table alumnos;

  create table alumnos(
  nombre varchar(40),
  nota tinyint,
    constraint CK_alunos_nota check (nota>=0 and nota<=10)
 );


 insert into alumnos values('Ana Acosta',8);
 insert into alumnos values('Carlos Caseres',4);
 insert into alumnos values('Federico Fuentes',2);
 insert into alumnos values('Gaston Guzman',3);
 insert into alumnos values('Hector Herrero',5);
 insert into alumnos values('Luis Luna',10);
 insert into alumnos values('Marcela Morales',7);
 insert into alumnos values('Marcela Morales',null);


 /*
 Queremos mostrar el nombre y nota de cada alumno y en una columna extra llamada "condicion"
  empleamos un case que testee la nota y muestre un mensaje diferente si en dicho campo hay un valor:

- 0, 1, 2 ó 3: 'libre';
- 4, 5 ó 6: 'regular';
- 7, 8, 9 ó 10: 'promocionado';
 */

 select nombre,nota , 
 case nota
 when '0' then 'Reprobado'
 when '1' then 'Reprobado'
 when '2' then 'Reprobado'
 when '3' then 'Reprobado'
 when '4' then 'Regular'
 when '5' then 'Regular'
 when '6' then 'Regular'
 when '7' then 'Promocionado'
 when '8' then 'Promocionado'
 when '9' then 'Promocionado'
 when '10' then 'Promocionado'
 end 
 as condicion
 from alumnos 
 order by nota 


 -- Obtenemos la misma salida pero empleando el "case" con operadores de comparación:

 select nombre,nota,
 case  
 when nota >=0 and nota <=3 then 'Reprobado'
 when nota >=4 and nota <=6 then 'REgular'
 when nota >=7 and nota <=10 then 'Promocionado'
 else 'Sin nota'
 end as condicion
 from alumnos 

 -- Vamos a agregar el campo "condicion" a la tabla:

 alter table alumnos 
 add condicion varchar(30) null

/*
Recordemos que se puede emplear una expresión "case" en cualquier lugar en el que pueda utilizar 
una expresión. Queremos actualizar el campo "condicion" para guardar la condición de cada alumno 
según su nota:
*/


update alumnos set condicion = 
case
when nota >= 0 and nota <= 3 then 'Reprobado'
when nota >= 4 and nota <= 6 then 'Regular'
when nota >= 7 and nota <= 10 then 'Promocionado'
end 


/*
Mostramos la cantidad de alumnos libres, regulares y aprobados y en una columna extra mostramos 
un mensaje, ordenamos por cantidad:
*/

select condicion ,count(*) as Cantidad,
case condicion
when  'Reprobado' then 'Repite Curso'
when  'Regular' then 'Rinde Final'
when  'Promocionado' then 'No rinde Final'
else 'Sin datos'
end  as Resultado
from alumnos
group by condicion 
order by cantidad


-------------------------------------------  Primer problema: ----------------------------------------------------

if object_id('empleados') is not null
  drop table empleados;

   create table empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  sexo char(1),
  fechanacimiento datetime,
  fechaingreso datetime,
  cantidadhijos tinyint,
  sueldo decimal(5,2),
  primary key(documento)
);

set dateformat 'ymd'

 insert into empleados values ('22333111','Juan Perez','m','1970-05-10','1987-04-05',2,550);
 insert into empleados values ('25444444','Susana Morales','f','1975-11-06','1990-04-06',0,650);
 insert into empleados values ('20111222','Hector Pereyra','m','1965-03-25','1997-04-12',3,510);
 insert into empleados values ('30000222','Luis LUque','m','1980-03-29','1999-11-06',1,700);
 insert into empleados values ('20555444','Laura Torres','f','1965-12-22','2003-11-06',3,400);
 insert into empleados values ('30000234','Alberto Soto','m','1989-10-10','1999-11-06',2,420);
 insert into empleados values ('20125478','Ana Gomez','f','1976-09-21','1998-11-06',3,350);
 insert into empleados values ('24154269','Ofelia Garcia','f','1974-05-12','1990-11-06',0,390);
 insert into empleados values ('30415426','Oscar Torres','m','1978-05-02','1997-11-06',1,400);


 /*
 4- Es política de la empresa festejar cada fin de mes, los cumpleaños de todos los empleados que 
cumplen ese mes. Si los empleados son de sexo femenino, se les regala un ramo de rosas, si son de 
sexo masculino, una corbata. La secretaria de la Gerencia necesita saber cuántos ramos de rosas y 
cuántas corbatas debe comprar para el mes de mayo.
 */

 select 
 case sexo
 when 'f' then 'Ramo de rosas'
 when 'm' then 'Corbatas'
 end as productos, 
 count(*) as cuantos
 from empleados 
 where month(fechanacimiento) = '05'
 group by sexo


 /*
 5- Además, si el empleado cumple 10,20,30,40... años de servicio, se le regala una placa 
recordatoria. La secretaria de Gerencia necesita saber la cantidad de años de servicio que cumplen 
los empleados que ingresaron en el mes de abril para encargar dichas placas.
*/


select  nombre,DATEDIFF(year,fechaingreso,'2010/01/01') as años,
case DATEDIFF(year,fechaingreso,'2010/01/01')
when '10' then 'Premiado'
when '20' then 'Premiado'
when '30' then 'Premiado'
when '40' then 'Premiado'
when '50' then 'Premiado'
when '60' then 'Premiado'
when '70' then 'Premiado'
when '80' then 'Premiado'
end
from empleados 
where  month(fechaingreso) = '04'


/*6- La empresa paga un sueldo adicional por hijos a cargos. Para un sueldo menor o igual a $500 el 
salario familiar por hijo es de $200, para un sueldo superior, el monto es de $100 por hijo. Muestre 
el nombre del empleado, el sueldo básico, la cantidad de hijos a cargo, el valor del salario por 
hijo, el valor total del salario familiar y el sueldo final con el salario familiar incluido de 
todos los empleados.*/


select nombre,sueldo,cantidadhijos,
case 
when sueldo <=500 then 200
when sueldo > 500 then 100
end 
'Salario por hijo',
case 
when sueldo <=500 then 200*cantidadhijos
when sueldo > 500 then 100*cantidadhijos
end 'Salario Familiar',
case 
when sueldo <=500 then 200*cantidadhijos + sueldo
when sueldo > 500 then 100*cantidadhijos + sueldo
end 'Salario Final'
from empleados 


------------------------------------------------------- 111 - Lenguaje de control de flujo (if) --------------------------------------------------------------

if object_id('libros') is not null
  drop table libros;


  create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  cantidad tinyint,
  primary key (codigo)
 );


 insert into libros values('Uno','Richard Bach','Planeta',15,100);
 insert into libros values('El aleph','Borges','Emece',20,150);
 insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',50,200);
 insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,0);
 insert into libros values('Java en 10 minutos','Mario Molina','Emece',40,200);


 --Mostramos los títulos de los cuales no hay libros disponibles (cantidad=0); en caso que no haya, mostramos un mensaje:

 if exists(select * from libros where cantidad = 0)
 select titulo from libros where cantidad = 0
 else
 select 'No hay registros'
 
 
 --  Hacemos un descuento del 10% a todos los libros de editorial "Emece"; si no hay, 
 --mostramos un mensaje:

 if exists (select * from libros where editorial = 'Emece')
 begin
 update libros set precio = precio-(precio*0.1) where editorial = 'Emece'
 select 'Libros actulizados'
 end
 else
 select 'No se actulizó ningun registro'

 select * from libros where editorial = 'Emece'


 -- Eliminamos los libros de los cuales no hay stock (cantidad=0); si no hay, 
 --mostramos un mensaje:

 if exists (select * from libros where cantidad = 0)
 delete from libros where cantidad = 0
 else
 select 'No hay libros con stock en 0'


 --------------------------------------------- Primer problema:  --------------------------------------------------------------------------

 if object_id('empleados') is not null
  drop table empleados;


   create table empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  sexo char(1),
  fechanacimiento datetime,
  sueldo decimal(5,2),
  primary key(documento)
);

set dateformat 'ymd'

insert into empleados values ('22333111','Juan Perez','m','1970-05-10',550);
 insert into empleados values ('25444444','Susana Morales','f','1975-11-06',650);
 insert into empleados values ('20111222','Hector Pereyra','m','1965-03-25',510);
 insert into empleados values ('30000222','Luis LUque','m','1980-03-29',700);
 insert into empleados values ('20555444','Laura Torres','f','1965-12-22',400);
 insert into empleados values ('30000234','Alberto Soto','m','1989-10-10',420);
 insert into empleados values ('20125478','Ana Gomez','f','1976-09-21',350);
 insert into empleados values ('24154269','Ofelia Garcia','f','1974-05-12',390);
 insert into empleados values ('30415426','Oscar Torres','m','1978-05-02',400);


-- 4- Es política de la empresa festejar cada fin de mes, los cumpleaños de todos los empleados que 
--cumplen ese mes. Si los empleados son de sexo femenino, se les regala un ramo de rosas, si son de 
--sexo masculino, una corbata. La secretaria de la Gerencia necesita saber cuántos ramos de rosas y 
--cuántas corbatas debe comprar para el mes de mayo.


if exists (select * from empleados where month(fechanacimiento)  = '05')
	begin 
	select sexo ,count(*),
	case sexo
	when 'm' then 'Corbata'
	when 'f' then 'Rosas'
	end
	from empleados where  month(fechanacimiento)  = '05' 
	group by sexo
	end
else
	begin
	select 'No hay empleados que hayan cumplido años el mes de mayo'
	end


------------------------------------------------------- Segundo problema: ------------------------------------------------------

 if object_id('entradas') is not null
  drop table entradas;


   create table entradas(
  sala tinyint,
  fechahora datetime,
  capacidad smallint,
  entradasvendidas smallint,
  primary key(sala,fechahora)
 );


  insert into entradas values(1,'2006-05-10 20:00',300,50);
 insert into entradas values(1,'2006-05-10 23:00',300,250);
 insert into entradas values(2,'2006-05-10 20:00',400,350);
 insert into entradas values(2,'2006-05-11 20:00',400,380);
 insert into entradas values(2,'2006-05-11 23:00',400,400);
 insert into entradas values(3,'2006-05-12 20:00',350,350);
 insert into entradas values(3,'2006-05-12 22:30',350,100);
 insert into entradas values(4,'2006-05-12 20:00',250,0);


-- 4- Muestre, si existen, todas las funciones para la cuales hay entradas disponibles, sino un mensaje 
--que indique que están agotadas.


if exists (select * from entradas where (capacidad - entradasvendidas) > 0 )
begin
select sala,fechahora,capacidad-entradasvendidas as disponibles
from entradas where (capacidad - entradasvendidas) > 0
end
else
select 'No hay entradas disponibles'


-------------------------------------------------- 112 - Variables de usuario ----------------------------------------------------------------------------

 if object_id('libros') is not null
  drop table libros;


  create table libros(
  titulo varchar(30),
  autor varchar(25),
  editorial varchar(20),
  precio decimal(5,2)
 );

  insert into libros values('Uno','Bach Richard','Planeta',15);
 insert into libros values('El aleph','Borges J. L.','Emece',25);
 insert into libros values('Matematica estas ahi','Paenza Adrian','Siglo XXI',15);
 insert into libros values('Aprenda PHP','Mario Molina','Siglo XXI',35);
 insert into libros values('Java en 10 minutos','Mario Molina','Siglo XXI',35);

 -- Declare una variable llamada "@valor" de tipo "int" y vea su contenido:

declare @valor int
select @valor 


-- Declare una variable llamada "@nombre" de tipo "varchar(20)", asígnele un valor y vea su contenido:

declare @nombre varchar(20)
set @nombre = 'Luis'
select @nombre 


--Queremos saber todos los datos de los libros con mayor precio de la tabla "libros". 
--Declare una variable de tipo decimal,
-- busque el precio más alto de "libros" y almacénelo en una variable, luego utilice dicha variable para
--  mostrar todos los datos del libro:

select * from libros 
where precio = (select max(precio) from libros ) 


declare @mayorPrecio decimal(5,2)
select @mayorPrecio = max(precio) from libros 
select * from libros 
where precio = @mayorPrecio

---------------------------------------------------- Primer problema:  ----------------------------------------------------------


 if object_id('alumnos') is not null
  drop table alumnos;
 if object_id('notas') is not null
  drop table notas;


   create table alumnos(
  documento char(8) not null
   constraint CK_alumnos_documento check (documento like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
  nombre varchar(30),
  constraint PK_alumnos
  primary key(documento)
 );

 create table notas(
  documento char(8) not null,
  nota decimal(4,2)
   constraint CK_notas_nota check (nota between 0 and 10),
  constraint FK_notas_documento
  foreign key(documento)
  references alumnos(documento)
  on update cascade
 );


  insert into alumnos values('30111111','Ana Algarbe');
 insert into alumnos values('30222222','Bernardo Bustamante');
 insert into alumnos values('30333333','Carolina Conte');
 insert into alumnos values('30444444','Diana Dominguez');
 insert into alumnos values('30555555','Fabian Fuentes');
 insert into alumnos values('30666666','Gaston Gonzalez');

 insert into notas values('30111111',5.1);
 insert into notas values('30222222',7.8);
 insert into notas values('30333333',4);
 insert into notas values('30444444',2.5);
 insert into notas values('30666666',9.9);
 insert into notas values('30111111',7.3);
 insert into notas values('30222222',8.9);
 insert into notas values('30444444',6);
 insert into notas values('30666666',8);


 -- 4- Declare una variable llamada "@documento" de tipo "char(8)" y vea su contenido:

declare @documento char(8)
select @documento 

--5- Intente usar la variable "@documento" para almacenar el documento del alumno con la
-- nota más alta:

-- CON SUBCONSULTA

select a.documento from alumnos a
join notas n on(a.documento = n.documento)
where nota = 
(select max(nota) from alumnos a
join notas n on(a.documento = n.documento) )


-- CON VARIABLES 

declare @documento char(8);
select @documento = 
documento from notas 
where nota = (select max(nota) from notas ) 

select @documento

-- O TAMBIEN PUEDE SER DE ESTA FORMA

declare @documento char(8);
SET @documento = (SELECT documento from notas 
where nota = (select max(nota) from notas ) )

select @documento


-------------------------------------------------- 113 - Tipos de datos text, ntext y image  -----------------------------------------------------------------

if object_id('libros') is not null
  drop table libros;

  create table libros(
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(6,2),
  sinopsis text
 );


  insert into libros values
 ('Ilusiones','Richard Bach','Planeta',15,null);
 insert into libros values
 ('Aprenda PHP','Mario Molina','Nuevo Siglo',45,
'Trata todos los temas necesarios para el aprendizaje de PHP');
 insert into libros (titulo,autor,editorial) values
 ('Uno','Richard Bach','Planeta');
 insert into libros values
 ('El aleph','Borges','Emece',18,'Uno de los más célebres libros de este autor');


 -- La siguiente consulta muestra la cantidad de libros que tienen sinopsis:

 select count(*) from libros where sinopsis is not null


-- Agregamos una restricción "default" al campo "sinopsis" 
--(es la única restricción que puede aplicarse a campos de tipo "text"):

alter table libros
add constraint DF_libros_sinopsis
default 'Desconocido'
for sinopsis


-- Ingresamos un registro con valores por defecto:

insert into libros default values 

-------------------------------------------------- Primer problema:  ----------------------------------------------------------

 if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30),
  mail varchar(50),
  pais varchar (20),
  fecha datetime
  constraint DF_visitas_fecha default getdate(),
  comentarios text
  constraint DF_visitas_comentarios default 'Ninguno',
  constraint PK_visitas
  primary key(numero)
);

set dateformat 'ymd'

insert into visitas values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10',null);
 insert into visitas values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30',default);
 insert into visitas values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico',default,'Excelente página');
 insert into visitas values ('Mariano Perez','PerezM@hotmail.com','Argentina','2006-11-11 14:30','Muy buena y divertida');

 -- 4- Recupere todos los registros:

select * from visitas 


-- 5- Cuente la cantidad de visitas que tienen comentarios.
-- Retorna 3.

select count(*) from visitas 
where comentarios is not null


--6- Intente agregar una restricción "check" al campo de tipo "text":
--No lo permite.

 alter table visitas
  add constraint CK_comentarios
  check (comentarios not like '[0-9]%');


-- 7- Intente alterar el campo de tipo "text" para que no acepte valores nulos:

alter table visitas
alter column comentarios text not null 


-- 8- Elimine la regla llamada "RG_texto" (si existe):

if object_id('RG_texto') is not null
drop rule RG_texto


--9- Cree la regla "RG_texto" que no permita que el primer caracter sea un dígito:

create rule RG_texto
as @valor not like '[0-9]%'

-- 10- Asóciela al campo "nombre":

exec sp_bindrule RG_texto, 'visitas.nombre'


-- 11- Intente asociarla al campo "comentarios":

exec sp_bindrule RG_texto, 'visitas.comentarios'


-- 12- Quite la restricción "default" del campo "comentarios":

alter table visitas
drop DF_visitas_comentarios

-- 13- Ingrese un registro con valores por defecto y recupere todos los registros:

insert into visitas default values


-- 14- Elimine el valor predeterminado llamado "VP_SinComentarios":

drop default VP_SinComentarios


-- 15- Cree un valor por defecto que almacene el valor "Sin comentarios":

create default VP_SinComentarios
as  'Sin comentarios'

-- 16- Asócielo al campo "comentarios":

exec sp_bindefault VP_SinComentarios, 'visitas.comentarios'


-- 17- Ingrese un registro con valores por defecto y recupere todos los registros:

insert into visitas default values 


----------------------------------------- 114 - Tipo de dato text - ntext e image (punteros) ------------------------------------------------------------

if object_id('libros') is not null
  drop table libros;


   create table libros(
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(6,2),
  sinopsis text
 );

  insert into libros values
 ('Ilusiones','Richard Bach','Planeta',15,null);
 insert into libros values
 ('Aprenda PHP','Mario Molina','Nuevo Siglo',45,
    'Trata todos los temas necesarios para el aprendizaje de PHP');
 insert into libros (titulo,autor,editorial) values
 ('Uno','Richard Bach','Planeta');


 -- Veamos la dirección que almacena cada registro en el campo de tipo 
 --"text" ("sinopsis") de la tabla "libros":


 select titulo, textptr(sinopsis) as direccion from libros;


 -- La siguiente consulta muestra si los punteros son válidos en cada registro del 
 --campo "sinopsis" de la tabla "libros":


  select titulo,
  textvalid('libros.sinopsis', textptr(sinopsis)) as 'Puntero valido'
  from libros;


--Declaramos una variable a la cual le asignamos el valor del puntero a texto de un registro
-- y luego vemos si dicho puntero es válido:

 declare @puntero varbinary(16)
 select @puntero = textptr(sinopsis) from libros
  where titulo= 'Ilusiones'
 select textvalid('libros.sinopsis', @puntero);


 --Veamos el siguiente ejemplo:

 declare @puntero varbinary(16)
 select @puntero = textptr(sinopsis) from libros
 select textvalid('libros.sinopsis', @puntero);


 ------------------------------------------- 115 - Tipo de dato text - ntext e image (leer) --------------------------------------------------------

  if object_id('libros') is not null
  drop table libros;


  create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  sinopsis text
 );


  insert into libros values ('Ilusiones','Richard Bach','Planeta',null);
 insert into libros values ('Aprenda PHP','Mario Molina','Nuevo Siglo',
   'Contiene todos los temas necesarios para el aprendizaje de PHP');
 insert into libros (titulo,autor,editorial) values ('Uno','Richard Bach','Planeta');
 insert into libros values ('El Aleph','Borges','Emece',
   'Uno de los libros más célebres de este autor.');


   declare @puntero varbinary(16)
 select @puntero=textptr(sinopsis) 
  from libros
  where codigo=2
 readtext libros.sinopsis @puntero 9 50;

 --Leemos la información almacenada en el campo "sinopsis" de "libros" del registro 
 --con código 3, tal registro no tiene inicializado el campo "sinopsis", 
 --para que no ocurra un error, vamos a controlar el puntero antes de leer 
 --el campo:

 declare @puntero varbinary(16)
 select @puntero=textptr(sinopsis) 
  from libros where codigo=3
 if ( textvalid('libros.sinopsis', @puntero) =1 )
  readtext libros.sinopsis @puntero 0 0
 else select 'puntero invalido';


 -- Recuperamos la sinopsis del libro con código 4 (desde el comienzo al final), 
 --controlando que el puntero sea válido:

  declare @puntero varbinary(16)
 select @puntero=textptr(sinopsis) 
  from libros where codigo=4
 if (textvalid('libros.sinopsis', @puntero)=1)
  readtext libros.sinopsis @puntero 0 0
 else select 'puntero invalido';

---------------------------------------------- Primer problema:  ----------------------------------------------------

if object_id('visitas') is not null
  drop table visitas;

   create table visitas (
  numero int identity,
  nombre varchar(30),
  mail varchar(50),
  pais varchar (20),
  fecha datetime
  constraint DF_visitas_fecha default getdate(),
  comentarios text,
  constraint PK_visitas
  primary key(numero)
);

set dateformat 'ymd'

 insert into visitas values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10',null);
 insert into visitas values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30',default);
 insert into visitas values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico',default,'Excelente página');
 insert into visitas values ('Mariano Perez','PerezM@hotmail.com','Argentina','2006-11-11 14:30','Muy buena y divertida');

-- 4- Leemos la información almacenada en el campo "comentarios" de "visitas" del registro
--  número 3, 
--desde la posición 0, 10 caracteres.

declare @puntero varbinary(16)
set @puntero = (select textptr(comentarios) 
from visitas where numero = 3)
readtext visitas.comentarios @puntero 0 10


--5- Intente leer el campo "comentarios" del registro número 1.
--Error, porque el puntero es inválido.

declare @puntero varbinary(16)
set @puntero = 
(select textptr(comentarios) from visitas where numero = 1)
readtext visitas.comentarios @puntero 0 0



--6- Recupere el campo "comentarios" de la visita número 1 (desde el comienzo al final), 
--controlando 
--que el puntero sea válido.

declare @puntero varbinary(16)
set @puntero = (select textptr(comentarios) from visitas where numero = 1)
if(textvalid('visitas.comentarios', @puntero ) = 1)
readtext visitas.comentarios @puntero  0 0
else
select 'El puntero es no valido'

------------------------------------------- 116 - Tipo de dato text - ntext e image (escribir) ----------------------------------------------------

 if object_id('libros') is not null
  drop table libros;

   create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  sinopsis text
 );

 insert into libros values ('Ilusiones','Richard Bach','Planeta',null);
 insert into libros values ('Aprenda PHP','Mario Molina','Nuevo Siglo',
   'Contiene todos los temas necesarios para el aprendizaje de PHP');
 insert into libros (titulo,autor,editorial) values ('Uno','Richard Bach','Planeta');
 insert into libros values ('El Aleph','Borges','Emece','Uno de los libros más célebres de este autor.');


 --Colocamos el puntero a texto del campo "sinopsis" del registro con código 2 en una 
 --variable "@puntero" y luego "writetext" almacena el nuevo texto en el registro
 -- apuntado por "@puntero":

 declare @puntero binary(16)
 select @puntero = textptr (sinopsis)
  from libros
  where codigo=2
 writetext libros.sinopsis @puntero 'Este es un nuevo libro acerca de PHP escrito por el profesor 
Molina que aborda todos los temas necesarios para el aprendizaje desde cero de este lenguaje.';


--Leemos el campo "sinopsis" del libro cuyo código es 2, para ver si se actualizó:

 declare @puntero binary(16)
 select @puntero = textptr (sinopsis)
  from libros
  where codigo=2
 readtext libros.sinopsis @puntero 0 0;

 --Si intentamos actualizar un campo "text", "ntext" o "image" que tiene valor nulo o un 
 --puntero inválido, aparece un mensaje de error, por lo tanto, en el siguiente ejemplo,
 -- verificamos si el puntero es válido antes de pasárselo a la función "writetext":

 declare @puntero varbinary(16)
 select @puntero=textptr(sinopsis) 
  from libros where codigo=1
 if (textvalid('libros.sinopsis', @puntero)=1)
  writetext libros.sinopsis @puntero 'Trata de una gaviota que vuela más alto que las demás.'
 else select 'puntero invalido, no se actualizó el registro';

 -- Para crear un puntero válido debemos ingresar un valor con "insert" o "update":

 update libros set sinopsis='xx' where codigo=1;


 --Ahora si podemos actualizar el campo "sinopsis" del registro con código 1 con 
 --"writetext" porque ya tiene un puntero válido:

 declare @puntero varbinary(16)
 select @puntero=textptr(sinopsis) 
  from libros where codigo=1
 if (textvalid('libros.sinopsis', @puntero)=1)
  writetext libros.sinopsis @puntero 'Trata de una gaviota que vuela más alto que las demás.'
 else select 'puntero invalido, no se actualizó el registro';

 declare @puntero binary(16)
 select @puntero = textptr (sinopsis)
  from libros
  where codigo=1
 readtext libros.sinopsis @puntero 0 0;


 -- Creamos un puntero válido al ingresar un nuevo registro:

 insert into libros values('Alicia en el pais de las maravillas','Lewis Carroll','Planeta','');

 declare @puntero varbinary(16)
 select @puntero=textptr(sinopsis) 
  from libros where codigo=5
 if (textvalid('libros.sinopsis', @puntero)=1)
  writetext libros.sinopsis @puntero 'Trata de las aventuras de una niña en un país muy extraño.'
 else select 'puntero invalido, no se actualizó el registro';

--Veamos si se actualizó:

 declare @puntero binary(16)
 select @puntero = textptr (sinopsis)
  from libros
  where codigo=5
 readtext libros.sinopsis @puntero 0 0;

 ----------------------------------------- 117 - Tipo de dato text - ntext e image (actualizar) ------------------------------------------------

 if object_id('libros') is not null
  drop table libros;
 if object_id('ofertas') is not null
  drop table ofertas;

  create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  sinopsis text
 );

 create table ofertas(
  titulo varchar(40),
  sinopsis text
 );

  insert into libros values ('Ilusiones','Richard Bach','Planeta',null);
 insert into libros values ('Aprenda PHP','Mario Molina','Nuevo Siglo','Para aprender PHP a paso');
 insert into libros values ('Uno','Richard Bach','Planeta','');
 insert into libros values ('El Aleph','Borges','Emece','Uno de los libros más célebres de este autor.');

 insert into ofertas values ('Aprenda PHP','');


 --Necesitamos que en la sinopsis del libro "Aprenda PHP" se guarde "Para aprender PHP 
 --paso a paso"; debemos insertar en la posición 18, el texto "paso ", sin eliminar
 -- ningún caracter. Verificamos que el puntero sea válido, en caso de no serlo, 
 -- mostramos un mensaje de error:

  declare @puntero binary(16)
 select @puntero = textptr(sinopsis)
  from libros
  where titulo='Aprenda PHP'
  if (textvalid('libros.sinopsis',@puntero)=1)
   updatetext libros.sinopsis @puntero 18 0 'paso '
  else
   select 'Puntero inválido';

   select * from libros
select * from ofertas


--Leemos el campo "sinopsis" actualizado anteriormente para verificar que se actualizó:

 declare @puntero binary(16)
 select @puntero = textptr (sinopsis)
  from libros
  where titulo='Aprenda PHP'
 
 readtext libros.sinopsis @puntero 0 0;

 -- Necesitamos actualizar la sinopsis del libro "Aprenda PHP" de la tabla "ofertas" 
 --con la sinopsis del mismo libro de la tabla "libros":

 declare @puntero1 binary(16)
 select @puntero1 = textptr(sinopsis)
  from libros
  where titulo='Aprenda PHP'

 declare @puntero2 binary(16)
 select @puntero2 = textptr(sinopsis)
  from ofertas
  where titulo='Aprenda PHP'

  updatetext ofertas.sinopsis @puntero2 0 null
   libros.sinopsis @puntero1;

 --  Leemos el campo "sinopsis" actualizado anteriormente para verificar que se actualizó:

 declare @puntero binary(16)
 select @puntero = textptr (sinopsis)
  from ofertas
  where titulo='Aprenda PHP'
 
 readtext ofertas.sinopsis @puntero 0 0;

 ------------------------------------------ 118 - Tipo de dato text - ntext e image (funciones) ----------------------------------------------}

 if object_id('libros') is not null
  drop table libros;

  create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  sinopsis text
 );

  insert into libros values ('Ilusiones','Richard Bach','Planeta',null);
 insert into libros values ('Aprenda PHP','Mario Molina','Nuevo Siglo',
   'Para aprender PHP paso a paso');
 insert into libros values ('Programación elemental en PHP','Mario Molina','Planeta',
   'Contiene conceptos básicos de PHP');

-- Veamos la longitud del campo "sinopsis" de todos los libros:

 select titulo, datalength(sinopsis) as longitud
  from libros
  order by titulo

  -- Buscamos todos los libros en los cuales en su sinopsis se encuentre el texto "PHP":

SELECT * from libros where PATINDEX('%PHP%',sinopsis) > 0


-- Empleamos la función "patindex" para mostrar la posición en que se encuentra la cadena
-- "PHP" en la sinopsis de todos los libros:

SELECT PATINDEX('%PHP%',sinopsis) as posicion FROM libros

-- Seleccionamos los títulos y los primeros 10 caracteres de la sinopsis de cada 
--uno de ellos:

SELECT titulo, SUBSTRING(sinopsis,1,10) FROM libros 

------------------------------------------- 119 - Procedimientos almacenados --------------------------------------

--Vimos que SQL Server ofrece dos alternativas para asegurar la integridad de datos, la
-- integridad:

--1) DECLARATIVA, mediante el uso de restricciones (constraints), valores predeterminados 
--(defaults) y reglas (rules) y

--2) PROCEDIMENTAL, mediante la implementación de procedimientos almacenados y 
--desencadenadores (triggers).

--Nos detendremos ahora en procedimientos almacenados.

--Un procedimiento almacenado es un conjunto de instrucciones a las que se les da un 
--nombre, que se almacena en el servidor. Permiten encapsular tareas repetitivas.

--SQL Server permite los siguientes tipos de procedimientos almacenados:

--1) del sistema: están almacenados en la base de datos "master" y llevan el prefijo 
--"sp_"; permiten recuperar información de las tablas del sistema y pueden ejecutarse en 
--cualquier base de datos.

--2) locales: los crea el usuario (próximo tema).

--3) temporales: pueden ser locales, cuyos nombres comienzan con un signo numeral (#),
 --o globales, cuyos nombres comienzan con 2 signos numeral (##). Los procedimientos 
 --almacenados temporales locales están disponibles en la sesión de un solo usuario y 
 --se eliminan automáticamente al finalizar la sesión; los globales están disponibles en
 -- las sesiones de todos los usuarios.

--4) extendidos: se implementan como bibliotecas de vínculos dinámicos 
--(DLL, Dynamic-Link Libraries), se ejecutan fuera del entorno de SQL Server.
-- Generalmente llevan el prefijo "xp_". No los estudiaremos.


--Ventajas:

--- comparten la lógica de la aplicación con las otras aplicaciones, con lo cual el acceso y
-- las modificaciones de los datos se hacen en un solo sitio.

--- permiten realizar todas las operaciones que los usuarios necesitan evitando que tengan
-- acceso directo a las tablas.

--- reducen el tráfico de red; en vez de enviar muchas instrucciones, los usuarios realizan
-- operaciones enviando una única instrucción, lo cual disminuye el número de solicitudes
--  entre el cliente y el servidor.


------------------------------------------ 120 - Procedimientos almacenados (crear - ejecutar) -------------------------------------------------------------

--Vimos que SQL Server ofrece dos alternativas para asegurar la integridad de datos, la integridad:

--1) DECLARATIVA, mediante el uso de restricciones (constraints), valores predeterminados (defaults) y reglas (rules) y

--2) PROCEDIMENTAL, mediante la implementación de procedimientos almacenados y desencadenadores (triggers).


--SQL Server permite los siguientes tipos de procedimientos almacenados:

--1) del sistema: están almacenados en la base de datos "master" y llevan el prefijo "sp_"; permiten recuperar información de las
-- tablas del sistema y pueden ejecutarse en cualquier base de datos.

--2) locales: los crea el usuario (próximo tema).

--3) temporales: pueden ser locales, cuyos nombres comienzan con un signo numeral (#), o globales, cuyos nombres comienzan con
-- 2 signos numeral (##). Los procedimientos almacenados temporales locales están disponibles en la sesión de un solo usuario y 
-- se eliminan automáticamente al finalizar la sesión; los globales están disponibles en las sesiones de todos los usuarios.

--4) extendidos: se implementan como bibliotecas de vínculos dinámicos (DLL, Dynamic-Link Libraries), se ejecutan fuera del entorno 
--de SQL Server. Generalmente llevan el prefijo "xp_". No los estudiaremos.


--Al crear un procedimiento almacenado, las instrucciones que contiene se analizan para verificar si son correctas sintácticamente.
-- Si no se detectan errores, SQL Server guarda el nombre del procedimiento almacenado en la tabla del sistema "sysobjects"
--  y su contenido en la tabla del sistema "syscomments" en la base de datos activa. Si se encuentra algún error, no se crea.


select * from sysobjects 

select * from syscomments


-------------------------------------------------------- Problema: --------------------------------------------------------------------------------------

--- eliminación de la tabla "libros" si existe;
--- creación de la tabla "libros" con: codigo, titulo, autor, editorial, precio, cantidad;
--- ingresode algunos registros.


-- En primer lugar, debemos eliminarlo, si existe (no hemos aprendido aún a eliminar procedimientos almacenados

 if object_id('pa_crear_libros') is not null
  drop procedure pa_crear_libros;

-- Creamos el procedimiento:

create procedure pa_crear_libros
as

 if object_id('libros') is not null
  drop table libros

	create table libros
	(
		codigo int identity,
		titulo varchar(50),
		autor varchar(50),
		editorial varchar(50),
		precio decimal(6,2),
		cantidad smallint
		primary key (codigo)
	)

insert into libros values('Uno','Richard Bach','Planeta',15,5)
insert into libros values('Ilusiones','Richard Bach','Planeta',18,50)
insert into libros values('El aleph','Borges','Emece',25,9)
insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',45,100)
insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo',12,50)
insert into libros values('Java en 10 minutos','Mario Molina','Paidos',35,300);


execute pa_crear_libros


--Veamos si ha creado la tabla:

 select *from libros;

--Ejecutamos el procedimiento almacenado del sistema "sp_help" y el nombre del procedimiento almacenado para verificar que 
--existe el procedimiento creado recientemente:

sp_help pa_crear_libros



--Necesitamos un procedimiento almacenado que muestre los libros de los cuales hay menos de 10. 
--En primer lugar, lo eliminamos si existe:


 if object_id('pa_limite_libros') is not null
  drop procedure pa_limite_libros;

create procedure pa_limite_libros
as
select * from libros 
where cantidad < 10


sp_help pa_limite_libros

-- Lo ejecutamos:

exec pa_limite_libros


-- Modificamos algún registro y volvemos a ejecutar el procedimiento:

update libros set cantidad = 2 where codigo = 4


execute pa_limite_libros 


----------------------------------------------------------- Primer problema:  ---------------------------------------------------------------------------------

 if object_id('empleados') is not null
  drop table empleados;

   create table empleados(
  documento char(8),
  nombre varchar(20),
  apellido varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  seccion varchar(20),
  primary key(documento)
 );

 insert into empleados values('22222222','Juan','Perez',300,2,'Contaduria');
 insert into empleados values('22333333','Luis','Lopez',300,0,'Contaduria');
 insert into empleados values ('22444444','Marta','Perez',500,1,'Sistemas');
 insert into empleados values('22555555','Susana','Garcia',400,2,'Secretaria');
 insert into empleados values('22666666','Jose Maria','Morales',400,3,'Secretaria');

--3- Elimine el procedimiento llamado "pa_empleados_sueldo" si existe:

if object_id('pa_empleados_sueldo') is not null
drop procedure pa_empleados_sueldo


--4- Cree un procedimiento almacenado llamado "pa_empleados_sueldo" que seleccione los nombres, 
--apellidos y sueldos de los empleados.

create procedure pa_empleados_sueldo
as
select nombre,apellido,sueldo from empleados


-- 5- Ejecute el procedimiento creado anteriormente.

execute pa_empleados_sueldo 


-- 6- Elimine el procedimiento llamado "pa_empleados_hijos" si existe:
 if object_id('pa_empleados_hijos') is not null
  drop procedure pa_empleados_hijos;


--7- Cree un procedimiento almacenado llamado "pa_empleados_hijos" que seleccione los nombres, 
--apellidos y cantidad de hijos de los empleados con hijos.

create procedure pa_empleados_hijos
as
begin
select nombre,apellido,cantidadhijos from empleados 
where cantidadhijos > 0 
end

-- 8- Ejecute el procedimiento creado anteriormente.

exec pa_empleados_hijos


--9- Actualice la cantidad de hijos de algún empleado sin hijos y vuelva a ejecutar el procedimiento 
--para verificar que ahora si aparece en la lista.


update empleados set cantidadhijos = 10 where documento =  '22333333'

execute pa_empleados_hijos 

---------------------------------------------- 121 - Procedimientos almacenados (eliminar) ---------------------------------------------------

Eliminamos, si existe, el procedimiento almacenado "pa_crear_libros":
 if object_id('pa_crear_libros') is not null
  drop procedure pa_crear_libros;

-- Verificamos que no existe ejecutando "sp_help":

sp_help pa_crear_libros 

create procedure pa_crear_libros 
as
 if object_id('libros') is not null
  drop table libros
   create table libros(
   codigo int identity,
   titulo varchar(40),
   autor varchar(30),
   editorial varchar(20),
   precio decimal(5,2),
   cantidad smallint,
   primary key(codigo)
  )
  insert into libros values('Uno','Richard Bach','Planeta',15,5)
  insert into libros values('Ilusiones','Richard Bach','Planeta',18,50)
  insert into libros values('El aleph','Borges','Emece',25,9)
  insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',45,100)
  insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo',12,50)
  insert into libros values('Java en 10 minutos','Mario Molina','Paidos',35,300);

sp_help pa_crear_libros 

drop procedure pa_crear_libros 

 sp_help pa_crear_libros;


-- Solicitamos su eliminación nuevamente:

drop proc pa_crear_libros 

-- Solicitamos su eliminación verificando si existe, si no existe, mostramos un mensaje:

if OBJECT_ID('pa_crear_libros') is not null
	begin
		drop procedure pa_crear_libros
		select 'El procedimiento fue eliminado'
	end
else
select 'El procedimiento no Existe'


----------------------------------------- 122 - Procedimientos almacenados (parámetros de entrada) ------------------------------------------------------------------

 if object_id('libros') is not null
  drop table libros;

   create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  primary key(codigo) 
 );


  insert into libros values ('Uno','Richard Bach','Planeta',15);
 insert into libros values ('Ilusiones','Richard Bach','Planeta',12);
 insert into libros values ('El aleph','Borges','Emece',25);
 insert into libros values ('Aprenda PHP','Mario Molina','Nuevo siglo',50);
 insert into libros values ('Matematica estas ahi','Paenza','Nuevo siglo',18);
 insert into libros values ('Puente al infinito','Bach Richard','Sudamericana',14);
 insert into libros values ('Antología','J. L. Borges','Paidos',24);
 insert into libros values ('Java en 10 minutos','Mario Molina','Siglo XXI',45);
 insert into libros values ('Cervantes y el quijote','Borges- Casares','Planeta',34);


 --Eliminamos el procedimiento almacenado "pa_libros_autor" si existe:

 if object_id('pa_libros_autor') is not null
  drop procedure pa_libros_autor;


-- Creamos el procedimiento para que reciba el nombre de un autor y muestre todos los libros 
--del autor solicitado:

create procedure pa_libros_autor
	@autor varchar(30)
as
select * from libros 
where autor = @autor


--El procedimiento se ejecuta colocando "execute" (o "exec") seguido del nombre del procedimiento 
--y un valor para el parámetro:

execute pa_libros_autor 'Borges'
execute pa_libros_autor @autor='Borges'


-- Creamos un procedimiento que recibe 2 parámetros, el nombre de un autor y el de una editorial:

create procedure pa_libros_datos

	@autor varchar(50),
	@editorial varchar(50)

as
	select * from libros 
	where autor = @autor and editorial = @editorial


--El procedimiento se ejecuta colocando "execute" (o "exec") seguido del nombre del procedimiento y 
--los valores para los parámetros separados por comas:


execute pa_libros_datos 'Richard Bach', 'Planeta'
execute pa_libros_datos @autor='Richard Bach', @editorial='Planeta'


--No podríamos ejecutar el procedimiento anterior sin valores para los parámetros. 
--Si queremos ejecutar un procedimiento que permita omitir los valores para los parámetros 
--debemos, al crear el procedimiento, definir valores por defecto para cada parámetro:

create procedure pa_libros_datos2

	@autor varchar(50) = 'Mario Molina',
	@editorial varchar(50) = 'Siglo XXI'

as
	
	select * from libros 
	where autor = @autor and editorial = @editorial

-- Podemos ejecutar el procedimiento anterior sin enviarle valores, usará los predeterminados.

execute pa_libros_datos2 

--Si queremos especificar solamente el segundo parámetro, debemos emplear la sintaxis de paso de 
--valores a parámetros por nombre:


execute pa_libros_datos2 @editorial='Nuevo siglo'


--Podemos emplear patrones de búsqueda en la consulta que define el procedimiento almacenado 
--y utilizar comodines como valores por defecto:

create procedure pa_crear_patrones
	 @autor varchar(30) = '%',
	 @editorial varchar(30) = '%'
as
	select titulo,autor,editorial,precio
   from libros
	where autor like @autor and
	editorial like @editorial;

--La sentencia siguiente ejecuta el procedimiento almacenado "pa_libros_autor_editorial3" 
-- enviando un valor por posición, se asume que es el primero.

 exec pa_crear_patrones 'P%';

 --La sentencia siguiente ejecuta el procedimiento almacenado "pa_libros_autor_editorial3" 
 --enviando un valor para el segundo parámetro, para el primer parámetro toma el valor por defecto:

  exec pa_crear_patrones @editorial='P%';

 -- También podríamos haber tipeado:

 exec pa_crear_patrones default, 'P%';


 ------------------------------------------- Primer problema: ------------------------------------------------------------

  if object_id('empleados') is not null
  drop table empleados;


   create table empleados(
  documento char(8),
  nombre varchar(20),
  apellido varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  seccion varchar(20),
  primary key(documento)
 );


  insert into empleados values('22222222','Juan','Perez',300,2,'Contaduria');
 insert into empleados values('22333333','Luis','Lopez',300,0,'Contaduria');
 insert into empleados values ('22444444','Marta','Perez',500,1,'Sistemas');
 insert into empleados values('22555555','Susana','Garcia',400,2,'Secretaria');
 insert into empleados values('22666666','Jose Maria','Morales',400,3,'Secretaria');


  if object_id('pa_empleados_sueldo') is not null
  drop procedure pa_empleados_sueldo;

--  4- Cree un procedimiento almacenado llamado "pa_empleados_sueldo" que seleccione los 
--nombres, 
--apellidos y sueldos de los empleados que tengan un sueldo superior o igual al 
--enviado como 
--parámetro.

create procedure pa_empleados_sueldo
	@sueldo decimal(6,2)
as
	select nombre,apellido,sueldo from empleados 
	where sueldo >= @sueldo 


-- 5- Ejecute el procedimiento creado anteriormente con distintos valores:
 exec pa_empleados_sueldo 400;
 exec pa_empleados_sueldo 500; 


 --6- Ejecute el procedimiento almacenado "pa_empleados_sueldo" sin parámetros.

  exec pa_empleados_sueldo

--7- Elimine el procedimiento almacenado "pa_empleados_actualizar_sueldo" si existe:

 if object_id('pa_empleados_actualizar_sueldo') is not null
  drop procedure pa_empleados_actualizar_sueldo;


--8- Cree un procedimiento almacenado llamado "pa_empleados_actualizar_sueldo"
-- que actualice los 
--sueldos iguales al enviado como primer parámetro con el valor enviado como 
--segundo parámetro.

create procedure pa_empleados_actualizar_sueldo
	@sueldo1 decimal(6,2),
	@sueldo2 decimal(6,2)
as
update empleados set sueldo = @sueldo2 where sueldo = @sueldo1 


--9- Ejecute el procedimiento creado anteriormente y verifique si se ha ejecutado
-- correctamente:

 exec pa_empleados_actualizar_sueldo 300,350;
 select *from empleados;

-- 10- Ejecute el procedimiento "pa_empleados_actualizar_sueldo" enviando un solo 
--parámetro.
--Error.

 exec pa_empleados_actualizar_sueldo 300;


-- 11- Ejecute el procedimiento almacenado "pa_empleados_actualizar_sueldo" enviando 
-- en primer lugar el 
--parámetro @sueldo1 y en segundo lugar @sueldo2 (parámetros por nombre).

execute pa_empleados_actualizar_sueldo @sueldo1 = 350, @sueldo2=300


-- 12- Verifique el cambio:

 select *from empleados;


 -- 13- Elimine el procedimiento almacenado "pa_sueldototal", si existe:

 if object_id('pa_sueldototal') is not null
  drop procedure pa_sueldototal;


--14- Cree un procedimiento llamado "pa_sueldototal" que reciba el documento de un
-- empleado y muestre 
--su nombre, apellido y el sueldo total (resultado de la suma del sueldo y salario 
--por hijo, que es de 
--$200 si el sueldo es menor a $500 y $100, si el sueldo es mayor o igual a $500).
-- Coloque como valor 
--por defecto para el parámetro el patrón "%".

create procedure pa_sueldototal
	@documento varchar(10) = '%'
as
	select nombre,apellido, 
	case  
	when sueldo < 500 then sueldo+(cantidadhijos*200)
	when sueldo >= 500 then sueldo+(cantidadhijos*100)
	end as sueldoTotal
	from empleados 
	where documento like @documento


 exec pa_sueldototal '22333333';
 exec pa_sueldototal '22444444';
 exec pa_sueldototal '22666666';

 exec pa_sueldototal;


 ---------------------------------------------- 123 - Procedimientos almacenados (parámetros de salida) ---------------------------------------------- 

if object_id('pa_promedio') is not null
  drop proc pa_promedio;

--Creamos un procedimiento almacenado al cual le enviamos 2 números decimales y retorna el promedio:

create procedure pa_promedio 
@n1 float ,
@n2 float,
@promedio float output
as
select @promedio = (@n1+@n2) / 2;

declare @variable decimal(4,2)
execute pa_promedio 5,6, @variable output
select @variable

execute pa_promedio 5.3,4.7, @variable output
select @variable

execute pa_promedio 9,10, @variable output
select @variable;


if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  primary key(codigo) 
 );


 insert into libros values ('Uno','Richard Bach','Planeta',15);
 insert into libros values ('Ilusiones','Richard Bach','Planeta',12);
 insert into libros values ('El aleph','Borges','Emece',25);
 insert into libros values ('Aprenda PHP','Mario Molina','Nuevo siglo',50);
 insert into libros values ('Matematica estas ahi','Paenza','Nuevo siglo',18);
 insert into libros values ('Puente al infinito','Richard Bach','Sudamericana',14);
 insert into libros values ('Antología','J. L. Borges','Paidos',24);
 insert into libros values ('Java en 10 minutos','Mario Molina','Siglo XXI',45);
 insert into libros values ('Antología','Borges','Planeta',34);

 if object_id('pa_autor_sumaypromedio') is not null
  drop proc pa_autor_sumaypromedio;


--Creamos un procedimiento almacenado que muestre los títulos, editorial y precio de los libros de un
-- determinado autor (enviado como parámetro de entrada) y nos retorne la suma y el promedio de los precios 
-- de todos los libros del autor enviado:

create procedure pa_autor_sumaypromedio
@autor varchar(250) = '%',
@suma float output,
@promedio float output
as
select titulo,editorial,precio 
from libros where autor like @autor
select @suma = sum(precio), @promedio = avg(precio)
from libros where autor like @autor;

declare @suma float,@promedio float
execute pa_autor_sumaypromedio 'Richard Bach', @suma output, @promedio output
select @suma as suma, @promedio as promedio


declare @s decimal(6,2), @p decimal(6,2)
 execute pa_autor_sumaypromedio 'Richard Bach', @s output, @p output
 select @s as total, @p as promedio

 execute pa_autor_sumaypromedio 'Borges', @s output, @p output
 select @s as total, @p as promedio

 execute pa_autor_sumaypromedio 'Mario Molina', @s output, @p output
 select @s as total, @p as promedio


 --Ejecutamos el procedimiento sin pasar el parámetro para autor. Recuerde que en estos casos debemos colocar 
 --los nombres de las variables.

 declare @s float, @p float
  execute pa_autor_sumaypromedio  @suma= @s output, @promedio= @p output
  select @s as suma , @p as promedio


  ------------------------------------------------ Primer problema -----------------------------------------------------------------------

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8),
  nombre varchar(20),
  apellido varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  seccion varchar(20),
  primary key(documento)
 );


 insert into empleados values('22222222','Juan','Perez',300,2,'Contaduria');
 insert into empleados values('22333333','Luis','Lopez',350,0,'Contaduria');
 insert into empleados values ('22444444','Marta','Perez',500,1,'Sistemas');
 insert into empleados values('22555555','Susana','Garcia',null,2,'Secretaria');
 insert into empleados values('22666666','Jose Maria','Morales',460,3,'Secretaria');
 insert into empleados values('22777777','Andres','Perez',580,3,'Sistemas');
 insert into empleados values('22888888','Laura','Garcia',400,3,'Secretaria');

--3- Elimine el procedimiento llamado "pa_seccion" si existe:
 if object_id('pa_seccion') is not null
  drop procedure pa_seccion;


--  4- Cree un procedimiento almacenado llamado "pa_seccion" al cual le enviamos el nombre de una 
--sección y que nos retorne el promedio de sueldos de todos los empleados de esa sección y el valor 
--mayor de sueldo (de esa sección)

create procedure pa_seccion
@seccion varchar(250) = '%',
@promedio float output,
@maximo float output
as
select @promedio = avg(sueldo) 
from empleados where seccion like @seccion
select @maximo = max(sueldo) 
from empleados where seccion like @seccion;

declare @p float, @m float
exec pa_seccion 'Sistemas', @p output,@m output
select @p as promedio
select @m as maximo

-- otra forma de hacerlo y pues mas facil 

create procedure pa_seccion2
@seccion nvarchar(250)
as
select avg(sueldo) as promedio 
from empleados
where seccion = @seccion
select max(sueldo) as maximo 
from empleados
where seccion = @seccion;

execute pa_seccion2 'Sistemas'

-- 5- Ejecute el procedimiento creado anteriormente con distintos valores.


declare @p float, @m float
exec pa_seccion 'Sistemas', @p output,@m output
select @p as promedio
select @m as maximo

exec pa_seccion 'Contaduria', @p output,@m output
select @p as promedio
select @m as maximo


exec pa_seccion 'Secretaria', @p output,@m output
select @p as promedio
select @m as maximo


--6- Ejecute el procedimiento "pa_seccion" sin pasar valor para el parámetro "sección". Luego muestre 
--los valores devueltos por el procedimiento.
--Calcula sobre todos los registros porque toma el valor por defecto.


declare @p float,@m float
exec pa_seccion  @promedio = @p output, @maximo = @m output
select @p as promedio
select @m as maximo



--7- Elimine el procedimiento almacenado "pa_sueldototal", si existe y cree un procedimiento con ese 
--nombre que reciba el documento de un empleado y retorne el sueldo total, resultado de la suma del 
--sueldo y salario por hijo, que es $200 si el sueldo es menor a $500 y $100 si es mayor o igual.

 if object_id('pa_sueldototal') is not null
  drop procedure pa_sueldototal;

alter procedure pa_sueldototal
@documento varchar(250) = '%',
@sueldoTotal float output
as
select @sueldoTotal = case
when sueldo < 500 then sueldo + (cantidadhijos * 200 )
when sueldo >= 500 then sueldo + (cantidadhijos * 100 )
end
from empleados 
where documento like @documento


--8- Ejecute el procedimiento anterior enviando un documento existente.

declare @sueldo float
execute pa_sueldototal '22222222', @sueldo output
select @sueldo as sueldoTotal

declare @sueldo float
execute pa_sueldototal '22777777', @sueldo output
select @sueldo as sueldoTotal


--9- Ejecute el procedimiento anterior enviando un documento inexistente.
--Retorna "null".

declare @sueldo float
execute pa_sueldototal '1234567', @sueldo output
select @sueldo as sueldoTotal


--10- Ejecute el procedimiento anterior enviando el documento de un empleado en cuyo campo "sueldo" 
--contenga "null".
--Retorna "null".

declare @sueldo float
execute pa_sueldototal NULL, @sueldo output
select @sueldo


--11- Ejecute el procedimiento anterior sin enviar valor para el parámetro "documento".
--Retorna el valor calculado del último registro.

declare @sueldo float
execute pa_sueldototal  @sueldoTotal = @sueldo output
select @sueldo as SueldoTotal

-------------------------------------------------- 124 - Procedimientos almacenados (return) --------------------------------------------------


if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  primary key(codigo) 
 );

  insert into libros values ('Uno','Richard Bach','Planeta',15);
 insert into libros values ('Ilusiones','Richard Bach','Planeta',12);
 insert into libros values ('El aleph','Borges','Emece',25);
 insert into libros values ('Aprenda PHP','Mario Molina','Nuevo siglo',50);
 insert into libros values ('Matematica estas ahi','Paenza','Nuevo siglo',18);
 insert into libros values ('Puente al infinito','Richard Bach','Sudamericana',14);
 insert into libros values ('Antología','J. L. Borges','Paidos',24);
 insert into libros values ('Java en 10 minutos','Mario Molina','Siglo XXI',45);
 insert into libros values ('Antología','Borges','Planeta',34);


  if object_id('pa_libros_autor') is not null
  drop procedure pa_libros_autor;


--Creamos un procedimiento que muestre todos los libros de un autor determinado que se ingresa como parámetro. 
--Si no se ingresa un valor, o se ingresa "null", se muestra un mensaje y se sale del procedimiento:


create procedure pa_libros_autor
@autor nvarchar(250) = null
as
if @autor is null
	begin
	select 'Debe ingresar datos'
	return
end
select * from libros 
where autor like @autor;

execute pa_libros_autor 'Richard Bach'

exec pa_libros_autor 'Borges';

 exec pa_libros_autor;


 --Eliminamos el procedimiento "pa_libros_ingreso", si existe:

 if object_id('pa_libros_ingreso') is not null
  drop procedure pa_libros_ingreso;


  --Creamos un procedimiento almacenado que ingresa registros en la tabla "libros". 
  --Los parámetros correspondientes al título y autor DEBEN ingresarse con un valor distinto de "null", los 
  --demás son opcionales. El procedimiento retorna "1" si la inserción se realiza (si se ingresan valores para
  -- título y autor) y "0", en caso que título o autor sean nulos:


create procedure pa_libros_ingreso
@titulo varchar(250) = null,
@autor varchar(250) = null,
@editorial varchar(250) = null,
@precio float = null
as 
if (@titulo is null) or (@autor is null)
begin
	return 0
end
else
begin 
	insert into libros values(@titulo,@autor,@editorial,@precio);
	return 1
end


declare @resultado int
exec @resultado = pa_libros_ingreso
select 'No se ingresaron datos = 0' = @resultado


declare @retorno int
 exec @retorno=pa_libros_ingreso 'Alicia en el pais...','Lewis Carroll'
 select 'Ingreso realizado=1' = @retorno;


 --Empleamos un "if" para controlar el valor de la variable de retorno. Enviando al procedimiento valores para 
 --los parámetros obligatorios:

 declare @retorno int
execute @retorno = pa_libros_ingreso 'Luis','Java para dummies'
if(@retorno = 1)
begin 
	select 'registro insertado correctamente'
end
else
begin
	select 'El registro no se inserto'
end



 declare @retorno int
execute @retorno = pa_libros_ingreso
if(@retorno = 1)
begin 
	select 'registro insertado correctamente'
end
else
begin
	select 'El registro no se inserto'
end


----------------------------------------------------------------- Primer problema:  ------------------------------------------------------------------------------------------------------------

 if object_id('empleados') is not null
  drop table empleados;


   create table empleados(
  documento char(8),
  nombre varchar(20),
  apellido varchar(20),
  cantidadhijos tinyint,
  seccion varchar(20),
  primary key(documento)
 );


 insert into empleados values('22222222','Juan','Perez',2,'Contaduria');
 insert into empleados values('22333333','Luis','Lopez',0,'Contaduria');
 insert into empleados values ('22444444','Marta','Perez',NULL,'Sistemas');
 insert into empleados values('22555555','Susana','Garcia',2,'Secretaria');
 insert into empleados values('22666666','Jose Maria','Morales',1,'Secretaria');
 insert into empleados values('22777777','Andres','Perez',3,'Sistemas');
 insert into empleados values('22888888','Laura','Garcia',3,'Secretaria');


 --3- Elimine el procedimiento llamado "pa_empleados_seccion", si existe:
 if object_id('pa_empleados_seccion') is not null
  drop procedure pa_empleados_seccion;


--4- Cree un procedimiento que muestre todos los empleados de una sección determinada que se ingresa 
--como parámetro. Si no se ingresa un valor, o se ingresa "null", se muestra un mensaje y se sale del 
--procedimiento.


create procedure pa_empleados_seccion
@seccion nvarchar(250) = null
as 
if(@seccion is null)
begin
	select 'No hay datos que mostrar'
	return
end
else
begin
	select * from empleados
	where seccion like @seccion 
end


-- Ejecute el procedimiento enviándole un valor para el parámetro.

exec pa_empleados_seccion 'Contaduria'

--6- Ejecute el procedimiento sin parámetro.

exec pa_empleados_seccion 


--7- Elimine el procedimiento "pa_actualizarhijos", si existe:
 if object_id('pa_actualizarhijos') is not null
  drop procedure pa_actualizarhijos;


--  8- Cree un procedimiento almacenado que permita modificar la cantidad de hijos ingresando el 
--documento de un empleado y la cantidad de hijos nueva. Ambos parámetros DEBEN ingresarse con un 
--valor distinto de "null". El procedimiento retorna "1" si la actualización se realiza (si se 
--ingresan valores para ambos parámetros) y "0", en caso que uno o ambos parámetros no se ingresen o 
--sean nulos.

create procedure pa_actualizarhijos
@documento nvarchar(250) = null,
@cantidadHijosNueva int = null
as
if(@documento is not null and @cantidadHijosNueva is not null)
begin
	update empleados set cantidadhijos = @cantidadHijosNueva 
	where documento like @documento
	return 1
end
else
begin
	return 0
end


-- ejecute el procedimiento cachando los valores rentornados y en base a eso ponga un if

declare @retorno int
execute @retorno = pa_actualizarhijos '22333333',5
if(@retorno = 1)
begin
	select 'Registro actualizado correctamente' 
end
else
begin 
	select 'El registro no actualizado' 
end


--11- Ejecute los mismos pasos, pero esta vez envíe solamente un valor para el parámetro "documento".
--Retorna "0", lo que indica que el registro no fue actualizado.

declare @retorno int
execute @retorno = pa_actualizarhijos '22666666'
if(@retorno = 1)
begin
	select 'Registro actualizado correctamente' 
end
else
begin 
	select 'El registro no actualizado' 
end


------------------------------------------------------ 125 - Procedimientos almacenados (información) --------------------------------------------------------------------

sp_help pa_actualizarhijos

sp_helptext pa_actualizarhijos

sp_stored_procedures @sp_name='pa_%';

sp_depends pa_actualizarhijos;

sp_depends libros;

 select *from sysobjects;

  select *from sysobjects
  where xtype='P' and-- tipo procedimiento
  name like 'pa%';--búsqueda con comodín

   -------------------------------------------------------- Problema -----------------------------------------------------------------------------------


if object_id('libros') is not null
drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  primary key(codigo) 
 );


  insert into libros values ('Uno','Richard Bach','Planeta',15);
 insert into libros values ('Ilusiones','Richard Bach','Planeta',12);
 insert into libros values ('El aleph','Borges','Emece',25);
 insert into libros values ('Aprenda PHP','Mario Molina','Nuevo siglo',50);
 insert into libros values ('Matematica estas ahi','Paenza','Nuevo siglo',18);
 insert into libros values ('Puente al infinito','Richard Bach','Sudamericana',14);
 insert into libros values ('Antología','J. L. Borges','Paidos',24);
 insert into libros values ('Java en 10 minutos','Mario Molina','Siglo XXI',45);
 insert into libros values ('Antología','Borges','Planeta',34);


 --Eliminamos el procedimiento llamado "pa_autor_promedio", si existe y luego lo creamos para que reciba el
 -- nombre de 
 --un autor y nos retorne el promedio de los precios de todos los libros de tal autor:


  if object_id('pa_autor_promedio') is not null
  drop proc pa_autor_promedio;

  create procedure pa_autor_promedio 
  @autor nvarchar(250) = '%',
  @promedio float output 
  as
  select avg(precio) from libros where autor like @autor;

  declare @p float
  execute  pa_autor_promedio 'Richard Bach', @p output
  

  -- Ejecutamos el procedimiento "sp_help" seguido del nombre del procedimiento creado:

  sp_help pa_autor_promedio


-- Veamos el texto de nuestro procedimiento:

sp_helptext pa_autor_promedio


-- Ejecutamos el procedimiento almacenado del sistema "sp_stored_procedures":

sp_stored_procedures 


-- Ejecutamos el procedimiento anterior pero enviándole un valor para el primer parámetro:

sp_stored_procedures 'pa_%';


-- Ejecutamos "sp_depends" seguido del nombre del procedimiento "pa_autor_promedio":

sp_depends pa_autor_promedio


-- Ejecutamos el procedimiento "sp_depends" seguido del nombre de la tabla "libros":

sp_depends libros 


-- Consultamos la tabla del sistema "sysobjects":

select * from sysobjects


-- Recuperamos todos los procedimientos almacenados creados por nosotros de la tabla "sysobjects":

select * from sysobjects where name like 'pa_%' and xtype='P'

-- Eliminamos el procedimiento:

drop procedure pa_autor_promedio;

-- Ejecutamos "sp_depends" seguido del nombre de la tabla "libros":

sp_depends libros 


----------------------------------------------------  126 - Procedimientos almacenados (encriptado)     --------------------------------------------------------

if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  primary key(codigo) 
 );


  if object_id('pa_libros_autor') is not null
  drop procedure pa_libros_autor;

-- Creamos el procedimiento almacenado "pa_libros_autor" con la opción de encriptado:

create procedure pa_libros_autor
@autor nvarchar(250) = '%'
with encryption
as 
select * from libros 
where autor = @autor


-- Ejecutamos el procedimiento almacenado del sistema "sp_helptext" para ver su contenido:

sp_helptext pa_libros_autor

-- no aparece.


-------------------------------------------------- 127 - Procedimientos almacenados (modificar) -------------------------------------------------------------------


if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  primary key(codigo) 
 );


  insert into libros values ('Uno','Richard Bach','Planeta',15);
 insert into libros values ('Ilusiones','Richard Bach','Planeta',12);
 insert into libros values ('El aleph','Borges','Emece',25);
 insert into libros values ('Aprenda PHP','Mario Molina','Nuevo siglo',50);
 insert into libros values ('Matematica estas ahi','Paenza','Nuevo siglo',18);
 insert into libros values ('Puente al infinito','Richard Bach','Sudamericana',14);
 insert into libros values ('Antología','J. L. Borges','Paidos',24);
 insert into libros values ('Java en 10 minutos','Mario Molina','Siglo XXI',45);
 insert into libros values ('Antología','Borges','Planeta',34);


 -- Eliminamos el procedimiento llamado "pa_libros_autor", si existe:

 if object_id('pa_libros_autor') is not null
  drop procedure pa_libros_autor;

--Creamos el procedimiento almacenado "pa_libros_autor" con la opción de encriptado para que
-- muestre todos los títulos de los libros cuyo autor se envía como argumento:


create procedure pa_libros_autor
@autor varchar(250) = null
with encryption
as
select * from libros 
where autor = @autor 

sp_helptext pa_libros_autor

sp_help pa_libros_autor


execute pa_libros_autor 'Richard Bach'

-- Intentamos ver el contenido del procedimiento:

sp_helptext pa_libros_autor


-- Modificamos el procedimiento almacenado "pa_libros_autor" para que muestre, además del
-- título, la editorial y precio, quitándole la encriptación:

alter procedure pa_libros_autor
@autor varchar(250) = null
as
select titulo,editorial,precio from libros 
where autor = @autor

execute pa_libros_autor 'Richard Bach'

sp_helptext pa_libros_autor


-- Modificamos el procedimiento almacenado "pa_libros_autor" para que, en caso de no 
--enviarle un valor, muestre todos los registros:

alter procedure pa_libros_autor
@autor varchar= '%'
as
select * from libros 
where autor like @autor 

execute pa_libros_autor


-------------------------------------------- 128 - Procedimientos almacenados (insertar) -----------------------------------------------------------------------

 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  primary key(codigo) 
 );


  insert into libros values ('Uno','Richard Bach','Planeta',15);
 insert into libros values ('Ilusiones','Richard Bach','Planeta',12);
 insert into libros values ('El aleph','Borges','Emece',25);
 insert into libros values ('Aprenda PHP','Mario Molina','Nuevo siglo',50);
 insert into libros values ('Matematica estas ahi','Paenza','Nuevo siglo',18);
 insert into libros values ('Puente al infinito','Richard Bach','Sudamericana',14);
 insert into libros values ('Antología','J. L. Borges','Paidos',24);
 insert into libros values ('Java en 10 minutos','Mario Molina','Siglo XXI',45);
 insert into libros values ('Antología','Borges','Planeta',34);


  if object_id('ofertas') is not null
  drop table ofertas;

 create table ofertas(
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2)
 );


  if object_id('pa_ofertas') is not null
  drop procedure pa_ofertas;

--Creamos el procedimiento para que seleccione los libros cuyo precio no supera los 30 pesos:

create procedure pa_ofertas
as
select titulo,autor,editorial,precio from libros 
where precio < 30 

execute pa_ofertas


-- Vamos a ingresar en la tabla "ofertas" el resultado devuelto por el procedimiento almacenado "pa_ofertas":

insert into ofertas exec pa_ofertas


-- Eliminamos la tabla "libros_por_editorial" si existe y luego creamos la tabla con dos
-- campos: nombre de editorial y cantidad:

 if object_id('libros_por_editorial') is not null
  drop table libros_por_editorial;

create table libros_por_editorial
(
editorial varchar(250),
cantidad int
)

-- Eliminamos el procedimiento llamado "pa_libros_por_editorial", si existe:

 if object_id('pa_libros_por_editorial') is not null
  drop procedure pa_libros_por_editorial;


--Creamos el procedimiento para que cuente la cantidad de libros de cada editorial:

create procedure pa_libros_por_editorial
as
select editorial,count(editorial) from libros 
group by editorial 


-- Vamos a ingresar en la tabla "libros_por_editorial" el resultado devuelto por el 
--procedimiento almacenado "pa_libros_por_editorial":

insert into libros_por_editorial exec pa_libros_por_editorial


select * from libros_por_editorial


------------------------------------------------ Primer problema:  --------------------------------------------------------

 if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  documento char(8),
  nombre varchar(40),
  nota decimal(4,2),
  primary key(documento)
 );


  insert into alumnos values ('22222222','Pedro Lopez',5);
 insert into alumnos values ('23333333','Ana Lopez',4);
 insert into alumnos values ('24444444','Maria Juarez',8);
 insert into alumnos values ('25555555','Juan Garcia',5.6);
 insert into alumnos values ('26666666','Karina Torres',2);
 insert into alumnos values ('27777777','Nora Torres',7.5);
 insert into alumnos values ('28888888','Mariano Herrero',3.5);

 if object_id('aprobados') is not null
  drop table aprobados;

   create table aprobados(
  documento char(8),
  nombre varchar(40),
  nota decimal(4,2)
 );


  if object_id('desaprobados') is not null
  drop table desaprobados;


  --4- Elimine la tabla "desaprobados" si existe y créela con los siguientes campos:
 if object_id('desaprobados') is not null
  drop table desaprobados;

 create table desaprobados(
  documento char(8),
  nombre varchar(40)
 );


 --5- Elimine el procedimiento llamado "pa_aprobados", si existe:
 if object_id('pa_aprobados') is not null
  drop procedure pa_aprobados;

--6- Cree el procedimiento para que seleccione todos los datos de los alumnos cuya nota es
-- igual o superior a 4.

create procedure pa_aprobados
as
select * from alumnos 
where nota >= 4 

-- 7- Ingrese en la tabla "aprobados" el resultado devuelto por el procedimiento almacenado "pa_aprobados".

insert into aprobados execute pa_aprobados


-- 8- Vea el contenido de "aprobados":
 select * from aprobados;


--9- Elimine el procedimiento llamado "pa_desaprobados", si existe:

 if object_id('pa_desaprobados') is not null
  drop procedure pa_desaprobados;

--10- Cree el procedimiento para que seleccione el documento y nombre de los alumnos cuya nota es 
--menor a 4.

create procedure pa_desaprobados
as
select documento,nombre from alumnos 
where nota < 4

--11- Ingrese en la tabla "desaprobados" el resultado devuelto por el procedimiento almacenado 
--"pa_desaprobados".

insert into desaprobados execute pa_desaprobados

select * from desaprobados


------------------------------------------------------ 129 - Procedimientos almacenados (anidados) ----------------------------------------------------

 if object_id('pa_multiplicar') is not null
  drop proc pa_multiplicar;
 if object_id('pa_factorial') is not null
  drop proc pa_factorial;


-- Creamos un procedimiento almacenado que reciba 2 números enteros y nos retorne el
-- producto de los mismos:


create procedure pa_multiplicar
@numero1 int = null,
@numero2 int = null,
@producto int output
as
select @producto = @numero1 * @numero2;


declare @resultado int
execute pa_multiplicar 1,5 ,@resultado output
select @resultado 

--Creamos un procedimiento que nos retorne el factorial de un número, tal procedimiento llamará 
--al procedimiento "pa_multiplicar":

create procedure pa_factorial
  @numero int
 as
  if @numero>=0 and @numero<=12
  begin
   declare @resultado int
   declare @num int
   set @resultado=1 
   set @num=@numero 
   while (@num>1)
   begin
     exec pa_multiplicar @resultado,@num, @resultado output
     set @num=@num-1
   end
   select rtrim(convert(char,@numero))+'!='+convert(char,@resultado)
  end
  else select 'Debe ingresar un número entre 0 y 12';


Ejecutamos el procedimiento que nos retorna el factorial de un número:

 exec pa_factorial 5;
 exec pa_factorial 10;


 --Veamos las dependencias del procedimiento "pa_multiplicar":

 exec sp_depends pa_multiplicar;


 -- Veamos las dependencias del procedimiento "pa_factorial":

 exec sp_depends pa_factorial;

 ----------------------------------------------------------  130 - Procedimientos Almacenados (recompilar) ------------------------------------------------------

-- La compilación es un proceso que consiste en analizar el procedimiento almacenado y crear un plan de ejecución. Se realiza la primera vez que se ejecuta un procedimiento almacenado o si el procedimiento almacenado se debe volver a compilar (recompilación).
--SQL Server recompila automáticamente un procedimiento almacenado si se realiza algún cambio en la estructura de una tabla (o vista) referenciada en el procedimiento (alter table y alter view) y cuando se modifican las claves (insert o delete) de una tabla referenciada.

--Un procedimiento almacenado puede recompilarse explícitamente. En general se recomienda no hacerlo excepto si se agrega un índice a una tabla referenciada por el procedimiento o si los datos han variado mucho desde la última compilación.

--SQL Server ofrece tres métodos para recompilar explícitamente un procedimiento almacenado:

--1) Se puede indicar, al crear el procedimiento, que SQL Server no guarde en la caché un plan de ejecución para el procedimiento sino que lo compile cada vez que se ejecute.
--En este caso la sintaxis es la siguiente:

-- create procedure NOMBREPROCEDIMIENTO
--  PARAMETROS
--  with recompile
--  as
--   SENTENCIAS;
--2) Podemos especificar "with recompile" al momento de ejecutarlo:

-- exec NOMBREPROCEDIMIENTO with recompile;
--3) Podemos ejecutar el procedimiento almacenado del sistema "sp_recompile". Este procedimiento vuelve a compilar el procedimiento almacenado (o desencadenador) que se especifica. La sintaxis es:

-- exec sp_recompile NOMBREOBJETO;
--El parámetro enviado debe ser el nombre de un procedimiento, de un desencadenador, de una tabla o de una vista. Si es el nombre de una tabla o vista, todos los procedimientos almacenados que usan tal tabla (o vista) se vuelven a compilar.



------------------------------------------------- 131 - Procedimientos Almacenados (con join) ------------------------------------------------------------------------

 if (object_id('inscriptos')) is not null
  drop table inscriptos;
 if (object_id('deportes')) is not null
  drop table deportes;
 if (object_id('cursos')) is not null
  drop table cursos;
 if (object_id('profesores')) is not null
  drop table profesores;
 if (object_id('socios')) is not null
  drop table socios;



  create table deportes(
  codigo tinyint identity,
  nombre varchar(30),
  primary key (codigo)
 );

 create table profesores(
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (documento)
 );

 create table socios(
  documento char(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key (documento)
 );



 create table cursos(
  numero tinyint identity,
  codigodeporte tinyint not null,
  documentoprofesor char(8) not null,
  dia varchar(15)
  );

alter table cursos 
add constraint PK_cursos_numero
primary key clustered (numero)

alter table cursos
add constraint FK_cursos_deportes
foreign key (codigodeporte)
references deportes(codigo)

alter table cursos 
add constraint FK_cursos_profesores
foreign key (documentoprofesor)
references profesores(documento)
on update cascade


 create table inscriptos(
  documentosocio char(8) not null,
  numero tinyint not null,
  matricula char(1) --'s'=paga; 'n'=impaga
  );


alter table inscriptos 
add constraint PK_inscriptos_documentosocio_numero
primary key (documentosocio,numero);

alter table inscriptos
add constraint FK_inscriptos_socios
foreign key (documentosocio)
references socios(documento)

alter table inscriptos 
add constraint FK_inscriptos_numero
foreign key (numero)
references cursos(numero)


 insert into deportes values('tenis');
 insert into deportes values('natacion');
 insert into deportes values('basquet');
 insert into deportes values('futbol');
 
 insert into profesores values('22222222','Ana Acosta','Colon 123');
 insert into profesores values('23333333','Carlos Caseres','Sarmiento 847');
 insert into profesores values('24444444','Daniel Duarte','Avellaneda 284');
 insert into profesores values('25555555','Fabiola Fuentes','Caseros 456');
 insert into profesores values('26666666','Gaston Garcia','Bulnes 345');

 insert into cursos values(1,'22222222','jueves');
 insert into cursos values(1,'22222222','viernes');
 insert into cursos values(1,'23333333','miercoles');
 insert into cursos values(2,'22222222','miercoles');
 insert into cursos values(2,'23333333','lunes');
 insert into cursos values(2,'23333333','martes');
 insert into cursos values(3,'24444444','lunes');
 insert into cursos values(3,'24444444','jueves');
 insert into cursos values(3,'25555555','martes');
 insert into cursos values(3,'25555555','viernes');
 insert into cursos values(4,'24444444','martes');
 insert into cursos values(4,'24444444','miercoles');
 insert into cursos values(4,'24444444','viernes');


  insert into socios values('31111111','Luis Lopez','Colon 464');
 insert into socios values('30000000','Nora Nores','Bulnes 234');
 insert into socios values('33333333','Mariano Morales','Sucre 464');
 insert into socios values('32222222','Patricia Perez','Peru 1234');
 insert into socios values('34444444','Susana Suarez','Salta 765');

 insert into inscriptos values('30000000',1,'s');
 insert into inscriptos values('30000000',4,'n');
 insert into inscriptos values('31111111',1,'s');
 insert into inscriptos values('31111111',4,'s');
 insert into inscriptos values('31111111',7,'s');
 insert into inscriptos values('31111111',13,'s');
 insert into inscriptos values('32222222',1,'s');
 insert into inscriptos values('32222222',4,'s');


--Eliminamos el procedimiento "pa_inscriptos", si existe:

 if (object_id('pa_inscriptos')) is not null
  drop proc pa_inscriptos;


-- Creamos un procedimiento que muestre el nombre del socio, el nombre del deporte, el día, el profesor 
--y la matrícula:

create procedure pa_inscriptos
as
select so.nombre,de.nombre,cu.dia,pro.nombre,i.matricula
from socios so
join inscriptos i on (so.documento = i.documentosocio)
join cursos cu on (i.numero = cu.numero)
join deportes de on (cu.codigodeporte = de.codigo)
join profesores pro on(cu.documentoprofesor = pro.documento)


execute pa_inscriptos


--Eliminamos el procedimiento "pa_documentovalido", si existe:

 if (object_id('pa_documentovalido')) is not null
  drop proc pa_documentovalido;


--Creamos un procedimiento que reciba un documento y nos retorne distintos valores según: sea nulo (1), 
--no sea válido (2), no esté en la tabla "socios" (3), sea un socio deudor (4) o sea un socio sin deuda (0):

create procedure pa_documentovalido
@documento varchar(250)
as

	if (@documento is null)
	begin
		return 1
	end

	if (Len(@documento) > 8)
	begin
		return 2
	end

	if not exists (select * from socios where documento = @documento )
	begin
		return 3
	end

	if exists (select * from socios s
				join inscriptos i on (i.documentosocio = s.documento)
				where documento = @documento and matricula = 'n')
	begin
		return 4
	end

	if exists (select * from socios s
				join inscriptos i on (i.documentosocio = s.documento)
				where documento = @documento and matricula = 's')
	begin
		return 0
	end


declare @dato int
execute @dato = pa_documentovalido '32222222'
if(@dato = 0)
begin 
	select 'Socio sin deuda'
end
if(@dato = 1)
begin 
	select 'Error el dato es nulo'
end
if(@dato = 2)
begin 
	select 'Error el documento no es valido'
end
if(@dato = 3)
begin 
	select 'Ese socio no existe'
end
if(@dato = 4)
begin 
	select 'Socio con deuda'
end



-- Eliminamos el procedimiento "pa_ingreso", si existe:

if (object_id('pa_deportediavalido')) is not null
  drop proc pa_deportediavalido;

--Creamos un procedimiento al cual le enviamos el nombre de un deporte y el día y nos retorna 
--un valor diferente según: el nombre del deporte o día sean nulos (1), el día sea inválido (2),
-- deporte no se dicte (3), el deporte se dicte pero no el día ingresado (4) 
-- o el deporte se dicte el día ingresado (0):


-- mi forma de hacerlo

create procedure pa_deportediavalido1
@deporte varchar(250) = null,
@dia varchar(250) = null
as

	if(@deporte is null or @dia is null)
	begin	
		return 1
	end

	if not exists(select * from cursos where dia = @dia)
	begin 
		return 2
	end

	if not exists(select * from deportes where nombre = @deporte)
	begin 
		return 3
	end

	if not exists(select * from deportes d
				  join cursos c on (d.codigo = c.codigodeporte)	
				  where d.nombre = @deporte and c.dia = @dia )
	begin 
		return 4
	end

	if exists(select * from deportes d
				  join cursos c on (d.codigo = c.codigodeporte)	
				  where d.nombre = @deporte and c.dia = @dia )
	begin 
		return 0
end

-- otra forma  de hacerlo

 create procedure pa_deportediavalido2
  @deporte varchar(30)=null,
  @dia varchar (15)=null
  as
   if @deporte is null or @dia is null return 1
   else
    if @dia not in ('lunes','martes','miercoles','jueves','viernes','sabado') return 2
    else
    begin
     declare @coddep tinyint
     select @coddep= codigo from deportes where nombre=@deporte
     if @coddep is null return 3
     else
      if not exists(select *from cursos where codigodeporte=@coddep and dia=@dia) return 4
      else return 0
    end;


declare @r1 int
execute @r1 = pa_deportediavalido1 'tenis','lunes'
select @r1 as resultado

declare @r2 int
execute  @r2 = pa_deportediavalido2 'tenis','lunes'
select @r2 as resultado


-- Eliminamos el procedimiento "pa_ingreso", si existe:

 if (object_id('pa_ingreso')) is not null
  drop proc pa_ingreso;


--Creamos un procedimiento que nos permita ingresar una inscripción con los siguientes datos:
--documento del socio, nombre del deporte, dia y matrícula. El procedimiento llamará a los procedimientos
-- "pa_documentovalido" y "pa_deportediavalido" y mostrará diferentes mensajes. Un socio que deba 
-- alguna matrícula NO debe poder inscribirse en ningún curso:


alter procedure pa_ingreso
@documento varchar(250) = null,
@deporte varchar(250) = null,
@dia varchar(250) = null,
@matricula varchar(2) = null
as

declare @dato  int
execute @dato = pa_documentovalido @documento
if( @dato = 0)
begin 
		
	declare @dato2  int
	execute @dato2 = pa_deportediavalido1 @deporte,@dia
	if(@dato2 = 0)
	begin
		
		if  (@matricula != 'n' and @matricula != 's')
		begin
			select 'La matricula ingresada es incorrecta solo puede ser s o n' as resultado
		end
		else
		begin
		
			declare @numero int

			

			set @numero = (select numero from deportes join cursos on (codigo = codigodeporte) where nombre = @deporte and dia = @dia)

			if(not exists (select * from inscriptos where documentosocio = @documento and numero = @numero))
			begin
				
				insert into inscriptos values (@documento,@numero,@matricula)
				select 'Registro insertado correctamente' as resultado

			end
			else
			begin 
				select 'no se puede inscribir , Ya que ya existe una inscripcion de ese socio en ese depote y ese dia'
			end
			

			
		end

	end
	else
	begin 
		if(@dato2 = 1)
		begin 
			select 'ingrese el deporte y dia'
		end
		if(@dato2 = 2)
		begin 
			select 'Error ese deporte no se dicta ese dia'
		end
		if(@dato2 = 3)
		begin 
			select 'Error el deporte no es correcto'
		end
		if(@dato2 = 4)
		begin 
			select 'Error el deporte que coloco no coincide con el dia en que se da verifique tabla cursos'
		end
	end	

end
else
begin 

	if(@dato = 1)
	begin 
		select 'Error el documento es nulo'
	end
	if(@dato = 2)
	begin 
		select 'Error el documento no es valido'
	end
	if(@dato = 3)
	begin 
		select 'Ese socio no existe'
	end
	if(@dato = 4)
	begin 
		select 'el Socio tiene deuda por lo tanto no puede inscribirse a ningun curso'
	end

end

execute pa_ingreso '31111111','tenis','jueves','s'



create procedure pa_ingreso2
  @documento char(8)=null,
  @deporte varchar(20)=null,
  @dia varchar(20)=null,
  @matricula char(1)=null
  as
   --verificamos el documento
   declare @doc int
   exec @doc=pa_documentovalido @documento
   if @doc=1 select 'Ingrese un documento'
   else
    if @doc=2 select 'Documento debe tener 8 digitos'
    else
     if @doc=3 select @documento+' no es socio'
     else
      if @doc=4 select 'Socio '+ @documento+' debe matriculas'
  --verificamos el deporte y el dia
   declare @depdia int
   exec @depdia=pa_deportediavalido2 @deporte, @dia
   if @depdia=1 select 'Ingrese deporte y dia'
   else
    if @depdia=2 select 'Ingrese día válido'
    else
     if @depdia=3 select @deporte+' no se dicta'
     else
      if @depdia=4 select @deporte+' no se dicta el '+ @dia;
   
   --verificamos que el socio no esté inscripto ya en el deporte el día solicitado
   if @doc=0 and @depdia=0
   begin
     declare @codcurs int
     select @codcurs=c.numero from cursos as c
                     join deportes as d
                     on c.codigodeporte=d.codigo
	             where @deporte=d.nombre and
                     @dia=c.dia
     if exists (select *from inscriptos as i
                join cursos as c
                on i.numero=c.numero
                where @codcurs=i.numero and 
                i.documentosocio=@documento)
            select 'Ya está inscripto en '+@deporte+' el '+ @dia
     else
       if @matricula is null or @matricula='s' or @matricula='n'
       begin
        insert into inscriptos values(@documento,@codcurs,@matricula)
        print 'Inscripción del socio '+@documento+' para '+@deporte+' el '+@dia+' realizada'  
       end
       else select 'Matricula debe ser s, n o null'
   end;


execute pa_ingreso 'fwef'
execute pa_ingreso2 'fwef'


execute pa_ingreso '30000000'
execute pa_ingreso2 '30000000'


execute pa_ingreso '31111111'
execute pa_ingreso2 '31111111'


execute pa_ingreso '31111111', 'tenis','sabado';
execute pa_ingreso2 '31111111','tenis','sabado';


exec pa_ingreso '31111111','tenis','jueves';
exec pa_ingreso2 '31111111','tenis','jueves';


exec pa_ingreso '33333333','tenis','jueves';
exec pa_ingreso2 '33333333','futbol','miercoles';

exec pa_inscriptos



-- Eliminamos el procedimiento "pa_profesor", si existe:

 if (object_id('pa_profesor')) is not null
  drop proc pa_profesor;



  --Creamos un procedimiento que recibe el documento de un profesor y nos muestra los distintos 
  --deportes de los cuales está a cargo y los días en que se dictan:


-- mi prodcimiento 

alter procedure pa_profesor
@documento varchar(250) = null
as
if( len(@documento) < 8 or @documento is null )
begin
	select 'Ingrese un documento valido'
end
else
begin
	if not exists(select * from cursos where documentoprofesor = @documento)
	begin 
		select 'El profesor con el documento '+@documento+' no dicta ningun curso'
	end
	else
	begin
		select d.nombre,c.dia from profesores p
		join cursos c on (p.documento = documentoprofesor)
		join deportes d on (d.codigo = c.codigodeporte)
		where p.documento = @documento
	end
end


-- procedure de sqlserverya

 create proc pa_profesor2
  @documento char(8)=null
 as
  if @documento is null or len(@documento)<8
    select 'Ingrese un documento válido'
  else
  begin
   declare @nombre varchar(30)
   select @nombre=nombre from profesores where documento=@documento
   if @nombre is null select 'No es profesor'
   else
     if not exists(select *from cursos where documentoprofesor=@documento)
       select 'El profesor '+@nombre+' no tiene cursos asignados'
     else
       select d.nombre,c.dia
        from cursos as c
        join deportes as d
        on c.codigodeporte=d.codigo
        where c.documentoprofesor=@documento
  end;



execute pa_profesor '26666666'
execute pa_profesor2 '26666666'




-- Eliminamos el procedimiento "pa_inscriptos_por_curso", si existe:

 if (object_id('pa_inscriptos_por_curso')) is not null
  drop proc pa_inscriptos_por_curso;

--Creamos un procedimiento que recibe un parámetro correspondiente al nombre de un deporte y muestra 
--los distintos cursos (número, día y profesor) y la cantidad de inscriptos; en caso que 
--el parámetro sea "null", muestra la información de todos los cursos:

alter procedure pa_inscriptos_por_curso
@deporte varchar(250) = null
as 
if (@deporte is null )
begin
	select c.numero,,c.dia,p.nombre ,count(i.numero) as inscriptos
	from deportes d 
	join cursos c on (d.codigo = c.codigodeporte )
	join profesores p on ( c.documentoprofesor = p.documento )
	left join inscriptos i on (c.numero = i.numero )
	where d.nombre like '%' 
	group by c.numero,c.dia,p.nombre
end
else
begin 
	select c.numero,c.dia,p.nombre ,count(i.numero) as inscriptos
	from deportes d 
	join cursos c on (d.codigo = c.codigodeporte )
	join profesores p on ( c.documentoprofesor = p.documento )
	left join inscriptos i on (c.numero = i.numero )
	where d.nombre like @deporte
	group by c.numero,c.dia,p.nombre
end


create procedure pa_inscriptos_por_curso2
  @deporte varchar(20)=null
 as
  if @deporte is null
    select c.numero,d.nombre,dia,p.nombre,
     (select count(*)
     from inscriptos as i
     where i.numero=c.numero) as cantidad
     from cursos as c
     join deportes as d
     on c.codigodeporte=d.codigo
     join profesores as p 
     on p.documento=c.documentoprofesor
  else
    select c.numero,dia,p.nombre,
     (select count(*)
     from inscriptos as i
     where i.numero=c.numero) as cantidad
     from cursos as c
     join deportes as d
     on c.codigodeporte=d.codigo
     join profesores as p 
     on p.documento=c.documentoprofesor
     where d.nombre=@deporte;   

exec pa_inscriptos_por_curso2;
exec pa_inscriptos_por_curso;

exec pa_inscriptos_por_curso2 'tenis';
exec pa_inscriptos_por_curso 'tenis';


exec pa_inscriptos_por_curso2 'voley';
exec pa_inscriptos_por_curso 'voley';

 exec sp_depends socios;

 exec sp_depends profesores;

  exec sp_depends cursos;

exec sp_depends deportes;

exec sp_depends inscriptos;

exec sp_depends pa_documentovalido;

exec sp_depends pa_inscriptos;

 exec sp_depends pa_deportediavalido;

exec sp_depends pa_ingreso;

exec sp_depends pa_profesor;


 exec sp_depends pa_inscriptos_por_curso;


 -------------------------------------------------  131 - Procedimientos Almacenados (con join) -----------------------------------------------------------------


 if (object_id('libros')) is not null
  drop table libros;
 if (object_id('ventas')) is not null
  drop table ventas;

  

   create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(6,2),
  cantidad int,
  primary key (codigo)
 );

 create table ventas(
  numero int identity,
  codigo int not null,
  preciounitario decimal(6,2),
  cantidad int, 
  constraint PK_ventas primary key (numero),
  constraint FK_ventas_codigolibro
   foreign key (codigo)
   references libros(codigo)
   on update cascade
 );


  insert into libros values('Uno','Richard Bach','Planeta',15,100);
 insert into libros values('Ilusiones','Richard Bach','Planeta',18,150);
 insert into libros values('El aleph','Borges','Emece',25,200);
 insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo',20,300);
 insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',45,200);
 
 insert into ventas values(1,15,1);
 insert into ventas values(2,18,1);
 insert into ventas values(3,25,100);
 insert into ventas values(1,15,50);


  if (object_id('pa_ventas')) is not null
  drop proc pa_ventas;

--4- Cree un procedimiento que muestre los datos de las ventas (número, título, autor y editorial del 
--libro vendido, precio unitario, cantidad vendida, total por item)

create procedure pa_ventas
as
select v.numero, l.titulo, l.autor, l.editorial,  v.preciounitario, v.cantidad,
 v.preciounitario*v.cantidad as total from libros l
join ventas v on(l.codigo = v.codigo)


--5- Ejecute el procedimiento:
 pa_ventas;

--6- Elimine el procedimiento "pa_vender", si existe:

 if (object_id('pa_vender')) is not null
  drop proc pa_vender;


--7- Cree un procedimiento que permita ingresar una venta en "ventas" con los siguientes datos: código 
--del libro y cantidad que se vende. El procedimiento debe controlar que haya libros disponibles (es 
--decir, que la cantidad que se vende sea mayor o igual a la cantidad existente del libro) y luego 
--restar la cantidad vendida de la tabla "libros":

alter procedure pa_vender
@codigo int = null,
@cantidad int = null
as
if(@codigo is not null and @cantidad is not null)
begin 
	if exists (select * from libros where codigo = @codigo )
	begin
		declare @cantidadBD int
		set  @cantidadBD = (select cantidad from libros where codigo = @codigo)
		if(@cantidad >0 and @cantidad <=  @cantidadBD)
		begin 
				declare @precioBD int
				set  @precioBD = (select precio from libros where codigo = @codigo)
				insert into ventas values (@codigo,@precioBD,@cantidad)
				update libros set cantidad = ( @cantidadBD -@cantidad) where codigo = @codigo
				select 'Venta realizada correctamente'
		end
		else
		begin 
			select 'La cantidad no puede ser cero ni negativa, y tampoco debe sueperar el stock disponible del producto'
		end
	end
	else
	begin
		select 'el codigo '+convert(varchar(120),@codigo)+' no pertenece a ningun libro'
	end
end
else
begin 
	select 'Debe ingresar el codigo y la cantidad';
end


create procedure pa_vender2
  @codigo int=null,
  @cantidad int=1
  as
   --verificamos que el código exista
   if not exists (select *from libros where codigo=@codigo) or (@codigo is null)
     select 'Ingrese un codigo de libro válido'
   else
   begin --verificamos que haya stock
     declare @disponibles int
     select @disponibles= cantidad from libros where codigo=@codigo
     if (@disponibles<@cantidad)
       select 'Solo hay '+cast(@disponibles as varchar(10))+' disponibles'
     else
     begin
       declare @precio decimal(6,2) 
       select @precio= precio from libros where codigo=@codigo
       insert into ventas values(@codigo,@precio,@cantidad)
       update libros set cantidad=cantidad-@cantidad where @codigo=codigo
     end
   end;


execute pa_vender 
execute pa_vender2 

execute pa_vender '30','20'
execute pa_vender2 '30','20'

execute pa_vender '1','20000'
execute pa_vender2 '1','20000'

-------------------------------------------------  132 - Tablas temporales  -------------------------------------------------------------------------

create table #amigos
(
	id int identity primary key,
	nombre varchar(250),
	telefono varchar(15)
)

insert into #amigos values ('Luis','1234567')

create table ##amigos
(
	id int identity primary key,
	nombre varchar(250),
	telefono varchar(15)
)

insert into ##amigos values ('Luis','1234567')

select * from #amigos
select * from ##amigos

--para ver las tablas temporales, debemos tipear:

 select *from tempdb..sysobjects;



 --------------------------------------------- 133 - Funciones -----------------------------------------------------------------------

 ----------------- NO HAY EJERCICIOS PARA ESTE TEMA  ---------------------------------------


-- SQL Server ofrece varios tipos de funciones para realizar distintas operaciones. Hemos visto y empleado varias de ellas.

--Se pueden emplear las funciones del sistema en cualquier lugar en el que se permita una expresión en una sentencia "select".

--Las funciones pueden clasificarse en:

--- deterministicas: siempre retornan el mismo resultado si se las invoca enviando el mismo valor de entrada. Todas las funciones de agregado y string son deterministicas, excepto "charindex" y "patindex".

--- no deterministicas: pueden retornar distintos resultados cada vez que se invocan con el mismo valor de entrada. Las siguientes son algunas de las funciones no deterministicas: getdate, datename, textptr, textvalid, rand. Todas las funciones de configuración, cursor, meta data, seguridad y estadísticas del sistema son no deterministicas.

--SQL Server provee muchas funciones y además permite que el usuario pueda definir sus propias funciones.

--Sabemos que una función es un conjunto de sentencias que operan como una unidad lógica, una rutina que retorna un valor. Una función tiene un nombre, acepta parámetros de entrada y retorna un valor escalar o una tabla.

--Los parámetros de entrada pueden ser de cualquier tipo, excepto timestamp, cursor y table.

--Las funciones definidas por el usuario no permiten parámetros de salida.

--No todas las sentencias SQL son válidas dentro de una función. NO es posible emplear en ellas funciones no determinadas (como getdate()) ni sentencias de modificación o actualización de tablas o vistas. Si podemos emplear sentencias de asignación, de control de flujo (if), de modificación y eliminación de variables locales.

--SQL Server admite 3 tipos de funciones definidas por el usuario clasificadas según el valor retornado:

--1) escalares: retornan un valor escalar;

--2) de tabla de varias instrucciones (retornan una tabla) y

--3) de tabla en línea (retornan una tabla).

--Las funciones definidas por el usuario se crean con la instrucción "create function" y se eliminan con "drop function".

 
 --------------------------------------------------  134 - Funciones (drop) --------------------------------------------------------

 ----------------- NO HAY EJERCICIOS PARA ESTE TEMA  ---------------------------------------


-- Las funciones definidas por el usuario se eliminan con la instrucción "drop function":
--Sintaxis:

-- drop function NOMBREPPROPIETARIO.NOMBREFUNCION;
--Se coloca el nombre del propietario seguido del nombre de la función.

--Si la función que se intenta eliminar no existe, aparece un mensaje indicándolo, para evitarlo, podemos verificar su existencia antes de solicitar su eliminación (como con cualquier otro objeto):

-- if object_id('NOMBREPROPIETARIO.NOMBREFUNCION') is not null
--  drop function NOMBREPROPIETARIO.NOMBREFUNCION;

--Eliminamos, si existe, la función denominada "f_fechacadena":

-- if object_id('dbo.f_fechacadena') is not null
--  drop function dbo.f_fechacadena; 




--Eliminamos, si existe, la función denominada "f_fechacadena":

if OBJECT_ID('f_fechacadena') is not null
drop function f_fechacadena


------------------------------------------------- 135 - Funciones escalares (crear y llamar) ---------------------------------------------------------------------------

-- Creamos una simple función denominada "f_promedio" que recibe 2 valores y retorna el promedio:

create function f_promedio
(
@valor1 decimal(6,2) = 10,
@valor2 decimal(6,2) = 10
)
returns float
as
begin 
	declare @promedio float
	set @promedio = (@valor1 +@valor2)/2;
	return @promedio
end

select dbo.f_promedio(default,default)
select dbo.f_promedio(5,9)
select dbo.f_promedio(5.5,8.5);

-- Creamos una función a la cual le enviamos una fecha y nos retorna el nombre del mes en español:

alter function f_nombreMes
(
	@fecha datetime = '2015/15/09'
)
returns varchar(20)
as
begin
	declare @mes varchar(20)
	set @mes = (select 
	case datepart(MONTH,@fecha) 
	when '01' then 'Enero'
	when '02' then 'Febrero'
	when '03' then 'Marzo'
	when '04' then 'Abril'
	when '05' then 'Mayo'
	when '06' then 'Junio'
	when '07' then 'Julio'
	when '08' then 'Agosto'
	when '09' then 'Septiembre'
	when '10' then 'octubre'
	when '11' then 'Noviembre'
	when '12' then 'Diciembre'
	end
	)
	return @mes
end


select dbo.f_nombreMes(default)

select dbo.f_nombreMes('2015-09-01')

-----------

if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8) not null,
  nombre varchar(30),
  fechaingreso datetime,
  mail varchar(50),
  telefono varchar(12)
 );

 set dateformat 'ymd'

 insert into empleados values('22222222', 'Ana Acosta','1985/10/10','anaacosta@gmail.com','4556677');
 insert into empleados values('23333333', 'Bernardo Bustos', '1986/02/15',null,'4558877');
 insert into empleados values('24444444', 'Carlos Caseros','1999/12/02',null,null);
 insert into empleados values('25555555', 'Diana Dominguez',null,null,'4252525');

--Eliminamos, si existe, la función "f_fechaCadena":

 if object_id('dbo.f_fechaCadena') is not null
  drop function dbo.f_fechaCadena;

--Creamos una función a la cual le enviamos una fecha (de tipo varchar), en el cuerpo de la 
--función se analiza si el dato enviado corresponde a una fecha, si es así, se almacena en 
--una variable el mes (en español) y se le concatenan el día y el año y se retorna esa cadena;
-- en caso que el valor enviado no corresponda a una fecha, la función retorna 
-- la cadena 'Fecha inválida':

alter function f_fechaCadena
(
	@fecha varchar(250) = '2015/09/09'
)
returns varchar(250)
as
begin
	if(ISDATE(@fecha) = 1)
	begin 
		declare @fechacompleta varchar(250)
		declare @mes varchar(250)
		set @mes = 
		(
			select case datepart(MONTH,@fecha)
			when '01' then 'Enero'
			when '02' then 'Febrero'
			when '03' then 'Marzo'
			when '04' then 'Abril'
			when '05' then 'Mayo'
			when '06' then 'Junio'
			when '07' then 'Julio'
			when '08' then 'Agosto'
			when '09' then 'Septiembre'
			when '10' then 'Octubre'
			when '11' then 'Noviembre'
			when '12' then 'Diciembre'
			end
		)
		declare @anio varchar(250)
		set @anio = (select datepart(year,@fecha)) 
		declare @dia varchar(250)
		set @dia = (select datepart(day,@fecha)) 
		set @fechacompleta = (@dia+' de '+@mes+' del '+@anio)
	end
	else
	begin
		set @fechacompleta = 'Ingrese una fecha valida'
	end

	return @fechacompleta

end




select dbo.f_fechaCadena (default)


select dbo.f_fechaCadena ('2015/01/01')



select nombre, dbo.f_fechaCadena (fechaingreso) as ingreso from empleados 


select dbo.f_fechaCadena (getdate())


-------------------------------------------------------- Primer problema: -------------------------------------------

 if object_id('consultas') is not null
  drop table consultas;
 if object_id('medicos') is not null
  drop table medicos;

  create table medicos (
  documento char(8) not null,
  nombre varchar(30),
  constraint PK_medicos 
   primary key clustered (documento)
 );

 create table consultas(
  fecha datetime,
  medico char(8) not null,
  paciente varchar(30),
  constraint PK_consultas
   primary key (fecha,medico),
  constraint FK_consultas_medico
   foreign key (medico)
   references medicos(documento)
   on update cascade
   on delete cascade
 );


  insert into medicos values('22222222','Alfredo Acosta');
 insert into medicos values('23333333','Pedro Perez');
 insert into medicos values('24444444','Marcela Morales');

 set dateformat 'ymd'
 insert into consultas values('2007/03/26 8:00','22222222','Juan Juarez');
 insert into consultas values('2007/03/26 8:00','23333333','Gaston Gomez');
 insert into consultas values('2007/03/26 8:30','22222222','Nora Norte');
 insert into consultas values('2007/03/28 9:00','22222222','Juan Juarez');
 insert into consultas values('2007/03/29 8:00','24444444','Nora Norte');
 insert into consultas values('2007/03/24 8:30','22222222','Hector Huerta'); 
 insert into consultas values('2007/03/24 9:30','23333333','Hector Huerta');


 --4- Elimine la función "f_nombreDia" si existe:
 if object_id('f_nombreDia') is not null
  drop function f_nombreDia


-- 5- Cree la función "f_nombreDia" que recibe una fecha (tipo string) y nos retorne el nombre del día 
--en español.

alter function f_nombreDia
(
	@fecha varchar(10) = '2015/01/20'
)
returns varchar(200)
as
begin
	declare @resultado varchar(200)
	declare @dia varchar(20)
	declare @mes varchar(20)
	declare @anio varchar(20)
	if(ISDATE(@fecha) = 1)
	begin
		--set @resultado = ( datename(dw,@fecha)+' '+ datename(day,@fecha)+' de '+ datename(m,@fecha)+' del '+ datename(year,@fecha)  )
		set @resultado = ( datename(dw,@fecha))
	end
	else
	begin
		set @resultado = 'La fecha ingresada no es valida'
	end
	return @resultado
end

select dbo.f_nombreDia(convert(varchar(10),getdate(),111))
select dbo.f_nombreDia(default)

--6- Elimine la función "f_horario" si existe:
 if object_id('f_horario') is not null
  drop function f_horario;

-- 7- Cree la función "f_horario" que recibe una fecha (tipo string) y nos retorne la hora y minutos.

alter function f_horario
(
	@fecha datetime
)
returns varchar(200)
as
begin
	declare @resultado varchar(200)
	if(ISDATE(@fecha) = 1)
	begin
		declare @hora varchar(10)
		declare @minuto varchar(10)

		set @hora = datepart(HOUR,@fecha)
		set @minuto = datepart(minute,@fecha)

		if(@minuto = 0)
		begin
			set @minuto = '00'
		end

		set @resultado = @hora +' : '+ @minuto
	end
	else
	begin
		set @resultado = 'La fecha ingresada no es valida'
	end

	return @resultado;
end

select dbo.f_horario(getdate())


--9- Cree la función "f_fecha" que recibe una fecha (tipo string) y nos retorne la fecha (sin hora ni 
--minutos)

create function f_fecha
(
	@fecha datetime
)
returns varchar(10)
as
begin
	declare @resultado varchar(200)
	if(ISDATE(@fecha) = 1 )
	begin
		set @resultado = (convert(varchar(10),@fecha,103))
	end
	else
	begin
		set @resultado = 'Ingrese una fecha valida'
	end

	return @resultado
end

select dbo.f_fecha(getdate())


--10- Muestre todas las consultas del médico llamado 'Alfredo Acosta', incluyendo el día (emplee la 
--función "f_nombreDia", la fecha (emplee la función "f_fecha"), el horario (emplee la función 
--"f_horario") y el nombre del paciente.


select nombre, dbo.f_nombreDia(convert(varchar(10),fecha,111)) as dia, dbo.f_fecha(fecha) as fecha, dbo.f_horario(fecha) as horario
from medicos
join consultas on(documento = medico)
where nombre = 'Alfredo Acosta'

-- 11- Muestre todos los turnos para el día sábado, junto con la fecha, de todos los médicos.

select nombre medico,paciente,dbo.f_nombreDia(convert(varchar(10),fecha,111)) as dia, dbo.f_fecha(fecha) as fecha
from medicos 
join consultas on (documento = medico)
where dbo.f_nombreDia(convert(varchar(10),fecha,111)) = 'Sábado'


--12- Envíe a la función "f_nombreDia" una fecha y muestre el valor retornado:
 declare @valor char(30)
 set @valor='2007/04/09'
 select dbo.f_nombreDia(@valor);


-- trucos formato dia/mes/año
select convert(varchar(10),getdate(),103)

-- trucos formato año/mes/dia 
select convert(varchar(10),getdate(),111)


-------------------------------------------------------------- segunda problema -----------------------------------------------------------------------

 if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  documento char(8) not null,
  nombre varchar(30),
  fechanacimiento datetime,
  fechaingreso datetime,
  telefono char(12),
  mail varchar(50)
 );


--2- Ingrese algunos registros:

  insert into empleados values('22222222', 'Ana Acosta', '1970/10/02', '1995/10/10', '4556677', 'anitaacosta@hotmail.com');
  insert into empleados values('25555555', 'Bernardo Bustos', '1973/01/15', '1999/02/15', '4789012', null);
  insert into empleados values('30000000', 'Carlos Caseros', '1980/5/25', '2001/05/05', null, null);
  insert into empleados values('32222222', 'Estela Esper', '1985/02/20', '2006/12/12', null, 'estelaesper@gmail.com');


 if object_id('f_edad') is not null
  drop function f_edad;

--4- Cree la función "f_edad" que reciba 2 fechas (de tipo datetime) y nos retorne un valor positivo 
--correspondiente a la diferencia entre ambas.
--Recuerde que en las funciones definidas por el usuario no pueden incluir funciones no 
--determinísticas (como getdate), por ello, debemos enviar la fecha actual.
--Note que la función retorna un valor positivo (tinyint), en ella se valida que la primera fecha a la 
--cual se le  resta la segunda fecha sea mayor. Si quisiéramos calcular la cantidad de años entre dos 
--fechas podríamos emplear la función del sistema "datediff" que retorna un int, esta función (ya 
--vista) retorna un valor negativo si la primera fecha es menor a la segunda fecha enviada. Pero 
--nosotros queremos la edad de una persona, así que siempre enviaremos como primera fecha una 
--posterior a la segunda.


alter function f_edad
(
	@fecha1 datetime,
	@fecha2 datetime
)
returns varchar(250)
as
begin
	declare @resultado varchar(250)
	if(ISDATE(@fecha1) = 1 and ISDATE(@fecha2) = 1)
	begin
		if(@fecha1 < @fecha2 )
		begin
			set @resultado = (datediff(year,@fecha1,@fecha2))
			--set @resultado = 'edad'
		end
		else
		begin
			set @resultado = 'La fecha '+ convert(varchar(10),getdate(),111) +' debe ser mayor a la fecha '+ convert(varchar(10),@fecha2,111)
			
		end

	end
	else
	begin
		set @resultado = 'Alguna de las fechas que ingreso es invalida'
	end

	return @resultado
end

set dateformat 'ymd'
select dbo.f_edad('1988/09/30',getdate())



-- 5- Muestre los nombres de los empleados y la edad (calculada con la función anteriormente creada)

select nombre empleado,dbo.f_edad(fechanacimiento,getdate()) as edad from empleados 

--6- Muestre el nombre de los empleados y la edad (calculada con la función "f_edad") que tenían al 
--ingresar a la empresa y los años de servicio.

select nombre empleado,dbo.f_edad(fechanacimiento,getdate()) as edad, datediff(year,fechaingreso,getdate()) as 'años de servicio' from empleados 

--7- Llame a la función "f_edad" enviándole la fecha actual y su fecha de nacimiento y muestre el 
--valor retornado.

select datediff(year,'1988/09/30',getdate())


--8- Intente invocar la función sin enviarle valores.
--Mensaje de error.

select dbo.f_edad

-- 9- Llame a la función para que tome el valor por defecto del segundo argumento.

select dbo.f_edad('1988/09/30',default)

--10- Elimine la función "f_valorNulo" si existe:

  if object_id('f_valorNulo') is not null
   drop function f_valorNulo;

--11- Cree una función para reemplazar un valor "null" por el texto "No tiene".

alter function f_valorNulo
(
	@campo varchar(20)
)
returns varchar(20)
as
begin
	declare @valor varchar(20)
	if(@campo is null)
	begin
		set @valor = 'No tiene'
	end
	else
	begin
		set @valor = @campo
	end
	return @valor
end


--12- Muestre todos los empleados, empleando la función "f_valorNulo" enviándole como argumento los 
--campos "mail" y "telefono".

select nombre,dbo.f_valorNulo(mail) as mail, dbo.f_valorNulo(telefono) as telefono
from empleados 


---------------------------------------------  136 - Funciones de tabla de varias instrucciones ------------------------------------------------------------------

 if object_id('libros') is not null
  drop table libros; 

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(6,2)
 );


  insert into libros values('Uno','Richard Bach','Planeta',15);
 insert into libros values('Ilusiones','Richard Bach','Planeta',10);
 insert into libros values('El aleph','Borges','Emece',25);
 insert into libros values('Aprenda PHP','Mario Molina','Siglo XXI',55);
 insert into libros values('Alicia en el pais','Lewis Carroll','Paidos',35);
 insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo',25);

 if object_id('f_ofertas') is not null
  drop function f_ofertas; 

--Creamos la función "f_ofertas" que reciba un parámetro correspondiente a un precio y nos 
--retorne una tabla con código, título, autor y precio de todos los libros cuyo precio 
--sea inferior al parámetro:

alter function f_ofertas
(
@precio float
)
returns @mytabla table
(
	codigo int,
	titulo varchar(max),
	autor varchar(max),
	precio float
)
as
begin
	insert @mytabla
	select codigo,titulo,autor,precio from libros 
	where precio < @precio

	return
end


select * from dbo.f_ofertas(20)
select * from f_ofertas(20)


--Dijimos que este tipo de función puede ser referenciada en el "from" de una consulta; la siguiente consulta realiza un join entre la tabla "libros" y la tabla retornada por la función "f_ofertas":

 select * from libros as l
  join dbo.f_ofertas(25) as o
  on l.codigo=o.codigo;


--Se puede llamar a la función como si fuese una tabla o vista listando algunos campos:

 select titulo,precio from dbo.f_ofertas(40);

 ---------------

  if object_id('libros') is not null
  drop table libros; 

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(6,2)
 );

 --Ingresamos algunos registros:

 insert into libros values('Uno','Richard Bach','Planeta',15);
 insert into libros values('Ilusiones','Richard Bach','Planeta',10);
 insert into libros values('El aleph','Borges','Emece',25);
 insert into libros values('Aprenda PHP','Mario Molina','Siglo XXI',55);
 insert into libros values('Alicia en el pais','Lewis Carroll','Paidos',35);
 insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo',25);

--Eliminamos la función "f_ofertas" si existe":

 if object_id('f_ofertas') is not null
  drop function f_ofertas; 

--Creamos la función "f_ofertas" que reciba un parámetro correspondiente a un precio y nos
-- retorne una tabla con código, título, autor y precio de todos los libros cuyo precio
-- sea inferior al parámetro:

create function f_ofertas
(
	@precio float
)
returns @tabla table
(	
	codigo int,
	titulo varchar(max),
	autor varchar(max),
	precio float
)
as
begin
	insert  @tabla
	select codigo,titulo,autor,precio from libros 
	where precio < @precio 
	return
end

select * from f_ofertas(30)


-- Realizamos un join entre "libros" y la tabla retornada por la función "f_ofertas" y mostramos
-- todos los campos de "libros". Incluimos una condición para el autor:

select * from libros l
join f_ofertas(30) o on (o.codigo = l.codigo)

 select l.titulo,l.autor,l.editorial
  from libros as l
  join dbo.f_ofertas(25) as o
  on l.codigo=o.codigo
  where l.autor='Richard Bach';

  select titulo,precio from f_ofertas(40)
  where autor like '%B%';

-- Eliminamos la función "f_listadolibros" si existe":

 if object_id('f_listadolibros') is not null
  drop function f_listadolibros; 


-- Creamos otra función que retorna una tabla:

  create function f_listadolibros
 (@opcion varchar(10)
 )
 returns @listado table
 (titulo varchar(40),
 detalles varchar(60)
 )
 as 
 begin
  if @opcion not in ('autor','editorial')
    set @opcion='autor'
  if @opcion='editorial'
   insert @listado 
    select titulo,
   (editorial+'-'+autor) from libros
   order by 2
  else
    if @opcion='autor'
     insert @listado
     select titulo,
     (autor+'-'+editorial) from libros  
     order by 2
  return
end;

--Llamamos a la función enviando el valor "autor":

 select *from dbo.f_listadolibros('autor');

-- Llamamos a la función enviando el valor "editorial":

 select *from dbo.f_listadolibros('editorial');

--Llamamos a la función enviando un valor inválido:

 select *from dbo.f_listadolibros('precio');


 ------------------------------------------------------ Primer problema:  ----------------------------------------------------------------------------

  if object_id('empleados') is not null
  drop table empleados;


 create table empleados(
  documento char(8) not null,
  apellido varchar(30) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(30),
  fechanacimiento datetime,
  constraint PK_empleados
   primary key(documento)
 );

 set dateformat 'ymd'

  insert into empleados values('22222222','Acosta','Ana','Avellaneda 123','Cordoba','1970/10/10');
 insert into empleados values('23333333','Bustos','Bernardo','Bulnes 234','Cordoba','1972/05/15');
 insert into empleados values('24444444','Caseros','Carlos','Colon 356','Carlos Paz','1980/02/25');
 insert into empleados values('25555555','Fuentes','Fabiola','Fragueiro 987','Jesus Maria','1984/06/12');


  if object_id('f_empleados') is not null
  drop function f_empleados;


--5- Cree una función que reciba como parámetro el texto "total" o "parcial" y muestre, en el primer 
--caso, todos los datos de los empleados y en el segundo caso (si recibe el valor "parcial"): el 
--documento, apellido, ciudad y año de nacimiento.


 create function f_empleados
 (@opcion varchar(10)
 )
 returns @listado table
 (documento char(8),
 nombre varchar(60),
 domicilio varchar(60),
 nacimiento varchar(12))
 as 
 begin
  if @opcion not in ('total','parcial')
    set @opcion='parcial'
  if @opcion='total'
   insert @listado 
    select documento,
    (apellido+' '+nombre),
    (domicilio+' ('+ciudad+')'), 
    cast(fechanacimiento as varchar(12))
     from empleados
  else
   insert @listado
   select documento,apellido,ciudad,cast(datepart(year,fechanacimiento) as char(4))
   from empleados
  return
end;


-- 6- Llame a la función creada anteriormente enviándole "total".

select * from f_empleados('total')

--7- Llame a la función anteriormente creada sin enviar argumento.
--Mensaje de error.

select * from f_empleados()

--8- Llame a la función enviándole una cadena vacía.

select * from f_empleados('')


--9- Ejecute la función "f_empleados" enviando "parcial" como argumento y recupere solamente los 
--registros cuyo domicilio es "Cordoba".

select * from f_empleados('parcial')
where domicilio = 'Cordoba'

----------------------------------------------------- 137 - Funciones con valores de tabla en línea  -----------------------------------------------


 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20)
 );


 insert into libros values('Uno','Richard Bach','Planeta');
 insert into libros values('El aleph','Borges','Emece');
 insert into libros values('Ilusiones','Richard Bach','Planeta');
 insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo');
 insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo');


 if object_id('f_libros') is not null
  drop function f_libros;


-- Creamos una función con valores de tabla en línea que recibe un valor de 
-- autor como parámetro:


alter function f_libros 
( 
@autor varchar(250) = 'Borges'
)
returns table
as
return 
(
	select * from libros 
	where autor like '%'+@autor+'%' 
)

select * from dbo.f_libros('Richard Bach')



select *from f_libros();  --incorrecto: 
 select *from f_libros(default);--correcto

  select *from f_libros('Bach');

  -- Eliminamos, si existe la función "f_libros_autoreditorial":

   if object_id('f_libros_autoreditorial') is not null
  drop function f_libros_autoreditorial;

alter function f_libros_autoreditorial
(
	@autor varchar(250) = 'Richard Bach',
	@editorial varchar(250) = 'Ilusiones'
)
returns table 
as
return 
(	
	select * from libros 
	--where autor like '%'+@autor+'%' and editorial like '%'+@editorial+'%'
	where autor =@autor and editorial = @editorial
)

select * from f_libros_autoreditorial('Richard Bach','Uno')


 select *from f_libros_autoreditorial('','Nuevo siglo');

  select *from f_libros_autoreditorial(default,default);

------------------------------------------------- 138 - Funciones (modificar)  -----------------------------------------------------------------

if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20)
 );


 insert into libros values('Uno','Richard Bach','Planeta');
 insert into libros values('El aleph','Borges','Emece');
 insert into libros values('Ilusiones','Richard Bach','Planeta');
 insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo');
 insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo');

  if object_id('f_libros') is not null
  drop function f_libros;


  -- Creamos una función que retorna una tabla en línea:


 create function f_libros
 (
	@autor varchar(250) = 'Borges'
 )
 returns table 
 as
 return
 (
	select titulo,autor,editorial 
	from libros 
	where autor like '%'+@autor+'%'
 )

 select * from f_libros(default) 
  select *from f_libros('Bach');


  -- La modificamos agregando otro campo en el "select":

   alter function f_libros
 (
	@autor varchar(250) = 'Borges'
 )
 returns table 
 as
 return
 (
	select codigo,titulo,autor,editorial 
	from libros 
	where autor like '%'+@autor+'%'
 )

 select * from f_libros(default)


 ---------------------------------------------- 139 - Funciones (encriptado)  -----------------------------------------------

if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20)
 );


 insert into libros values('Uno','Richard Bach','Planeta');
 insert into libros values('El aleph','Borges','Emece');
 insert into libros values('Ilusiones','Richard Bach','Planeta');
 insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo');
 insert into libros values('Matematica estas ahi','Paenza','Nuevo siglo');

   if object_id('f_libros') is not null
  drop function f_libros;

 create function f_libros
 (@autor varchar(30)='Borges')
 returns table
 with encryption
 as
 return (
  select titulo,editorial
  from libros
  where autor like '%'+@autor+'%'
 );

 sp_helptext f_libros


 ------------------------------------------------------------ 140 - Funciones (información) -------------------------------------------------


-- Las funciones son objetos, así que para obtener información de ellos pueden usarse los
-- siguientes procedimientos almacenados del sistema y las siguientes tablas:

--- "sp_help": sin parámetros nos muestra todos los objetos de la base de datos seleccionada,
-- incluidas las funciones definidas por el usuario. En la columna "Object_type" aparece
-- "scalar function" si es una función escalar, "table function" si es una función de
-- tabla de varias sentencias y "inline function" si es una función de tabla en línea.

--Si le enviamos como argumento el nombre de una función definida por el usuario, obtenemos 
--el propietario, el tipo de función y la fecha de creación; si es una función de tabla, 
--los campos de la tabla retornada.

--- "sp_helptext": seguido del nombre de una función definida por el usuario nos muestra 
--el texto que define la función, excepto si ha sido encriptado.

--- "sp_stored_procedures": muestra todos los procedimientos almacenados y funciones 
--definidas por el usuario.

--- "sp_depends": seguido del nombre de un objeto, nos devuelve 2 resultados: 1) 
--nombre, tipo, campos, etc. de los objetos de los cuales depende el objeto enviado
-- (referenciados por el objeto) y 2) nombre y tipo de los objetos que dependen del
-- objeto nombrado (que lo referencian). Por ejemplo, ejecutamos "sp_depends" 
--seguido del nombre de una función definida por el usuario:

-- sp_depends pa_libroslistado;
--aparecen las tablas (y demás objetos) de las cuales depende el procedimiento, es decir,
--las tablas (y campos) referenciadas en la misma. No aparecen objetos que dependan de
-- la función porque no existe ningún objeto que la referencie.

--Podemos ejecutar el procedimiento seguido del nombre de una tabla:

-- sp_depends libros;
--aparecen las funciones (y demás objetos) que dependen de ella (que la referencian).
-- No aparecen objetos de los cuales depende porque la tabla no los tiene.

--- La tabla del sistema "sysobjects": muestra nombre y varios datos de todos los objetos
-- de la base de datos actual. La columna "xtype" indica el tipo de objeto. 
--Si es una función definida por el usuario escalar, muestra "FN", si es una función 
--de tabla de varias sentencias, muestra "TF" y si es una función de tabla en linea muestra "IF".

--Si queremos ver el nombre, tipo y fecha de creación de todas las funciones definidas
-- por el usuario, podemos tipear:

-- select name,xtype as tipo,crdate as fecha
--  from sysobjects
--  where xtype in ('FN','TF','IF');


sp_help f_libros

sp_helptext f_libros

sp_stored_procedures

sp_depends f_libros

sp_depends pa_libroslistado;

sp_depends libros;

select name,xtype as tipo,crdate as fecha
  from sysobjects
  where xtype in ('FN','TF','IF');


  -------------------------------------- 141 - Disparadores (triggers) --------------------------------------------------------------------


--  Un "trigger" (disparador o desencadenador) es un tipo de procedimiento almacenado que se ejecuta cuando se intenta modificar los datos de una tabla (o vista).

--Se definen para una tabla (o vista) específica.

--Se crean para conservar la integridad referencial y la coherencia entre los datos entre distintas tablas.

--Si se intenta modificar (agregar, actualizar o eliminar) datos de una tabla en la que se definió un disparador para alguna de estas acciones (inserción, actualización y eliminación), el disparador se ejecuta (se dispara) en forma automática.

--Un trigger se asocia a un evento (inserción, actualización o borrado) sobre una tabla.

--La diferencia con los procedimientos almacenados del sistema es que los triggers:

--- no pueden ser invocados directamente; al intentar modificar los datos de una tabla para la que se ha definido un disparador, el disparador se ejecuta automáticamente.

--- no reciben y retornan parámetros.

--- son apropiados para mantener la integridad de los datos, no para obtener resultados de consultas.

--Los disparadores, a diferencia de las restricciones "check", pueden hacer referencia a campos de otras tablas. Por ejemplo, puede crearse un trigger de inserción en la tabla "ventas" que compruebe el campo "stock" de un artículo en la tabla "articulos"; el disparador controlaría que, cuando el valor de "stock" sea menor a la cantidad que se intenta vender, la inserción del nuevo registro en "ventas" no se realice.

--Los disparadores se ejecutan DESPUES de la ejecución de una instrucción "insert", "update" o "delete" en la tabla en la que fueron definidos. Las restricciones se comprueban ANTES de la ejecución de una instrucción "insert", "update" o "delete". Por lo tanto, las restricciones se comprueban primero, si se infringe alguna restricción, el desencadenador no llega a ejecutarse.

--Los triggers se crean con la instrucción "create trigger". Esta instrucción especifica la tabla en la que se define el disparador, los eventos para los que se ejecuta y las instrucciones que contiene.

--Sintaxis básica:

-- create triggre NOMBREDISPARADOR
--  on NOMBRETABLA
--  for EVENTO- insert, update o delete
-- as 
--  SENTENCIAS
--Analizamos la sintaxis:

--- "create trigger" junto al nombre del disparador.

--- "on" seguido del nombre de la tabla o vista para la cual se establece el trigger.

--- luego de "for", se indica la acción (evento, el tipo de modificación) sobre la tabla o vista que activará el trigger. Puede ser "insert", "update" o "delete". Debe colocarse al menos UNA acción, si se coloca más de una, deben separarse con comas.

--- luego de "as" viene el cuerpo del trigger, se especifican las condiciones y acciones del disparador; es decir, las condiciones que determinan cuando un intento de inserción, actualización o borrado provoca las acciones que el trigger realizará.

--Consideraciones generales:

--- "create trigger" debe ser la primera sentencia de un bloque y sólo se puede aplicar a una tabla.

--- un disparador se crea solamente en la base de datos actual pero puede hacer referencia a objetos de otra base de datos.

--- Las siguientes instrucciones no están permitidas en un desencadenador: create database, alter database, drop database, load database, restore database, load log, reconfigure, restore log, disk init, disk resize.

--- Se pueden crear varios triggers para cada evento, es decir, para cada tipo de modificación (inserción, actualización o borrado) para una misma tabla. Por ejemplo, se puede crear un "insert trigger" para una tabla que ya tiene otro "insert trigger".

--A continuación veremos la creación de un disparador para el suceso de inserción: "insert triger".


------------------------------------------------ 142 - Disparador de inserción (insert trigger)  ----------------------------------------------------------

 if object_id('ventas') is not null
  drop table ventas;
 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  precio decimal(6,2), 
  stock int,
  constraint PK_libros primary key(codigo)
 );

 create table ventas(
  numero int identity,
  fecha datetime,
  codigolibro int not null,
  precio decimal (6,2),
  cantidad int,
  constraint PK_ventas primary key(numero),
  constraint FK_ventas_codigolibro
   foreign key (codigolibro) references libros(codigo)
 );


 insert into libros values('Uno','Richard Bach',15,100);
 insert into libros values('Ilusiones','Richard Bach',18,50);
 insert into libros values('El aleph','Borges',25,200);
 insert into libros values('Aprenda PHP','Mario Molina',45,200);


 create trigger DIS_ventas_insertar
  on ventas
  for insert
  as
   declare @stock int
   select @stock= stock from libros
		 join inserted
		 on inserted.codigolibro=libros.codigo
		 where libros.codigo=inserted.codigolibro
  if (@stock>=(select cantidad from inserted))
    update libros set stock=stock-inserted.cantidad
     from libros
     join inserted
     on inserted.codigolibro=libros.codigo
     where codigo=inserted.codigolibro
  else
  begin
    raiserror ('Hay menos libros en stock de los solicitados para la venta', 16, 1)
    rollback transaction
  end

--Creamos un trigger sobre la tabla "ventas" para el evento se inserción. Cada vez que se realiza
-- un "insert" sobre "ventas", el disparador se ejecuta. El disparador controla que la cantidad
--  que se intenta vender sea menor o igual al stock del libro y actualiza el campo "stock" de
--   "libros", restando al valor anterior la cantidad vendida:


alter trigger DIS_ventas_insertar2
on ventas
for insert
as
begin 
	declare @cantidad int

	set @cantidad = 
	(
		select cantidad from inserted 
		join libros on (libros.codigo = inserted.codigolibro )
		where libros.codigo = inserted.codigolibro
	)
	--select @stock
	if( @cantidad > 
	(
		select stock from libros 
		join inserted on(libros.codigo = inserted.codigolibro)
		where libros.codigo = inserted.codigolibro
	))
	begin 
		raiserror ('Hay menos libros en stock de los solicitados para la venta', 16, 1)
		select 'Hay menos libros en stock de los solicitados para la venta'
    rollback transaction
	end
	else
	begin
		update libros set stock = (stock - @cantidad)
		from libros 
		join inserted on (libros.codigo = inserted.codigolibro)
		where libros.codigo = inserted.codigolibro
	end
end


--sp_help DIS_ventas_insertar2
--sp_helptext DIS_ventas_insertar2

 insert into ventas values('2007/04/01',1,15,70);


 -----------------------------------------------  problema -------------------------------------------------------

  if object_id('ventas') is not null
  drop table ventas;
 if object_id('libros') is not null
  drop table libros;


  create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  precio decimal(6,2), 
  stock int,
  constraint PK_libros primary key(codigo)
 );

 create table ventas(
  numero int identity,
  fecha datetime,
  codigolibro int not null,
  precio decimal (6,2),
  cantidad int,
  constraint PK_ventas primary key(numero),
  constraint FK_ventas_codigolibro
   foreign key (codigolibro) references libros(codigo)
 );


 insert into libros values('Uno','Richard Bach',15,100);
 insert into libros values('Ilusiones','Richard Bach',18,50);
 insert into libros values('El aleph','Borges',25,200);
 insert into libros values('Aprenda PHP','Mario Molina',45,200);
 


-- Creamos un disparador para que se ejecute cada vez que una instrucción "insert" ingrese datos en 
--"ventas"; el mismo controlará que haya stock en "libros" y actualizará el campo "stock":
-- Tambien Cuando ingresamos un registro en "ventas", debemos:
--- controlar que el código del libro exista en "libros" 



alter trigger DIS_ventas_insertar
on ventas 
for insert 
as
begin 
	declare @stock int
	set @stock = (	select stock from libros  
					join inserted on (libros.codigo = inserted.codigolibro )
					where libros.codigo = inserted.codigolibro
				 )

	if 
	(
		@stock >= (select cantidad from inserted)
	)
	begin
		update libros set stock = (stock - inserted.cantidad)
		from libros 
		join inserted on (libros.codigo = inserted.codigolibro)
		where libros.codigo = inserted.codigolibro 
	end
	else
	begin
		raiserror  ('No se debe pasar la cantidad de stock del producto', 16, 1)
		 rollback transaction
	end
end


insert into ventas values('2007/04/01',1,15,1);


select *from ventas;
 select *from libros where codigo=1;


 --Ingresamos un registro en "ventas", solicitando una cantidad superior al stock:

 insert into ventas values('2007/04/01',2,18,100);


 -- Finalmente probaremos ingresar una venta con un código de libro inexistente:

 insert into ventas values('2007/04/01',5,18,1);



 -------------------------------------------------- Primer problema:  ------------------------------------------------------------------

 if object_id('empleados') is not null
  drop table empleados;
 if object_id('secciones') is not null
  drop table secciones;


create table secciones(
codigo int identity,
nombre varchar(30),
sueldomaximo decimal(8,2), 
constraint PK_secciones primary key(codigo)
);

 create table empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  codigoseccion int not null,
  sueldo decimal(8,2),
  constraint PK_empleados primary key(documento),
  constraint FK_empelados_seccion
   foreign key (codigoseccion) references secciones(codigo)
 );


 insert into secciones values('Administracion',1500);
 insert into secciones values('Sistemas',2000);
 insert into secciones values('Secretaria',1000);

 insert into empleados values('22222222','Ana Acosta','Avellaneda 88',1,1100);
 insert into empleados values('23333333','Bernardo Bustos','Bulnes 345',1,1200);
 insert into empleados values('24444444','Carlos Caseres','Colon 674',2,1800);
 insert into empleados values('25555555','Diana Duarte','Colon 873',3,1000);


-- Cree un disparador para que se ejecute cada vez que una instrucción "insert" ingrese datos en 
--"empleados"; el mismo debe verificar que el sueldo del empleado no sea mayor al sueldo máximo 
--establecido para la sección, si lo es, debe mostrar un mensaje indicando tal situación y deshacer la 
--transacción.

alter trigger DIS_InsertEmpleados
on empleados
for insert 
as 
begin
	declare @sueldo float
	set @sueldo = (select sueldo from inserted)
	if(@sueldo > (
					select sueldomaximo from secciones 
					join inserted on (secciones.codigo = inserted.codigoseccion)
					where secciones.codigo = inserted.codigoseccion
				   )
       )
	   begin
			raiserror('El salario para el empleado sobrepasa su salario máximo',16,1)
			rollback transaction
	   end
	 
end


--5- Ingrese un nuevo registro en "empleados" cuyo sueldo sea menor o igual al establecido para la 
--sección.

insert into empleados values('00000','XXX','Avellaneda 88',1,1500);


--6- Verifique que el disparador se ejecutó consultando la tabla "empleados":
-- select *from empleados;

select * from empleados 


--7- Intente ingresar un nuevo registro en "empleados" cuyo sueldo sea mayor al establecido para la 
--sección.
--El disparador se ejecutó mostrando un mensaje y la transacción se deshizo.

insert into empleados values('00001','XXX','Avellaneda 88',1,1600);

--8- Verifique que el registro no se agregó en "empleados":
-- select *from empleados;

select * from empleados 

--9- Intente ingresar un empleado con código de sección inexistente.
--Aparece un mensaje de error porque se viola la restricción "foreign key"; el trigger no llegó a 
--ejecutarse.

insert into empleados values('12345','YYY','Avellaneda 99',66,1000);


----------------------------------------------------   Segundo problema:  ---------------------------------------------------------------------------------------------

 if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;
 if object_id('morosos') is not null
  drop table morosos;

 
  create table socios(
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  constraint PK_socios primary key (documento)
 );

  create table inscriptos(
  documento char(8) not null,
  deporte varchar(30) not null,
  matricula char(1),
  constraint CK_inscriptos check (matricula in ('s','n')),
  constraint PK_inscriptos primary key (documento,deporte),
  constraint FK_inscriptos_documento foreign key(documento)
   references socios (documento)
 );


  create table morosos(
  documento char(8) not null
 );


  insert into socios values ('22222222','Ana Acosta','Avellaneda 800');
 insert into socios values ('23333333','Bernardo Bustos','Bulnes 234');
 insert into socios values ('24444444','Carlos Caseros','Colon 321');
 insert into socios values ('25555555','Mariana Morales','Maipu 483');

 insert into inscriptos values ('22222222','tenis','s');
 insert into inscriptos values ('22222222','natacion','n');
 insert into inscriptos values ('23333333','tenis','n');
 insert into inscriptos values ('24444444','tenis','s');
 insert into inscriptos values ('24444444','futbol','s');

 insert into morosos values ('22222222');
 insert into morosos values ('23333333');


-- 4- Cree un disparador de inserción que no permita ingresar inscripciones si el socio es moroso, es 
--decir, si está en la tabla "morosos".

create trigger DIS_NotInsertMorosos
on inscriptos 
for insert 
as
begin 
	if exists (select * from morosos
				join inserted on (morosos.documento = inserted.documento)
				where morosos.documento = inserted.documento
			   )
			   begin 
					raiserror('No se puede ingresar el socio debido a que debe matricula',16,1)	
					rollback transaction
			   end
end


-- 5- Realice la inscripción de un socio que no deba matrículas.

insert into inscriptos values ('25555555','futbol','s');


-- 6- Intente inscribir a un socio moroso.

insert into inscriptos values ('22222222','futbol','s');


--7- Cree otro "insert trigger" para "inscriptos" que ingrese el socio en la tabla "morosos" si no 
--paga la matrícula (si se ingresa 'n' para el campo "matricula"). Recuerde que podemos crear varios 
--triggers para un mismo evento sobre una misma tabla.

drop trigger DIS_InsertMorosos

alter trigger DIS_InsertMorosos
on inscriptos
for insert 
as
begin
	declare @documento varchar(10)

	set @documento = (select distinct(inscriptos.documento) from inscriptos 
		join inserted on (inscriptos.documento = inserted.documento)
		where inscriptos.documento = inserted.documento and inscriptos.matricula = 'n')
		

	if(@documento is not null)
	begin
		if not exists (select * from morosos where documento = @documento)
		begin
			insert into morosos values(@documento)
		end

		if(  (select count(documento) from inscriptos where documento = @documento and matricula = 'n') >= 1 )
		begin
			  
			select ''
			rollback transaction
		end

		--select  count(documento) from inscriptos where documento = @documento and matricula = 'n'

	end


end


--8- Realice la inscripción de un socio que no deba matrículas con el valor 's' para "matricula".
--El disparador "dis_inscriptos_insertar" se ejecuta y permite la transacción; el disparador 
--"dis_inscriptos_insertar2" se ejecuta y permite la transacción.


insert into inscriptos values ('24444444','Beisbol','s');


--9- Realice la inscripción de un socio que no deba matrículas con el valor 'n' para "matricula".
--El disparador "dis_inscriptos_insertar" se ejecuta y permite la transacción; el disparador 
--"dis_inscriptos_insertar2" se ejecuta y permite la transacción.

insert into inscriptos values ('24444444','Ajedrez2','n');

--10- Verifique que el disparador "dis_inscriptos_insertar2" se ejecutó consultando la tabla 
--"morosos":
 select *from morosos;
 

-- 11- Realice la inscripción de un socio que deba matrículas con el valor 's' para "matricula".
--El disparador "dis_inscriptos_insertar" se ejecuta y no permite la transacción; el disparador 
--"dis_inscriptos_insertar2" no llega a ejecutarse.

 insert into inscriptos values ('24444444','Boliche','s');



-- 12- Realice la inscripción de un socio que deba matrículas con el valor 'n' para "matricula".
--El disparador "dis_inscriptos_insertar" se ejecuta y no permite la transacción; el disparador 
--"dis_inscriptos_insertar2" no llega a ejecutarse.

insert into inscriptos values ('23333333','Basketboll','n');


--13- Creamos un disparador sobre la tabla "socios" para que no permita ingresar nuevos socios. El 
--mismo debe mostrar un mensaje al dispararse y deshacer la transacción.

create trigger DIS_InsertSocios
on socios
for insert
as
begin
	rollback transaction
end


--14- Intente ingresar un nuevo socio.
--El trigger se dispara, muestra el mensaje y deshace la transacción.


insert into socios values ('25555556','Juan Mora','Calle 13')


--15- Actualizar el domicilio de un socio existente.
--El trigger no se dispara porque está definido para el evento "insert".


update socios set domicilio = 'Calle 13' where documento = '25555555'


--------------------------------------------------------  143 - Disparador de borrado (delete trigger) --------------------------------------------------------------------------------

 if object_id('ventas') is not null
  drop table ventas;
 if object_id('libros') is not null
  drop table libros;


 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(6,2), 
  stock int,
  constraint PK_libros primary key(codigo)
 );

 create table ventas(
  numero int identity,
  fecha datetime,
  codigolibro int not null,
  precio decimal (6,2),
  cantidad int,
  constraint PK_ventas primary key(numero),
  constraint FK_ventas_codigolibro
   foreign key (codigolibro) references libros(codigo)
   on delete no action
 );

  insert into libros values('Uno','Richard Bach','Planeta',15,100);
 insert into libros values('Ilusiones','Richard Bach','Planeta',18,50);
 insert into libros values('El aleph','Borges','Emece',25,200);
 insert into libros values('Aprenda PHP','Mario Molina','Emece',45,200);

 insert into ventas values('2006/01/01',1,15,1);
 insert into ventas values('2007/01/01',2,18,2);


 --Creamos un disparador para actualizar el campo "stock" de la tabla "libros" cuando se elimina un registro
 -- de la tabla "ventas" (por ejemplo, si el comprador devuelve los libros comprados):


 create trigger DIS_UpdateStockLibros
 on ventas
 for delete 
 as 
 begin
	update libros set libros.stock = (libros.stock + deleted.cantidad) 
	from  libros 
	join deleted on (libros.codigo = deleted.codigolibro)
	where libros.codigo = deleted.codigolibro
 end


 delete from ventas where numero=2; 


 select * from libros 
select * from ventas 


--Creamos un disparador para controlar que no se elimine más de un registro de la tabla "libros". 
--El disparador se activa cada vez que se ejecuta un "delete" sobre "libros", controlando la cantidad 
--de registros que se están eliminando; si se está eliminando más de un registro, el disparador 
--retorna un mensaje de error y deshace la transacción:


alter trigger DIS_DeleteLibros
on libros
for delete 
as 
begin
	if	(	(select count(*) from deleted ) > 1  
		)
		begin 
			raiserror('No se puede eliminar más de un registro',16,1)
			rollback transaction 
		end	
end


delete from libros where editorial='Emece';


 delete from libros where codigo=4;


 ---------------------------------------------- Primer problema:  ---------------------------------------------------------------------


 if object_id('articulos') is not null
  drop table articulos;


  create table articulos(
  codigo int identity,
  tipo varchar(30),
  descripcion varchar(40),
  precio decimal(8,2),
  stock int,
  constraint PK_articulos primary key (codigo)
 );


  insert into articulos values ('impresora','Epson Stylus C45',400,100);
 insert into articulos values ('impresora','Epson Stylus C85',500,200);
 insert into articulos values ('impresora','Epson Stylus Color 600',400,0);
 insert into articulos values ('monitor','Samsung 14',900,0);
 insert into articulos values ('monitor','Samsung 17',1200,0);
 insert into articulos values ('monitor','xxx 15',1500,0);
 insert into articulos values ('monitor','xxx 17',1600,0);
 insert into articulos values ('monitor','zzz 15',1300,0);


-- 4- Cree un disparador para controlar que no se elimine un artículo si hay stock. El disparador se 
--activará cada vez que se ejecuta un "delete" sobre "articulos", controlando el stock, si se está 
--eliminando un artículo cuyo stock sea mayor a 0, el disparador debe retornar un mensaje de error y 
--deshacer la transacción.


create trigger DIS_DeleteArticulos
on articulos
for delete
as 
begin
	
	if exists(select * from deleted where stock > 0)

	--if exists(select * from articulos 
	-- join deleted on (articulos.codigo = deleted.codigo) where articulos.stock > 0 and  articulos.codigo = deleted.codigo)


	begin
		raiserror('No se pueden eliminar articulos que tengan stock',16,1)
		rollback transaction
	end
end 


--5- Solicite la eliminación de un articulo que no tenga stock.
--Se activa el disparador y permite la transacción.

delete from articulos where codigo = 8



--6- Intente eliminar un artículo para el cual haya stock.
--El trigger se dispara y deshace la transacción. Puede verificar que el artículo no fue eliminado 
--consultando la tabla "articulos".

delete from articulos where codigo = 2


--7- Solicite la eliminación de varios artículos que no tengan stock.
--Se activa el disparador y permite la transacción. Puede verificar que se borraron 2 artículos 
--consultando la tabla "articulos".

delete from articulos where codigo in (6,7)



--8- Intente eliminar varios artículos, algunos con stock y otros sin stock.
--El trigger se dispara y deshace la transacción, es decir, ningún artículo fue eliminado, tampoco los 
--que tienen stock igual a 0.

delete from articulos where codigo in(1,4,5)


--9- Cree un trigger para evitar que se elimine más de 1 artículo.
--Note que hay 2 disparadores para el mismo suceso (delete) sobre la misma tabla.

create trigger DIS_DeleteArticulos2
on articulos
for delete
as
begin
	if( (select count(*) from deleted) > 1)
	begin	
		raiserror('Solo puede eliminar un solo registro',16,1)
		rollback transaction
	end
end


--10- Solicite la eliminación de 1 artículo para el cual no haya stock.
--Ambos disparadores "DIS_articulos_borrar" y "DIS_articulos_borrar2" se activan y permiten la 
--transacción.


delete from articulos where codigo in(5)



--11- Solicite la eliminación de 1 artículo que tenga stock.
--El disparadores "DIS_articulos_borrar" se activa y no permite la transacción. El disparador 
--"DIS_articulos_borrar2" no llega a activarse.

delete from articulos where codigo in(1)

--12- Solicite la eliminación de 2 artículos para los cuales no haya stock.
--El disparador "DIS_articulos_borrar" se activa y permite la transacción pero el disparador 
--"DIS_articulos_borrar2" no permite la transacción.

delete from articulos where codigo in(4,3)

--13- Solicite la eliminación de 2 artículos para los que haya stock.
--El disparador "DIS_articulos_borrar" se activa y no permite la transacción. El disparador 
--"DIS_articulos_borrar2" no llega a activarse.

delete from articulos where codigo in(1,2)



-------------------------------------------------------- 144 - Disparador de actualización (update trigger) -------------------------------------------------------------------------------------------

if object_id('libros') is not null
  drop table libros;

  create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  precio decimal(6,2), 
  stock int,
  constraint PK_libros primary key(codigo)
 );


 insert into libros values('Uno','Richard Bach','Planeta',15,100);
 insert into libros values('Alicia en el pais...','Lewis Carroll','Planeta',18,50);
 insert into libros values('El aleph','Borges','Emece',25,200);
 insert into libros values('Aprenda PHP','Mario Molina','Nuevo siglo',45,200);


 create trigger DIS_NotUpdateLibros
 on libros
 for update
 as
 begin
	raiserror('No se pueden actulizar registros en la tabla libros',10,1)
	rollback transaction
 end

 
-- Intentamos realizar alguna actualización en "libros":

update libros set precio = 100 where codigo = 1


-- Eliminamos el disparador creado anteriormente (tema que veremos más adelante):

drop trigger DIS_NotUpdateLibros


-- Creamos un disparador que evite que se actualice el campo "precio" de la tabla "libros":

create trigger DIS_NotUpdatePrecio
on libros
for update
as
begin 
	if(update(precio))
	begin
		raiserror('no se puede actulizar el campo precio ',10,1)
		rollback transaction 
	end
end


update libros set precio = 100 where codigo = 1

update libros set titulo = 'Java' where codigo = 1


--Veamos qué sucede si intentamos actualizar el precio y la editorial de un libro:

update libros set precio = 200 , editorial = 'Deitell' where codigo = 2


-- Eliminamos el disparador creado anteriormente:

drop trigger DIS_NotUpdatePrecio


--Creamos un disparador de actualización que muestra el valor anterior y nuevo valor de los registros
-- actualizados. El trigger debe controlar que la actualización se realice en los campos "titulo", "autor" 
-- y "editorial" y no en los demás campos (precio y stock)); si se modifican los campos permitidos y 
-- ninguno de los no permitidos, mostrará los antiguos y nuevos valores consultando las tablas "deleted" e
--  "inserted", en caso que se actualice un campo no permitido, el disparador muestra un mensaje y deshace 
--  la transacción:

alter trigger DIS_libros_actulizar
on libros
for update 
as
begin
	if(update(titulo) or update(autor) or update(editorial)) and 
	not (update(precio) or update(stock))  
	begin
		select d.titulo,d.autor,d.editorial,d.precio,d.stock,
			   i.titulo,i.autor,i.editorial,i.precio,i.stock
		from deleted d
		join inserted i on (i.codigo = d.codigo)
		where i.codigo = d.codigo
	end
	else
	begin
		raiserror('No se pueden actualizar los campos precio y stock',10,1)
		rollback transaction
	end
end

update libros set titulo = 'PHP', precio = '51' where codigo = 1

update libros set titulo = 'PHP', autor = 'Jose', editorial='Deitell' where codigo = 1


 update libros set codigo=9 where codigo>=3; 


 ---------------------------------------------- Primer problema:  -----------------------------------------------------


 if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;
 if object_id('morosos') is not null
  drop table morosos;


   create table socios(
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  constraint PK_socios primary key(documento)
 );

 create table inscriptos(
  numero int identity,
  documento char(8) not null,
  deporte varchar(20),
  matricula char(1),
  constraint FK_inscriptos_documento
   foreign key (documento)
   references socios(documento),
  constraint CK_inscriptos_matricula check (matricula in ('s','n')),
  constraint PK_inscriptos primary key(documento,deporte)
 );


  create table morosos(
  documento char(8) not null
 );


 insert into socios values('22222222','Ana Acosta','Avellaneda 800');
 insert into socios values('23333333','Bernardo Bustos','Bulnes 345');
 insert into socios values('24444444','Carlos Caseros','Colon 382');
 insert into socios values('25555555','Mariana Morales','Maipu 234');

 insert into inscriptos values('22222222','tenis','s');
 insert into inscriptos values('22222222','natacion','n');
 insert into inscriptos values('23333333','tenis','n');
 insert into inscriptos values('24444444','futbol','s');
 insert into inscriptos values('24444444','natacion','s');

 insert into morosos values('22222222');
 insert into morosos values('23333333');


-- 4- Cree un disparador para la tabla "inscriptos" que se active ante una sentencia "update" y no 
--permita actualizar más de un registro.

create trigger DIS_inscriptosUpdate
on inscriptos
for update
as 
begin
	if(  (select count(*) from inserted) > 1)
	begin
		raiserror ('So se puede actualizar 1 registro a la vez',10,1)
		rollback transaction
	end
end


update inscriptos set matricula = 's' where numero = 1

update inscriptos set matricula = 's' where numero in(1,2)


--5- Cree otro disparador para la tabla "inscriptos" que se active ante una sentencia "update". Si se 
--actualiza el pago de la matrícula a 's', el socio debe eliminarse de la tabla "morosos"; no debe 
--permitir modificar a 'n' una matrícula paga.

create trigger DIS_InscriptosUpdateMatricula
on inscriptos
for  update
as 
begin
	if( (select matricula from inserted) = ('s') and  (select matricula from deleted) = ('n') ) -- matricula set = s
	begin
		declare @documento varchar(10)
		set @documento = (select documento from inserted)
		if exists(select * from morosos where documento = @documento )
			delete from morosos where documento = @documento 
	end
	else
	begin
		if( (select matricula from inserted) = ('n') and  (select matricula from deleted) = ('s') )
		begin
			raiserror('No se puede moficiar una matricula pagada a una NO pagada',10,1)
			rollback transaction
		end
	end
end


--6- Actualice cualquier campo (diferente de "matricula") de un registro de la tabla "inscriptos".
--Ambos disparadores se activaron permitiendo la transacción.

update  inscriptos set deporte = 'Futbol' where numero = 3


--7- Actualice cualquier campo (diferente de "matricula") de varios registros de la tabla 
--"inscriptos".
--El disparador "dis_inscriptos_actualizar1" se activa y no permite la transacción. El disparador 
--"dis_inscriptos_actualizar_matricula" no llega a activarse.


update inscriptos set matricula = 's' 


--8- Actualice el campo "matricula" a 's' de un inscripto que deba la matrícula.
--Ambos disparadores se activaron y permitieron la actualización.


update inscriptos set matricula= 's' where numero = 2 


--9- Verifique que el campo se actualizó y que el socio ya no está en "morosos":
 select *from inscriptos;
 select *from morosos;


-- 10-Actualice el campo "matricula" a 'n' de un inscripto que tenga la matrícula paga.
--Ambos disparadores se activaron; "dis_inscriptos_actualizar_matricula" deshace la transacción.

update inscriptos set matricula = 'n' where numero = 4


----------------------------------------------------145 - Disparadores (varios eventos) -------------------------------------------------------------
 

 if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;
 if object_id('morosos') is not null
  drop table morosos;



   create table socios(
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  constraint PK_socios primary key(documento)
 );

 create table inscriptos(
  numero int identity,
  documento char(8) not null,
  deporte varchar(20),
  matricula char(1),
  constraint FK_inscriptos_documento
   foreign key (documento)
   references socios(documento),
  constraint CK_inscriptos_matricula check (matricula in ('s','n')),
  constraint PK_inscriptos primary key(documento,deporte)
 );
 
 create table morosos(
  documento char(8) not null
 );


  insert into socios values('22222222','Ana Acosta','Avellaneda 800');
 insert into socios values('23333333','Bernardo Bustos','Bulnes 345');
 insert into socios values('24444444','Carlos Caseros','Colon 382');
 insert into socios values('25555555','Mariana Morales','Maipu 234');

 insert into inscriptos values('22222222','tenis','s');
 insert into inscriptos values('22222222','natacion','n');
 insert into inscriptos values('23333333','tenis','n');
 insert into inscriptos values('24444444','futbol','s');
 insert into inscriptos values('24444444','natacion','s');

 insert into morosos values('22222222');
 insert into morosos values('23333333');


 --Creamos un trigger para evitar que se inscriban socios que deben matrículas y no permitir que se 
 --eliminen las inscripciones de socios deudores. El trigger se define para ambos eventos en la misma
 -- sentencia de creación.

 create trigger DIS_InsertIncriptos
 on inscriptos
 for insert,delete
 as
 begin 
	declare @documento varchar(10)
	set @documento = (select documento from inserted)
	--select @documento
	--select * from inscriptos where documento = @documento and matricula = 'n'
	if(@documento is not null)
	begin
		if exists (select * from morosos where documento = @documento )
		begin
			raiserror('No se pueden inscribir de nuevo socios que deben deporte',16,1)
			rollback transaction
		end
		else
		begin
			if( (select matricula from inserted) = 'n')
			insert into morosos values (@documento)
		end

	end
	else
	begin
--		declare @documento varchar(10)
		set @documento = (select documento from deleted)
		if exists (select * from morosos where  documento = @documento )
		begin
			raiserror('No se puede borrar un socio que debe deporte',16,1)
			rollback transaction
		end


	end
	

 end


 -- otra forma de crear el mismo trigger

 

 create trigger DIS_InsertInscriptos2
 on inscriptos
 for insert,delete
 as
 begin
	if exists (select morosos.documento from morosos 
				join inserted on (morosos.documento = inserted.documento) )
	begin
		raiserror('No se pueden ingresar socios que deben deportes',16,1)
		rollback transaction 
	end
	else
	begin
		if exists(select morosos.documento from morosos 
			join deleted on (morosos.documento = deleted.documento) )
			begin
				raiserror('No se puede eliminar un socio que debe deportes',16,1)
				rollback transaction
			end
		else
		begin
		select matricula from inserted
			if (select matricula from inserted ) = 'n' 
			insert into morosos select documento from inserted
		end

	end

 end









-- Ingresamos una inscripción de un socio no deudor con matrícula paga:

insert into inscriptos values('25555555','tenis','s');


---Ingresamos una inscripción de un socio no deudor con matrícula 'n':

 insert into inscriptos values('25555555','natacion','n');

 --select * from inscriptos where documento = '25555555' and matricula = 'n'

--El disparador se activa ante el "insert", permite la transacción y agrega al socio en la tabla "morosos".
---- Verifiquémoslo consultando las tablas correspondientes:

 select *from inscriptos;
 select *from morosos;


 --Ingresamos una inscripción de un socio deudor:

 insert into inscriptos values('25555555','basquet','s');


 --Eliminamos una inscripción de un socio no deudor:

 delete inscriptos where numero=4;


  select *from inscriptos;



  --Intentamos eliminar una inscripción de un socio deudor:

 delete inscriptos where numero=7;


-----------------------------------------------------  Primer problema:  ---------------------------------------------------------------------------------------------------------


 if object_id('empleados') is not null
  drop table empleados;
 if object_id('sucursales') is not null
  drop table sucursales;

 create table sucursales(
  codigo int identity,
  domicilio varchar(30),
  constraint PK_sucursales primary key (codigo)
 );


  create table empleados(
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  sucursal int not null,
  constraint PK_empleados primary key (documento),
  constraint FK_empleados_sucursal foreign key(sucursal)
   references sucursales(codigo)
 );


  insert into sucursales values ('Colon 123');
 insert into sucursales values ('Sucre 234');
 insert into sucursales values ('Rivadavia 345');

 insert into empleados values ('22222222','Ana Acosta','Avellaneda 1258',1);
 insert into empleados values ('23333333','Betina Bustos','Bulnes 345',2);
 insert into empleados values ('24444444','Carlos Caseres','Caseros 948',3);
 insert into empleados values ('25555555','Fabian Fuentes','Francia 845',1);
 insert into empleados values ('26666666','Gustavo Garcia','Guemes 587',2);
 insert into empleados values ('27777777','Maria Morales','Maipu 643',3);


-- 4- Cree un disparador de inserción, eliminación y actualización que no permita modificaciones en la 
--tabla "empleados" si tales modificaciones afectan a empleados de la sucursal de 1.


create trigger DIS_InsertEmpleados
on empleados
for insert, update, delete
as
begin 
	if (  (( select sucursal from inserted )  = 1)  or (( select sucursal from deleted )  = 1) )
	begin
		raiserror ('no se le puende hacer cambios en la sucursal 1',16,1)
		rollback transaction 
	end
end


--otra forma muy parecidad de hacer el trigger 

 create trigger dis_empleados
  on empleados
  for insert,update,delete
  as
   declare @suc int
   if (exists (select *from inserted where sucursal=1)) or
     (exists (select *from deleted where sucursal=1))
   begin
    raiserror('No puede modificar datos de empleados de la sucursal 1', 16, 1)
    rollback transaction
   end;


-- 5- Ingrese un empleado en la sucursal 3.
--El trigger se dispara permitiendo la transacción;

insert into empleados values ('28888888','Luis','Cordoba',3)


--6- Intente ingresar un empleado en la sucursal 1.
--El trigger se dispara y deshace la transacción.

insert into empleados values ('29999999','Juan','Huatusco',1)


-- 7- Ejecute un "update" sobre "empleados" que permita la transacción.

update empleados set nombre = 'Luis Molina' where documento = '28888888'


-- 8- Ejecute un "update" sobre "empleados" que el trigger deshaga.

update empleados set nombre = 'Anai Lopez' where documento = '22222222'


--9- Elimine un empleado (o varios) que no sean de la sucursal 1.
--El trigger se ejecuta y la transacción se realiza.

delete empleados where documento = '26666666' 


--10- Intente eliminar un empleado (o varios) de la sucursal 1.
--El trigger deshace la transacción.

delete empleados where documento = '22222222'


----------------------------------------------------- 146 - Disparador (Instead Off y after) -------------------------------------------------------------------------


 if object_id('empleados') is not null
  drop table empleados;
 if object_id('clientes') is not null
  drop table clientes;


   create table empleados(
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  constraint PK_empleados primary key(documento)
 );

 create table clientes(
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  constraint PK_clientes primary key(documento)
 );


 if object_id('vista_empleados_clientes') is not null
  drop view vista_empleados_clientes;




--  Creamos una vista que muestra los datos de ambas tablas:

create view vista_empleados_clientes
as
	select documento,nombre,domicilio, 'empleado' as condicion from empleados 
	union 
	select documento,nombre,domicilio, 'cliente'  from clientes 


select * from vista_empleados_clientes


--Creamos un disparador sobre la vista "vista_empleados_clientes" para inserción, que 
--redirija las inserciones a la tabla correspondiente:

drop trigger DIS_insert_vista_empleados_clientes

create trigger DIS_insert_vista_empleados_clientes
on vista_empleados_clientes
instead of insert
as
begin
		insert into empleados
		select documento,nombre,domicilio from inserted
		where condicion = 'empleado'

		insert into clientes
		select documento,nombre,domicilio from inserted
		where condicion = 'cliente'
	 
end

-- Otra forma de hacer el trigger

create trigger DIS_insert_vista_empleados_clientes2
on vista_empleados_clientes
instead of 
insert
as
begin
	declare @condicion varchar(50)
	set @condicion = (select condicion from inserted)
	if(@condicion = 'cliente')
	begin
		insert into clientes 
		select documento,nombre,domicilio from inserted
	end
	else
	begin
		insert into empleados 
		select documento,nombre,domicilio from inserted 
	end
end


 insert into vista_empleados_clientes values('22222222','Ana Acosta', 'Avellaneda 345','empleado');

 insert into vista_empleados_clientes values('23333333','Bernardo Bustos', 'Bulnes 587','cliente');


 --drop trigger DIS_insert_vista_empleados_clientes
 --drop trigger DIS_insert_vista_empleados_clientes2


 --Creamos un disparador sobre la vista "vista_empleados_clientes" para el evento "update",
 -- que redirija las actualizaciones a la tabla correspondiente:

 alter trigger DIS_update_empleados_clientes
 on vista_empleados_clientes
 instead of 
 update
 as
 begin
	declare @condicion varchar(20)
	set @condicion = (select condicion from inserted)

	declare @documento varchar(20)
	set @documento = (select documento from inserted)

	declare @nombre varchar(60)
	declare @domicilio varchar(60)
	set @nombre = (select nombre from inserted)
	set @domicilio = (select domicilio from inserted)

	if(update(documento))
	begin
		raiserror('No se puede modificar un documento',16,1)
		rollback transaction 
	end
	else
	begin
		if(@condicion = 'cliente')
		begin
			update clientes set nombre = @nombre, domicilio = @domicilio 
			where documento = @documento
		end
		else
		begin	
			if(@condicion = 'empleado')
			begin
				update empleados set nombre = @nombre, domicilio = @domicilio 
				where documento = @documento
			end
		end
	end

 end


 -- otra forma de hacer el trigger

 alter trigger DIS_update_empleados_clientes2
 on vista_empleados_clientes
 instead of 
 update
 as
 begin
	if(update(documento))
	begin
		raiserror('No se puede modificar el documento',10,1)
		rollback transaction
	end
	else
	begin
		if ((select condicion from inserted) = 'empleado')
		begin
			update empleados set  nombre = (select nombre from inserted)  ,domicilio = (select domicilio from inserted)
			from empleados 
			join inserted on(empleados.documento = inserted.documento)
			where empleados.documento = inserted.documento
		end
		else
		begin	
			if((select condicion from inserted) = 'cliente')
			begin
				update clientes set  nombre = (select nombre from inserted)  ,domicilio = (select domicilio from inserted)
				from clientes 
				join inserted on(clientes.documento = inserted.documento)
				where clientes.documento = inserted.documento
			end
		end
	end
 end



 -- Realizamos una actualización sobre la vista, de un empleado:

 update vista_empleados_clientes set domicilio = 'Calle 13' where documento = '22222222'

 select *from empleados;

 -- Realizamos una actualización sobre la vista, de un cliente:

 update vista_empleados_clientes set domicilio = 'Calle 10' where documento = '23333333'

  select *from clientes;


------------------------------------------------------primer problema--------------------------------------------------------

 if object_id('inscriptos') is not null
  drop table inscriptos;
 if object_id('socios') is not null
  drop table socios;
 if object_id('cursos') is not null
  drop table cursos;


create table socios(
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  constraint PK_socios primary key(documento)
 );
 create table cursos(
  numero tinyint identity,
  deporte char(20),
  cantidadmaxima tinyint,
  constraint PK_cursos primary key(numero)
 );


 create table inscriptos(
  documento char(8) not null,
  numerocurso tinyint,
  fecha datetime,
  constraint PK_inscriptos primary key(documento,numerocurso),
  constraint FK_inscriptos_documento
   foreign key (documento)
   references socios(documento),
  constraint FK_inscriptos_curso
   foreign key (numerocurso)
   references cursos(numero)
 );

-- Los cursos tiene un número que los identifica, y según el deporte, hay un límite de inscriptos (por 
--ejemplo, en tenis, no pueden inscribirse más de 4 socios; en natación, solamente se aceptan 6 
--alumnos como máximo). Cuando un curso está completo, es decir, hay tantos inscriptos como valor 
--tiene el campo "cantidadmaxima"), el socio  queda inscripto en forma condicional. El club guarda esa 
--información en una tabla denominada "condicionales" que luego analiza, porque si se inscriben muchos 
--para un deporte determinado, se abrirá otro curso.


--2- Elimine la tabla "condicionales" si existe:
 if object_id('condicionales') is not null
  drop table condicionales;


  --3- Cree la tabla, con la siguiente estructura:
 create table condicionales(
  documento char(8) not null,
  codigocurso tinyint not null,
  fecha datetime
 );


  insert into socios values('22222222','Ana Acosta','Avellaneda 800');
 insert into socios values('23333333','Bernardo Bustos','Bulnes 345');
 insert into socios values('24444444','Carlos Caseros','Colon 382');
 insert into socios values('25555555','Mariana Morales','Maipu 234');
 insert into socios values('26666666','Patricia Palacios','Paru 587');

 insert into cursos values('tenis',4);
 insert into cursos values('natacion',6);
 insert into cursos values('basquet',20);
 insert into cursos values('futbol',20);

 insert into inscriptos values('22222222',1,getdate());
 insert into inscriptos values('22222222',2,getdate());
 insert into inscriptos values('23333333',1,getdate());
 insert into inscriptos values('23333333',3,getdate());
 insert into inscriptos values('24444444',1,getdate());
 insert into inscriptos values('24444444',4,getdate());
 insert into inscriptos values('25555555',1,getdate());

-- 5- Cree un trigger "instead of" para el evento de inserción para que, al intentar ingresar un 
--registro en "inscriptos" controle que el curso no esté completo (tantos inscriptos a tal curso como 
--su "cantidadmaxima"); si lo estuviese, debe ingresarse la inscripción en la tabla "condicionales" y 
--mostrar un mensaje indicando tal situación. Si la "cantidadmaxima" no se alcanzó, se ingresa la 
--inscripción en "inscriptos".

alter trigger DIS_insert_inscriptos
on inscriptos 
instead of 
insert
as
begin	

        select count(inscriptos.numerocurso) + (select count(*) from inserted  ) from inscriptos 
		join inserted on(inscriptos.numerocurso = inserted.numerocurso) 
	
		select cantidadmaxima from cursos 
		join inserted on(inserted.numerocurso = cursos.numero)
		where numero = inserted.numerocurso 

	if( (select count(inscriptos.numerocurso) + (select count(*) from inserted  ) from inscriptos 
		join inserted on(inscriptos.numerocurso = inserted.numerocurso))   > 
		(select cantidadmaxima from cursos 
		join inserted on(inserted.numerocurso = cursos.numero)
		where numero = inserted.numerocurso ) 
	  )
	  begin
		insert into condicionales 
		select documento,numerocurso,fecha from inserted
	  end
	  else
	  begin
		insert into inscriptos 
		select documento,numerocurso,fecha from inserted
	  end
end


--6- Inscriba un socio en un curso que no esté completo.

insert into inscriptos values ('25555555',4,getdate())


--Verifique que el trigger realizó la acción esperada consultando las tablas:
 select *from inscriptos;
 select *from condicionales

-- 7- Inscriba un socio en un curso que esté completo.

insert into inscriptos values ('26666666',1,getdate())

--Verifique que el trigger realizó la acción esperada consultando las tablas:
 select *from inscriptos;
 select *from condicionales;


 ------------------------------------------------------------------------147 - Disparador (eliminar) -----------------------------------------------------------------

 if object_id('DIS_Insert_Empleados') is not null
 drop trigger DIS_Insert_Empleados



 -------------------------------------------------------------------- 148 - Disparador (información) ------------------------------------------------------------------------


--- "sp_help": sin parámetros nos muestra todos los objetos de la base de datos seleccionada, 
--incluidos los triggers. En la columna "Object_type" aparece "trigger" si es 
--un disparador.

sp_help 

sp_help DIS_insert_inscriptos


--- "sp_helptext": seguido del nombre de un disparador nos muestra el texto que define el trigger,
-- excepto si ha sido encriptado.

sp_helptext DIS_insert_inscriptos


 -- "sp_depends": retorna 2 resultados:

-- 1) el nombre, tipo, campos, etc. de los objetos de los cuales depende el objeto enviado (referenciados por el objeto) y

--2) nombre y tipo de los objetos que dependen del objeto nombrado (que lo referencian).

sp_depends DIS_insert_inscriptos

sp_depends inscriptos


--- Para conocer los disparadores que hay en una tabla específica y sus acciones respectivas, podemos ejecutar 
--el procedimiento del sistema "sp_helptrigger" seguido del nombre de la tabla o vista. Por ejemplo:

 sp_helptrigger inscriptos;


--- La tabla del sistema "sysobjects": muestra nombre y varios datos de todos los objetos
--de la base de datos actual. La columna "xtype" indica el tipo de objeto. Si es un trigger muestra "TR".

select * from sysobjects

--Si queremos ver el nombre, tipo y fecha de creación de todos los disparadores, podemos tipear:

 select name,xtype as tipo,crdate as fecha
  from sysobjects
  where xtype = 'TR' and name like '%dato%'


  ------------------------------------------------- 149 - Disparador (modificar) ----------------------------------------------

   if object_id('empleados') is not null
  drop table empleados;


   create table empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  constraint PK_empleados primary key(documento),
 );


  insert into empleados values('22000000','Ana Acosta','Avellaneda 56');
 insert into empleados values('23000000','Bernardo Bustos','Bulnes 188');
 insert into empleados values('24000000','Carlos Caseres','Caseros 364');
 insert into empleados values('25555555','Diana Duarte','Colon 1234');
 insert into empleados values('26666666','Diana Duarte','Colon 897');
 insert into empleados values('27777777','Matilda Morales','Colon 542');


 -- Creamos un disparador para que no permita eliminar más de un registro a la vez de la tabla empleados:

Create trigger DIS_Delete_Only_One_Row_Each
on empleados
for delete
as
begin
	if( (select count(*) from deleted) > 1 )
	begin
		raiserror('No se puede eliminar mas de 1 registro a la vez',10,1)
		rollback transaction
	end
end

-- Eliminamos 1 empleado:

delete empleados where documento in ('22000000')

--Intentamos eliminar varios empleados:

 delete from empleados where documento like '2%';


 -- Alteramos el disparador, para que cambia la cantidad de eliminaciones permitidas de 1 a 3:

 alter trigger DIS_Delete_Only_One_Row_Each
on empleados
for delete
as
begin
	if( (select count(*) from deleted) > 3 )
	begin
		raiserror('No se puede eliminar mas de 3 empleados a la vez',16,1)
		rollback transaction
	end
end

--Intentamos eliminar 5 empleados:

 delete from empleados where documento like '2%';


 --Eliminamos 3 empleados:

 delete from empleados where domicilio like 'Colon%';


 ---------------------------------------------- 150 - disparador (deshabilitar y habilitar) -------------------------------------------------------------------


 if object_id('empleados') is not null
  drop table empleados;

  create table empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  seccion varchar(20),
  constraint PK_empleados primary key(documento),
   );


    insert into empleados values('22222222','Ana Acosta','Bulnes 56','Secretaria');
 insert into empleados values('23333333','Bernardo Bustos','Bulnes 188','Contaduria');
 insert into empleados values('24444444','Carlos Caseres','Caseros 364','Sistemas');
 insert into empleados values('25555555','Diana Duarte','Colon 1234','Sistemas');
 insert into empleados values('26666666','Diana Duarte','Colon 897','Sistemas');
 insert into empleados values('27777777','Matilda Morales','Colon 542','Gerencia');


 -- Creamos un disparador para que no permita eliminar más de un registro a la vez de la tabla empleados:

CREATE TRIGGER DIS_Only_One_Row_Delete
on empleados
for delete
as
begin
	if ( select count(*) from deleted ) > 1
	begin
		raiserror('No se puede eliminar más de un empleado',10,1)
		rollback transaction
	end
end


-- Creamos un disparador para que no permita actualizar el campo "documento" de la tabla "empleados":

create trigger DIS_Update_Empleados
on empleados
for update
as
begin
	if(update(documento))
	begin
		raiserror ('No se puede actualizar el campo documento',10,1)
		rollback transaction
	end
end


-- Creamos un disparador para que no permita ingresar empleados en la sección "Gerencia":

create trigger DIS_Insert_Empleados
on empleados
for insert
as 
begin
	if  (select seccion from inserted) = 'Gerencia'
	begin
		raiserror('NO se pueden insertar empleados en la sección Gerencia',16,1)
		rollback transaction
	end
end


-- Intentamos borrar varios empleados:


 delete from empleados where domicilio like 'Bulnes%';


 -- Deshabilitamos el trigger para el evento de eliminación:

 alter table empleados
 disable trigger DIS_Only_One_Row_Delete

 --Borramos varios empleados:

 delete from empleados where domicilio like 'Bulnes%';


--El trigger no se disparó porque está deshabilitado. Podemos verificar que los registros de eliminaron
-- recuperando los datos de la tabla:


 select *from empleados;


 -- Intentamos modificar un documento:

  update empleados set documento='23030303' where documento='23333333';


--El trigger se dispara, muestra el mensaje y deshace la transacción.

-- Intentamos ingresar un nuevo empleado en "Gerencia":

 insert into empleados values('28888888','Juan Juarez','Jamaica 123','Gerencia');

 -- El trigger se dispara, muestra el mensaje y deshace la transacción.



 -- Deshabilitamos los disparadores de inserción y actualización definidos sobre "empleados":

alter table empleados 
disable trigger DIS_Insert_Empleados, DIS_Update_Empleados


--Ejecutamos la sentencia de actualización del documento:

 update empleados set documento='20000444' where documento='24444444';


 --El trigger no se dispara porque está deshabilitado, el documento se actualizó. verifiquémoslo:

 select *from empleados;


 --Ingresar un nuevo empleado en "Gerencia":

 insert into empleados values('28888888','Juan Juarez','Jamaica 123','Gerencia');

 --El trigger "dis_empleados_insertar" no se dispara porque está deshabilitado, el registro se agregó a la
 -- tabla. verifiquémoslo:

 select *from empleados;

 
 -- Habilitamos todos los triggers de la tabla "empleados":

alter table empleados 
enable trigger all

--Ya no podemos eliminar más de un registro, actualizar un documento ni ingresar un empleado en la sección 
--"Gerencia"; lo intentamos:

 update empleados set documento='30000000' where documento='28888888';

--El trigger se dispara (está habilitado), muestra el mensaje y deshace la transacción.


------------------------------------------------ 151 - Disparador (with encryption) ------------------------------------------------


if object_id('empleados') is not null
  drop table empleados;


  create table empleados(
  documento char(8) not null,
  nombre varchar(30) not null,
  domicilio varchar(30),
  seccion varchar(20),
  constraint PK_empleados primary key(documento),
 );


 -- Creamos el siguiente disparador encriptado:

 create trigger DIS_empleados_insertar
  on empleados
  with encryption
  after insert
 as
  if (select seccion from inserted)='Gerencia'
  begin
    raiserror('No puede ingresar empleados en la sección "Gerencia".', 16, 1)
    rollback transaction
  end;


--Ejecutamos el procedimiento almacenado del sistema "sp_helptext" seguido del nombre del trigger
--creado anteriormente:

 sp_helptext dis_empleados_insertar;


 --Modificamos el disparador para quitar la encriptación:

 alter trigger dis_empleados_insertar
  on empleados
  after insert
 as
  if (select seccion from inserted)='Gerencia'
  begin
    raiserror('No puede ingresar empleados en la sección "Gerencia".', 16, 1)
    rollback transaction
  end;


  --Ejecutamos el procedimiento almacenado del sistema "sp_helptext" seguido del nombre del trigger:

 sp_helptext dis_empleados_insertar;

-- SQL Server nos permite ver la definición del trigger porque ya no está encriptado.


----------------------------------------------------------------- 152 - Disparador (condicionales) -------------------------------------------------------------------------------------------

--Cuando se ejecuta una instrucción "update" en una tabla que tiene definido un disparador, los registros 
--originales (antes de ser actualizados) se mueven a la tabla virtual "deleted" y los registros actualizados 
--(con los nuevos valores) se copian a la tabla virtual "inserted". Dentro del trigger se puede acceder
-- a estas tablas.


 if object_id('libros') is not null
  drop table libros;



 create table libros(
  codigo int identity,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(20),
  stock int,
  constraint pk_libros primary key (codigo)
 ); 


  insert into libros values('Uno','R. Bach','Planeta',50);
 insert into libros values('Ilusiones','R. Bach','Planeta',15);
 insert into libros values('El aleph','Borges','Emece',10);
 insert into libros values('Aprenda PHP','M. Molina','Nuevo siglo',5);


 --Creamos un disparador de actualización sobre la tabla "libros". Se permite actualizar el stock de varios 
 --libros a la vez; pero ningún "stock" debe tener un valor negativo. Si algún "stock" 
 --queda con un valor negativo, no debe cambiar, los demás si:

 
create trigger DIS_libros_insert 
 on libros
 for update
 as
 begin
	if	(	(select inserted.stock from inserted 
			join deleted  on( inserted.codigo = deleted.codigo )
			where inserted.codigo = deleted.codigo) < 0
		)
		begin
			update libros set stock = deleted.stock 
			from libros
			join deleted on(libros.codigo = deleted.codigo)
			
		end
 end

 
 
 drop trigger DIS_libros_insert


-- otra forma de hacer el trigger 

 create trigger dis_libros_actualizar
 on libros
 after update
 as
  if exists (select *from inserted where stock<0)
  begin
   update libros set stock=deleted.stock
   from libros
   join deleted
   on deleted.codigo=libros.codigo
   join inserted
   on inserted.codigo=libros.codigo
   where inserted.stock<0
  end;


 update libros set stock = 1 where codigo = 1 
 update libros set stock = -320 where codigo = 2 
 update libros set stock = 2 where codigo = 3 



 --------------------------------------------------------------- problema -----------------------------------------------------------

  if object_id('empleados') is not null
  drop table empleados;
 if object_id('secciones') is not null
  drop table secciones;


  create table secciones(
  codigo int identity,
  nombre varchar(30),
  constraint pk_secciones primary key (codigo)
 ); 

 create table empleados(
  documento char(8) not null,
  nombre varchar(30),
  domicilio varchar(30),
  seccion int not null,
  constraint pk_empleados primary key (documento),
  constraint fk_empleados_seccion foreign key(seccion)
   references secciones (codigo)
 ); 

  insert into secciones values('Secretaria');
 insert into secciones values('Sistemas');
 insert into secciones values('Contaduría');
 insert into secciones values('Gerencia');

 insert into empleados values('22222222','Alejandro Acosta','Avellaneda 90',1);
 insert into empleados values('22333333','Betina Bustos','Bulnes 345',2);
 insert into empleados values('23444444','Camila Costa','Colon 234',1);
 insert into empleados values('23555555','Daniel Duarte','Duarte Quiros 345',3);
 insert into empleados values('23666666','Estela Esperanza','España 211',4);


-- 3- Cree un disparador de eliminación sobre la tabla "empleados" que permita borrar varios empleados 
--a la vez, pero ningún empleado de la sección "Gerencia".
--Se eliminan todos los empleados solicitados en cualquier sentencia "delete", y luego se vuelven a 
--insertar aquellos de la sección "Gerencia".

alter trigger DIS_Delete_Empleados 
on empleados
for delete
as
begin
		insert into empleados 
		select documento,nombre,domicilio,seccion from deleted
		where deleted.seccion = '4'
end

delete empleados where documento in ('23666666')

delete empleados where documento in ('23666666','22333333')




































































































  














































































































































































































































































































































































