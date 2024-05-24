-- Verificar si la base de datos ya existe

    -- Crear la base de datos Alumno
    CREATE DATABASE Alumno;
END;
GO

-- Usar la base de datos Alumno
USE Alumno;
GO

-- Verificar si la tabla Carrera ya existe

    -- Crear la tabla Carrera
    CREATE TABLE Carrera (
        id INT NOT NULL PRIMARY KEY,
        nombre NVARCHAR(100) NOT NULL
    );
GO

-- Verificar si la tabla Alumno ya existe


    -- Crear la tabla Alumno
    CREATE TABLE Alumno (
        id INT NOT NULL PRIMARY KEY,
        nombres NVARCHAR(100) NOT NULL,
        apellidos NVARCHAR(100) NOT NULL,
        carnet NVARCHAR(50) NOT NULL,
        telefono NVARCHAR(20) NOT NULL,
        idCarrera INT NOT NULL,
        CONSTRAINT FK_Alumno_Carrera FOREIGN KEY (idCarrera) REFERENCES Carrera(id)
    );

GO

INSERT INTO Carrera (id, nombre) VALUES (1, 'Ingeniería en Sistemas');
INSERT INTO Carrera (id, nombre) VALUES (2, 'Chocolate');
INSERT INTO Carrera (id, nombre) VALUES (3, 'Leche');
INSERT INTO Carrera (id, nombre) VALUES (4, 'Medicina');
INSERT INTO Carrera (id, nombre) VALUES (5, 'Tenedores');