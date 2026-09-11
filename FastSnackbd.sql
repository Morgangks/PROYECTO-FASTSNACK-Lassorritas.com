DROP DATABASE IF EXISTS FastSnackbd;
CREATE DATABASE FastSnackbd;
USE FastSnackbd;

-- 1. TABLA PERSONA (Debe crearse primero)
CREATE TABLE Persona (
    id_persona INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20)
) ENGINE=InnoDB;

-- 2. TABLA CLIENTE
CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    direccion VARCHAR(150),
    CONSTRAINT fk_cliente_persona
        FOREIGN KEY (id_cliente)
        REFERENCES Persona(id_persona)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB;

-- 3. TABLA PRODUCTO
CREATE TABLE Producto (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10,2)
) ENGINE=InnoDB;

-- 4. TABLA ESTADO PEDIDO
CREATE TABLE EstadoPedido (
    id_estado TINYINT PRIMARY KEY,
    nombre_estado VARCHAR(30)
) ENGINE=InnoDB;

-- 5. TABLA PEDIDO
CREATE TABLE Pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_estado TINYINT NOT NULL,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_pedido_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES Cliente(id_cliente)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    CONSTRAINT fk_pedido_estado
        FOREIGN KEY (id_estado)
        REFERENCES EstadoPedido(id_estado)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
) ENGINE=InnoDB;

-- 6. TABLA DETALLE DEL PEDIDO
CREATE TABLE PedidoProducto (
    id_pedido INT,
    id_producto INT,
    cantidad INT DEFAULT 1,

    PRIMARY KEY (id_pedido, id_producto),

    CONSTRAINT fk_detalle_pedido
        FOREIGN KEY (id_pedido)
        REFERENCES Pedido(id_pedido)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_detalle_producto
        FOREIGN KEY (id_producto)
        REFERENCES Producto(id_producto)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
) ENGINE=InnoDB;

-- DATOS INICIALES
INSERT INTO EstadoPedido VALUES
(1,'Pendiente'),
(2,'Preparando'),
(3,'Enviado'),
(4,'Entregado');

INSERT INTO Producto VALUES
(1,'Hamburguesa',5.00),
(2,'Pizza',8.00),
(3,'Hot Dog',4.00),
(4,'Papas Fritas',3.00),
(5,'Gaseosa',2.00),
(6,'dona',1.50);