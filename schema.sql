-- Tabla de productos
CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    precio NUMERIC(10, 2) NOT NULL
);

-- Tabla de usuarios para autenticación básica
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Insertar datos de ejemplo en la tabla de usuarios
INSERT INTO usuarios (username, password) VALUES
    ('admin', 'admin123'),
    ('user', 'password123');


-- Insertar productos de ejemplo en la tabla productos
INSERT INTO productos (nombre, precio) VALUES
    ('Laptop HP Pavilion', 899.99),
    ('Smartphone Samsung Galaxy S22', 999.00),
    ('Tablet Apple iPad Pro', 1099.99),
    ('Monitor Dell UltraSharp 27"', 349.99),
    ('Impresora Canon PIXMA', 129.95),
    ('Auriculares Sony WH-1000XM4', 349.00),
    ('Teclado mecánico Corsair K95 RGB', 179.99),
    ('Mouse Logitech MX Master 3', 99.99),
    ('Cámara Canon EOS Rebel T7i', 699.00),
    ('Drone DJI Mavic Air 2', 799.00);
