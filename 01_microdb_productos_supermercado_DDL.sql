
/* ---------------------------------------
 * ------ PRODUCTOS SUPERMERCADO ---------
 * ---------------------------------------
 * 
 * 
 * ========= DDL =============
 */



drop table if exists productos ;
drop table if exists usuarios ;

drop sequence if exists id_sec_productos;
drop sequence if exists id_sec_usuarios;




-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------
-- ===================================
-- ======= TABLA PRODUCTOS ===========
-- ===================================

create table productos(

id int primary key,
codigo varchar(100) not null,
imagen varchar(600) ,
nombre varchar(100) not null,
marca varchar(60) not null,
tipo varchar(60) not null,-- bebidas, almacen, carnes y pescados, frutas y verduras, etc 
grupo varchar(60) not null, -- Vinos, Gaseosas, etc
peso decimal(8,3) not null,
precio_unidad decimal(8,3) not null,
stock smallint not null

);


-- ======= Restricciones Tabla productos ===========

-- UNIQUE ID
alter table productos 
add constraint UNIQUE_productos_id
unique(id);

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

id int primary key,
usuario varchar(100) not null,
password varchar(255) not null,
rol varchar(50) not null

);


-- ======= Restricciones Tabla productos ===========

-- UNIQUE ID
alter table usuarios 
add constraint UNIQUE_usuarios_id
unique(id);

--UNIQUE USUARIO
alter table usuarios
add constraint UNIQUE_usuarios_usuario
unique(usuario);


-- CHECK USUARIO | PASSWORD | ROL 
alter table usuarios 
add constraint CHECK_usuario_password_rol
check((usuario <> '') and (password <> '') and (rol <> ''));





-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------




create sequence id_sec_productos;
create sequence id_sec_usuarios;


alter table productos alter id set default nextval('id_sec_productos');
alter table usuarios alter id set default nextval('id_sec_usuarios');


-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------



