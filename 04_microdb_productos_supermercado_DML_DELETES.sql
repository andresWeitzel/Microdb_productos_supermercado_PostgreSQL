/* ---------------------------------------
 * ------ PRODUCTOS SUPERMERCADO ---------
 * ---------------------------------------
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

--Eliminamos el Producto cuya marca sea Ap�stoles y cuyo grupo sea Leches
delete from productos where ((marca ='Ap�stoles')and (grupo = 'Leches'));



--LACTEOS Y PRODUCTOS FRESCOS
insert into productos(codigo, imagen, nombre, marca, tipo, grupo, peso, precio_unidad, stock) values
('LL8JI9D', 'https://jumboargentina.vtexassets.com/arquivos/ids/641230-1200-auto?v=637557810525130000&width=1200&height=auto&aspect=true' ,'Leche Entera Larga Vida Ap�stoles 1L', 'Ap�stoles' ,'L�cteos y Productos Frescos', 'Leches' , 1.00 , 67.15 , 500 );


select * from productos;





-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA USUARIOS ========
-- ==================================

select * from usuarios;

--Eliminamos el Usuario seg�n el usuario
delete from usuarios where ((usuario ='Marcos')and (rol = 'USER'));

--Reinsertamos el usuario
insert into usuarios(usuario,password, rol)values
('Marcos',PGP_SYM_ENCRYPT('Asd123L99','AES_KEY'),'USER');

select * from usuarios;
