
/* ---------------------------------------
 * ------ PRODUCTOS SUPERMERCADO ---------
 * ---------------------------------------
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

--Actualizamos el Usuario segun su Nombre
update usuarios set password=PGP_SYM_ENCRYPT('Asd123ggh','AES_KEY') where usuario='Marcos';



select * from usuarios;