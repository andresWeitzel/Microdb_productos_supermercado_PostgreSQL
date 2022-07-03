

/* -----------------------------------------------
 * ------ MICRODB PRODUCTOS SUPERMERCADO ---------
 * -----------------------------------------------
 * 
 * 
 * ========= DML DELETES =============
 */

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA PRODUCTOS ========
-- ==================================

select * from productos;

-- ------------------ LACTEOS Y PRODUCTOS FRESCOS -------------------------------

--Eliminamos el Producto cuya marca sea Apóstoles, pertenezca al grupo de Leches y cuyo código sea LL8JI9D
delete from productos where ((marca ='Apóstoles') and (grupo = 'Leches') and (codigo = 'LL8JI9D'));

-- Reinsertamos el producto nuevamente
insert into productos(codigo, imagen, nombre, marca, tipo, grupo, peso, precio_unidad, stock) values
('LL8JI9D', 'https://jumboargentina.vtexassets.com/arquivos/ids/641230-1200-auto?v=637557810525130000&width=1200&height=auto&aspect=true' ,'Leche Entera Larga Vida Apóstoles 1L', 'Apóstoles' ,'Lácteos y Productos Frescos', 'Leches' , 1.00 , 67.15 , 500 );

-- ------------------ FRUTAS Y VERDURAS -------------------------------

-- Eliminamos el Producto cuyo codigo sea GHT7729
delete from productos where (codigo = 'GHT7729');

-- Reinsertamos el producto nuevamente
insert into productos(codigo, imagen, nombre, marca, tipo, grupo, peso, precio_unidad, stock) values
('GHT7729', 'https://http2.mlstatic.com/D_NQ_NP_999322-MLA46496226700_062021-O.webp' ,'Mandarina Nova Huella Natural', 'Huella Natural' ,'Frutas y Verduras', 'Frutas' , 1.00 , 70.85 , 300 );



select * from productos;


-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA USUARIOS ========
-- ==================================

select * from usuarios;

--Eliminamos el Usuario según el username
delete from usuarios where (username ='juanAntonio');

--Reinsertamos el usuario
insert into usuarios(nombre,username,password,email)values
('Juan Antonio','juanAntonio',crypt('juanAntonio', gen_salt('bf')),'juan2022@gmail.com');

select * from usuarios;


-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ============================
-- ======= TABLA ROLES ========
-- ============================

select * from roles;

--Eliminamos el Rol según el tipo
delete from roles where (rol ='ROLE_USER');


-- Reinsertamos el Rol
insert into roles(rol) values ('ROLE_USER');

select * from roles;

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- =====================================
-- ======= TABLA USUARIOS_ROLES ========
-- =====================================

select * from usuarios_roles;

--Eliminamos el UsuarioRol según el ID de usuario
delete from usuarios_roles where (id_usuario = 4);



--Reinsertamos el usuario_rol
insert into usuarios_roles(id_usuario, id_rol) values
(4,3);

--Insertamos el resto de roles de usuarios eliminados anteriormente
--admin rol user
insert into usuarios_roles(id_usuario, id_rol) values
(3,3);

--actualizamos el rol_user para andres
update usuarios_roles set id_rol = 3  where id = 2;


select * from usuarios_roles;




