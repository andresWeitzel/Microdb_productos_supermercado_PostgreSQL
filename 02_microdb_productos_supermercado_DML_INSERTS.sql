
/* -----------------------------------------------
 * ------ MICRODB PRODUCTOS SUPERMERCADO ---------
 * -----------------------------------------------
 * 
 * 
 * ========= DML INSERTS =============
 */

-- Eliminamos todos los Registros de las tablas
delete from productos cascade;
delete from usuarios cascade;
delete from roles cascade;
delete from usuarios_roles cascade;


-- Alteramos la secuencia auto incrementable id 
alter sequence id_sec_produc restart with 1;
alter sequence id_sec_usuar restart with 1;
alter sequence id_sec_roles restart with 1;
alter sequence id_sec_usuar_roles restart with 1;



-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA PRODUCTOS ==========
-- ==================================


select column_name, data_type, is_nullable from 
information_schema.columns where table_name = 'productos';

-- BEBIDAS
insert into productos(codigo, imagen, nombre, marca, tipo, grupo, peso, precio_unidad, stock) values
('AET78U9', 'https://http2.mlstatic.com/D_NQ_NP_792586-MLA47682120282_092021-O.webp' ,  'Agua de Mesa sin Gas Nestl� Bid�n 6.3L', 'Nestl�' ,'Bebidas', 'Agua' , 6.3 , 195.60 , 500 ),
('UI7R8O9', 'https://http2.mlstatic.com/D_NQ_NP_916232-MLA43940685535_102020-V.webp', 'Vino blanco Cuesta Del Madero 750 cc.', 'Cuesta del Madero' ,'Bebidas', 'Vinos' , 0.750 , 187.75 , 200 ),
('YUT2563','https://ardiaprod.vteximg.com.br/arquivos/ids/189380-1000-1000/Gaseosa-Cola-Cunnington-225-Lts-_1.jpg?v=637443308163370000' , 'Gaseosa cola Cunnington 2.25L', 'Cunnington' ,'Bebidas', 'Gaseosas' , 2.25 , 90.00 , 300 ),
('YUT2564', 'https://http2.mlstatic.com/D_NQ_NP_864108-MLA45225461317_032021-O.webp' , 'Gaseosa Coca Cola sabor original 1.25L', 'Coca cola' ,'Bebidas', 'Gaseosas' , 1.25 , 108.70 , 300 );


-- CARNES Y PESCADOS
insert into productos(codigo, imagen , nombre, marca, tipo, grupo, peso, precio_unidad, stock) values 
('COPR8O6', 'https://d3ugyf2ht6aenh.cloudfront.net/stores/861/458/products/tapa-de-asado1-5eb3e89c1d76286a6815702030218736-480-0.jpg' ,'Tapa de Asado de Novillo x kg', 'Gen�rico' ,'Carnes y Pescados', 'Carne Vacuna' , 1.00 , 649.00 , 100 ),
('HJ8R2O6', 'https://t2.rg.ltmcdn.com/es/images/8/7/0/img_medallones_de_pollo_33078_orig.jpg' , 'Medall�n de pollo rebozado crocante 400 g. x 4 uni', 'Gen�rico' ,'Carnes y Pescados', 'Pollo y Granja' , 0.400 , 369.00 , 100 ),
('KJ8R2O3', 'https://calisa.com.ar/wp-content/uploads/2020/03/pollo_con_menudos.png' ,'Pollo entero congelado x kg.', 'Gen�rico' ,'Carnes y Pescados', 'Pollo y Granja' , 1.00 , 174.00 , 300 ),
('JJ5R333', 'https://www.terravilena.es/wp-content/uploads/2019/11/cordero.jpg' ,'Cordero entero x kg.', 'Gen�rico' ,'Carnes y Pescados', 'Pollo y Granja' , 1.00 , 829.90 , 100 );


-- CONGELADOS
insert into productos(codigo, imagen,  nombre, marca, tipo, grupo, peso, precio_unidad, stock) values
('KLIO837', 'https://ardiaprod.vteximg.com.br/arquivos/ids/186555-1000-1000/Bocaditos-de-Pollo--Swift-380-Gr-_1.jpg?v=637427588306630000' ,'Bocaditos de Pollo Swift 380g', 'Swift' ,'Congelados', 'Nuggets y Rebozados' , 0.380 , 224.71 , 250 ),
('KLK1832', 'https://jumboargentina.vtexassets.com/arquivos/ids/339785-1200-auto?v=636439393168030000&width=1200&height=auto&aspect=true' ,'Medall�n de carne Swift receta especial reducido en grasas 4 u.', 'Swift' ,'Congelados', 'Hamburguesas' , 0.320 , 419.10 , 200 ),
('DJK7365', 'https://walmartar.vteximg.com.br/arquivos/ids/909547-292-292/Helado-Frigor-Dulce-De-Leche-Frutilla-Chocolate-1-Kg-1-484640.jpg?v=637715616644530000' ,'Helado Frigor dulce de leche vainilla chocolate balde 1 kg.', 'Frigor' ,'Congelados', 'Helados' , 1.00 , 850.00 , 100 ),
('DJK7366', 'https://alohamaxikiosco.com.ar/wp-content/uploads/2020/08/postre-bon-o-bon-2.jpg','Postre helado Bon O Bon dulce de leche, americana y chocolate 637 g.', 'Bon o Bon' ,'Congelados', 'Helados' , 0.637 , 529.50 , 100 );



