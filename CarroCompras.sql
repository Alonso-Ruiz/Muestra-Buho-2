-- Crear tabla de Productos
CREATE TABLE Productos (
    ID_Producto INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Descripcion TEXT,
    Precio DECIMAL(10, 2),
    CantidadStock INT,
    Categoria VARCHAR(255),

);

-- Crear tabla de Clientes
CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Apellido VARCHAR(255),
    Direccion VARCHAR(255),
    Ciudad VARCHAR(255),
    Pais VARCHAR(255),
    CorreoElectronico VARCHAR(255),

);

-- Crear tabla de Órdenes
CREATE TABLE Ordenes (
    ID_Orden INT PRIMARY KEY,
    ID_Cliente INT,
    FechaHora DATETIME,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)

);

-- Crear tabla de Detalles de la Orden
CREATE TABLE DetallesOrden (
    ID_Orden INT,
    ID_Producto INT,
    Cantidad INT,
    FOREIGN KEY (ID_Orden) REFERENCES Ordenes(ID_Orden),
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)

);