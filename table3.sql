-- Insertar los datos de una empresa
INSERT INTO EMPRESA (IdEmpresa, NombreEmpresa) 
VALUES (1, 'Empresa XYZ');

-- Insertar 2 tipos de vehículo
INSERT INTO TIPOVEHICULO (IdTipo, Tipo) 
VALUES (1, 'Sedan'), 
       (2, 'SUV');

-- Insertar 3 clientes
INSERT INTO CLIENTE (IdCliente, Nombre, Correo, Direccion, RUT, Celular)
VALUES (1, 'Juan Pérez', 'juanperez@mail.com', 'Calle Falsa 123', '11111111-1', '123456789'),
       (2, 'Maria González', 'mariagonzalez@mail.com', 'Calle Real 456', '22222222-2', '987654321'),
       (3, 'Carlos López', 'carloslopez@mail.com', 'Avenida Siempre Viva 789', '33333333-3', '555555555');

-- Insertar 2 marcas
INSERT INTO MARCA (IdMarca, NombreMarca, IdEmpresa)
VALUES (1, 'Toyota', 1),
       (2, 'Ford', 1);

-- Insertar 5 vehículos
INSERT INTO VEHICULO (Patente, IdMarca, IdTipo, Modelo, Color, PrecioVenta)
VALUES ('ABC123', 1, 1, 'Corolla', 'Rojo', 15000),
       ('DEF456', 1, 2, 'RAV4', 'Azul', 20000),
       ('GHI789', 2, 1, 'Focus', 'Negro', 18000),
       ('JKL012', 2, 2, 'Explorer', 'Blanco', 25000),
       ('MNO345', 1, 1, 'Yaris', 'Verde', 13000);

-- Eliminar el último cliente (Carlos López)
DELETE FROM CLIENTE 
WHERE IdCliente = 3;

-- Insertar 1 venta para cada cliente
INSERT INTO VENTA (IdVenta, Fecha, IdCliente, Patente)
VALUES (1, '2024-08-27', 1, 'ABC123'),
       (2, '2024-08-27', 2, 'DEF456');

-- Modificar el nombre del segundo cliente (Maria González a Maria Gomez)
UPDATE CLIENTE 
SET Nombre = 'Maria Gomez' 
WHERE IdCliente = 2;

-- Listar todas las ventas
SELECT * FROM VENTA;

-- Listar las ventas del primer cliente (Juan Pérez)
SELECT * FROM VENTA 
WHERE IdCliente = 1;

-- Obtener la patente de todos los vehículos
SELECT Patente FROM VEHICULO;