--LACTEOS Y PRODUCTOS FRESCOS
insert into productos(codigo, imagen, nombre, marca, tipo, grupo, peso, precio_unidad, stock) values
('LL8JI9D', 'https://jumboargentina.vtexassets.com/arquivos/ids/641230-1200-auto?v=637557810525130000&width=1200&height=auto&aspect=true' ,'Leche Entera Larga Vida Ap�stoles 1L', 'Ap�stoles' ,'L�cteos y Productos Frescos', 'Leches' , 1.00 , 67.15 , 500 ),
('LL8JI10', 'https://carrefourar.vtexassets.com/arquivos/ids/204565/7794710010406_02.jpg?v=637592985140930000' ,'Leche Entera uat Larclas tetra 1L', 'Larclas' ,'L�cteos y Productos Frescos', 'Leches' , 1.00 , 70.85 , 500 ),
('HJA2234', 'https://arikiosco.tiendalite.com/images/products/500/86749394-1266.png' ,'Yogur bebible entero Sancor yogs mult. vainilla 1 l.', 'Sancor' ,'L�cteos y Productos Frescos', 'Yogures' , 1.00 , 226.80 , 300 ),
('HJA2235', 'https://tunovo.com.ar/wp-content/uploads/7790080064223_01.jpg' ,'Yogur bebible entero Sancor yogs mult. frutilla 1 l.', 'Sancor' ,'L�cteos y Productos Frescos', 'Yogures' , 1.00 , 230.80 , 300 );



--FRUTAS Y VERDURAS
insert into productos(codigo, imagen, nombre, marca, tipo, grupo, peso, precio_unidad, stock) values
('GHT7729', 'https://http2.mlstatic.com/D_NQ_NP_999322-MLA46496226700_062021-O.webp' ,'Mandarina Nova Huella Natural', 'Huella Natural' ,'Frutas y Verduras', 'Frutas' , 1.00 , 70.85 , 300 ),
('GHJ7711', 'https://http2.mlstatic.com/D_NQ_NP_914650-MLA31037009580_062019-O.webp' ,'Cebolla x kg', 'Gen�rico' ,'Frutas y Verduras', 'Verduras' , 1.00 , 48.00 , 300 ),
('LLL7465', 'https://http2.mlstatic.com/D_NQ_NP_678730-MLA47346843510_092021-O.webp' ,'Melon amarillo Huella Natural x kg.', 'Huella Natural' ,'Frutas y Verduras', 'Frutas' , 1.00 , 140.00 , 200 ),
('EEE8277', 'https://elegifruta.com.ar/onepage/wp-content/uploads/2017/07/manzana_roja.jpg' ,'Manzana roja x kg.', 'Gen�rico' ,'Frutas y Verduras', 'Frutas' , 1.00 , 159.00 , 100 );



select * from productos;




-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA USUARIOS ===========
-- ==================================


select column_name, data_type, is_nullable from 
information_schema.columns where table_name = 'usuarios';

-- https://daniel.fone.net.nz/blog/2020/09/09/timing-safe-bcrypt-authentication-in-postgresql/
insert into usuarios(nombre,username, password, email) values
('Juan Antonio','juan',crypt('123', gen_salt('bf')),'juan@gmail.com'),
('Andres Weitzel','andres',crypt('123456', gen_salt('bf')),'andres@gmail.com'),
('admin','admin',crypt('admin', gen_salt('bf')),'admin@gmail.com');

select * from usuarios;


-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA ROLES ===========
-- ==================================


select column_name, data_type, is_nullable from 
information_schema.columns where table_name = 'roles';

insert into roles(rol) values
('ROLE_ADMIN'),
('ROLE_USER');

select * from roles;

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA USUARIOS_ROLES ===========
-- ==================================


select column_name, data_type, is_nullable from 
information_schema.columns where table_name = 'usuarios_roles';

insert into usuarios_roles(id_usuario, id_rol) values
(2,1),
(2,2),
(1,2),
(3,1),
(3,2);

select * from usuarios_roles;





