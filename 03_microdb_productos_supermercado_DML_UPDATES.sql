
/* -----------------------------------------------
 * ------ MICRODB PRODUCTOS SUPERMERCADO ---------
 * -----------------------------------------------
 *  
 * 
 * ========= DML UPDATES =============
 */


-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA PRODUCTOS ========
-- ==================================

select * from productos;



-- Actualizamos los precios de las frutas segun el nombre y grupo del Producto
update productos set precio_unidad = (precio_unidad + 20) 
where ((nombre = 'Mandarina Nova Huella Natural') and (grupo='Frutas'));  


-- Actualizacion de precios en base a su codigo
update productos set precio_unidad = 240
where codigo = 'AET78U9';


--Depuramos los nombres
update productos set nombre  = initcap(nombre);

-- Depuramos (AGREGAMOS nro kilogramo) en todos los registros necesarios 
update productos set nombre  = replace(nombre, 'Kg' , '1Kg');

-- Depuramos (CAMBIAMOS X de kg) en todos los registros necesarios 
update productos set nombre  = replace(nombre, 'X' , 'x');
 

-- Depuramos (CAMBIAMOS  l de Litros) en todos los registros necesarios 
update productos set nombre  = replace(nombre, '1l' , '1L');
 

--Cambiamos el Stock segun marca y gruopo
update productos set stock = 120 
where ((marca='Cuesta del Madero') and (grupo='Vinos'));


select * from productos;



-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ================================
-- ======= TABLA USUARIOS ========
-- ===============================

select * from usuarios;

--Actualizamos la contraseña segun su username
update usuarios set password = crypt('Asd123ggh', gen_salt('bf')) where username='juan';


--Actualizamos el Username segun su Nombre
update usuarios set username='juanAntonio' where nombre='Juan Antonio';




select * from usuarios;



-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ================================
-- ======= TABLA ROLES ========
-- ===============================

select * from roles;

-- pisamos los roles para testear su actualizacion
update roles set rol = 'ROLE_ADMIN' where rol='ROLE_ADMIN';
update roles set rol = 'ROLE_USER' where rol='ROLE_USER';


select * from roles;


-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ==================================
-- ==== TABLA USUARIOS_ROLES ========
-- ==================================



select * from usuarios_roles;

-- pisamos los valores para testear su actualizacion
update usuarios_roles set id_rol  = 2 where (id_usuario = 1 and id = 1);
update usuarios_roles set id_rol  = 1 where (id_usuario = 2 and id = 2);
update usuarios_roles set id_rol  = 2 where (id_usuario = 2 and id = 3);
update usuarios_roles set id_rol  = 1 where (id_usuario = 3 and id = 4);
update usuarios_roles set id_rol  = 2 where (id_usuario = 3 and id = 5);


select * from usuarios_roles;








