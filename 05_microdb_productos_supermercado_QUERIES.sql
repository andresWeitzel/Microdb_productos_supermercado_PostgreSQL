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

-- ================================
-- ======= TABLA USUARIOS ========
-- ================================

select * from usuarios;


--Usuarios Ordenados por usuarios
select * from usuarios order by usuario;

