
/* -----------------------------------------------
 * ------ MICRODB PRODUCTOS SUPERMERCADO ---------
 * -----------------------------------------------
 * 
 * 
 * ========= DDL =============
 */


-- BUSINESS TABLES
drop table if exists productos cascade;

-- SECURITY TABLES
drop table if exists usuarios cascade;
drop table if exists roles cascade;
drop table if exists usuarios_roles cascade;

-- ENUMERADOS
-- Enumerados tabla roles
drop type if exists tipo_rol_enum cascade;


-- ID_SEC
drop sequence if exists id_sec_produc cascade;
drop sequence if exists id_sec_usuar cascade;
drop sequence if exists id_sec_roles cascade;
drop sequence if exists id_sec_usuar_roles cascade;

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------
-- ===================================
-- ======= TABLA PRODUCTOS ===========
-- ===================================

create table productos(

id bigint primary key,
codigo varchar(255) not null,
imagen varchar(600) ,
nombre varchar(100) not null,
marca varchar(100) not null,
tipo varchar(100) not null,-- bebidas, almacen, carnes y pescados, frutas y verduras, etc 
grupo varchar(100) not null, -- Vinos, Gaseosas, etc
peso decimal(8,3) not null,
precio_unidad decimal(8,3) not null,
stock int not null

);


-- ======= Restricciones Tabla productos ===========


--UNIQUE CODIGO
alter table productos
add constraint UNIQUE_productos_codigo
unique(codigo);


-- CHECK PESO
alter table productos 
add constraint CHECK_productos_peso
check(peso > 0);

-- CHECK PRECIO_UNIDAD
alter table productos 
add constraint CHECK_productos_precio_unidad
check(precio_unidad > 0);

-- CHECK STOCK
alter table productos 
add constraint CHECK_productos_stock
check(stock > 0);


-- CHECK NOMBRE | MARCA | TIPO | GRUPO 
alter table productos 
add constraint CHECK_nombre_marca_tipo_grupo
check((nombre <> '') and (marca <> '') and (tipo <> '') and (grupo <> ''));





-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------


-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------
-- ==================================
-- ======= TABLA USUARIOS ===========
-- ==================================

create table usuarios(

id bigint primary key,
nombre varchar(200) not null,
username varchar(100) not null,
password varchar(255) not null,
email varchar(255) not null

);


-- ======= Restricciones Tabla productos ===========


--UNIQUE USUARIO
alter table usuarios
add constraint UNIQUE_usuarios_username
unique(username);


-- CHECK USUARIO | PASSWORD | ROL 
alter table usuarios 
add constraint CHECK_username_password
check((username <> '') and (password <> ''));





-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------
-- ==================================
-- ======= TABLA ROLES ===========
-- ==================================


create type tipo_rol_enum as enum('ROLE_ADMIN','ROLE_USER');

create table roles(

id bigint primary key,
rol tipo_rol_enum not null

);


-- ======= Restricciones Tabla roles ===========


--UNIQUE rol
alter table roles
add constraint UNIQUE_roles_rol
unique(rol);



-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------
-- ========================================
-- ======= TABLA USUARIOS_ROLES ===========
-- ========================================


create table usuarios_roles(
id bigint primary key,
id_usuario bigint not null,
id_rol bigint not null

);


-- ======= Restricciones Tabla usuarios_roles ===========


-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------



-- ======== TODOS LOS ID´S PK DE LAS TABLAS COMO AUTO_INCREMENT =======


create sequence id_sec_produc;
create sequence id_sec_usuar;
create sequence id_sec_roles;
create sequence id_sec_usuar_roles;



alter table productos alter id set default nextval('id_sec_produc');
alter table usuarios alter id set default nextval('id_sec_usuar');
alter table roles alter id set default nextval('id_sec_roles');
alter table usuarios_roles alter id set default nextval('id_sec_usuar_roles');

