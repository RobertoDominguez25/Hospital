-- 1. Crear la base de datos
CREATE DATABASE hospital;
USE hospital;

-- 2. Tabla de Pacientes
CREATE TABLE pacientes (
    dni CHAR(9) PRIMARY KEY,
    password VARCHAR(100) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(200),
    telefono VARCHAR(15)
);

-- 3. Tabla de Especialidades
CREATE TABLE especialidades (
    id_especialidad INT AUTO_INCREMENT PRIMARY KEY,
    nombre_especialidad VARCHAR(100) NOT NULL
);

-- 4. Tabla de Citas
CREATE TABLE citas (
    id_cita INT AUTO_INCREMENT PRIMARY KEY,
    fecha_cita DATE NOT NULL,
    dni_paciente CHAR(9),
    id_especialidad INT,
    FOREIGN KEY (dni_paciente) REFERENCES pacientes(dni),
    FOREIGN KEY (id_especialidad) REFERENCES especialidades(id_especialidad)
);

-- 5. Insertar pacientes (7 en total)
INSERT INTO pacientes (dni, password, nombre, direccion, telefono) VALUES
('11111111A', 'pass1', 'Juan Pérez', 'Calle Mayor 1', '600111111'),
('22222222B', 'pass2', 'María López', 'Calle Sol 2', '600222222'),
('33333333C', 'pass3', 'Carlos Ruiz', 'Calle Luna 3', '600333333'),
('44444444D', 'pass4', 'Ana Torres', 'Calle Río 4', '600444444'),
('55555555E', 'pass5', 'Luis Gómez', 'Calle Mar 5', '600555555'),
('66666666F', 'pass6', 'Laura Sánchez', 'Calle Flor 6', '600666666'),
('77777777G', 'pass7', 'Pedro Martín', 'Calle Sol 7', '600777777');

-- 6. Insertar especialidades
INSERT INTO especialidades (nombre_especialidad) VALUES
('Cardiología'),
('Dermatología'),
('Pediatría'),
('Traumatología'),
('Neurología');

-- 7. Insertar citas (ejemplo: todas con fecha de HOY)
INSERT INTO citas (fecha_cita, dni_paciente, id_especialidad) VALUES
(CURDATE(), '11111111A', 1),
(CURDATE(), '22222222B', 2),
(CURDATE(), '33333333C', 3),
(CURDATE(), '44444444D', 4),
(CURDATE(), '55555555E', 5),
(CURDATE(), '66666666F', 1),
(CURDATE(), '77777777G', 2);
