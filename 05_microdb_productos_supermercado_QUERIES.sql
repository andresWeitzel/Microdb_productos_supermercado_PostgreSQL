


/* -----------------------------------------------
 * ------ MICRODB PRODUCTOS SUPERMERCADO ---------
 * -----------------------------------------------
 * 
 * 
 * ========= QUERIES =============
 */



-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ================================
-- ======= TABLA PRODUCTOS ========
-- ================================

select * from productos;



--Todos los Productos cuyo peso sea 1 kilo o menos
select * from productos where peso <= 1;

--Todos los Productos cuyo peso sea mayor a 1 kilo
select * from productos where peso > 1;

--Productos Ordenados por nombre
select * from productos order by nombre;


--Productos Ordenados por codigo
select * from productos order by codigo;



-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ======================================================
-- ======= TABLA USUARIOS,ROLES Y USUARIOS_ROLES ========
-- ======================================================

select * from usuarios;
select * from roles;
select * from usuarios_roles;


--Usuarios Ordenados por usuarios
select * from usuarios order by usuarios;


-- Usuarios ordenados por rol admin
select * from usuarios 
join usuarios_roles on id_usuario = usuarios.id 
join roles on  roles.id = usuarios_roles.id_rol
where roles.rol = 'ROLE_ADMIN'
order by usuarios.id;


-- Usuarios ordenados por rol user
select * from usuarios 
join usuarios_roles on usuarios_roles.id_usuario = usuarios.id 
join roles on  roles.id = usuarios_roles.id_rol
where roles.rol = 'ROLE_USER'
order by usuarios.id;

-- Usuarios ordenados que tengan el rol admin y user
select * from usuarios 
join usuarios_roles on usuarios_roles.id_usuario = usuarios.id 
join roles on  roles.id = usuarios_roles.id_rol
where (roles.rol = 'ROLE_ADMIN' and roles.rol = 'ROLE_USER')
order by usuarios.id;

