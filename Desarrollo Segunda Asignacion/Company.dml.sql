-- ===========================
-- Registros para la tabla Staff
-- ===========================
INSERT INTO staff(id, name, dOBirthday, address, companyID, sinceDate) VALUES
    (1111, 'Andrés Castillo', '1994-02-12', 'Calle 77 #12-40', 1, '2019-08-19'),
    (2222, 'Fernanda Morales', '1986-10-03', 'Carrera 55 #44-15', 2, '2014-12-01'),
    (3333, 'Carlos Pérez', '1990-05-10', 'Calle 10 #12-30', 3, '2015-01-01'),
    (4444, 'Ana Gómez', '1985-08-22', 'Carrera 20 #45-60', 4, '2017-03-15'),
    (5555, 'Luis Martínez', '1992-12-02', 'Av. Siempre Viva 742', 5, '2019-06-20'),
    (6666, 'María Rodríguez', '1988-04-18', 'Calle 50 #34-22', 6, '2018-09-01'),
    (7777, 'Jorge Ramírez', '1995-07-30', 'Carrera 100 #80-40', 7, '2020-02-11'),
    (8888, 'Laura Sánchez', '1983-01-14', 'Calle 25 #13-05', 8, '2012-11-05'),
    (9999, 'Pedro López', '1991-03-25', 'Carrera 90 #22-10', 9, '2021-07-07'),
    (1010, 'Sofía Torres', '1987-09-09', 'Av. Principal 500', 10, '2014-04-30'),
    (1110, 'Diego Herrera', '1993-11-19', 'Calle 60 #70-33', 11, '2016-10-25'),
    (1210, 'Valentina Díaz', '1989-06-06', 'Carrera 33 #99-01', 12,'2013-05-18'),
    (1310, 'Andrés Silva', '1994-02-12', 'Calle 12 #15-40', 13,'2022-08-01'),
    (1410, 'Fernanda Castro', '1986-10-05', 'Carrera 55 #18-77', 14,'2011-12-15');

-- ===========================
-- Registros para la tabla Phone (el atributo multivaluado de Staff)
-- ===========================
INSERT INTO phone(number, staffID) VALUES
    ('3152223344', 1111),
    ('3165556677', 1210),
    ('3001234567', 1111),
    ('3107654321', 1310),
    ('3019876543', 1410),
    ('3021230987', 3333),
    ('3044567890', 4444),
    ('3056789012', 5555),
    ('3112345678', 4444),
    ('3128765432', 5555),
    ('3133456789', 9999),
    ('3149876543', 6666),
    ('3151112233', 1010),
    ('3162223344', 1110);

-- ===========================
-- Registros para la tabla Wife
-- ===========================
INSERT INTO wife(dni, nameWife, staffID) VALUES
    (099, 'Isabel Cárdenas', 1111),
    (100, 'Verónica Méndez', 2222),
    (101, 'Paola Jiménez', 3333),
    (102, 'Claudia Torres', 4444),
    (103, 'Sandra López', 5555),
    (104, 'Carolina Ruiz', 6666),
    (105, 'Marta Salazar', 7777),
    (106, 'Patricia Castro', 8888),
    (107, 'Lucía Hernández', 9999),
    (108, 'Gabriela Ríos', 1010),
    (109, 'Natalia Pardo', 1110),
    (110, 'Diana Vega', 1210),
    (111, 'Verónica Silva', 1310),
    (112, 'Liliana Duarte', 1410);

-- ===========================
-- Registros para la tabla Company
-- ===========================
INSERT INTO company(companyID, companyName) VALUES
    (1, 'FinanSecure'),
    (2, 'BioTechLabs'),
    (3, 'TechCorp'),
    (4, 'InnovaSoft'),
    (5, 'DataWorks'),
    (6, 'HealthPlus'),
    (7, 'GreenEnergy'),
    (8, 'BuildIt'),
    (9, 'AgroMax'),
    (10, 'CyberNet'),
    (11, 'LogistiCo'),
    (12,'EduSmart'),
    (13,'FinTechPro'),
    (14,'MediCare+');

-- ===========================
-- Registros para la tabla Task
-- ===========================
INSERT INTO task(taskID, description) VALUES
    (11, 'Supervisar calidad'),
    (12, 'Planear campañas de marketing'),
    (13, 'Desarrollar backend'),
    (14, 'Diseñar UI'),
    (15, 'Administrar base de datos'),
    (16, 'Redactar documentación'),
    (17, 'Atender soporte técnico'),
    (18, 'Gestionar proyectos'),
    (19, 'Analizar requerimientos'),
    (20, 'Optimizar procesos'),
    (21, 'Configurar servidores'),
    (22,'Capacitar al personal'),
    (23,'Realizar pruebas QA'),
    (24,'Coordinar marketing digital');

-- ===========================
-- Registros para la tabla Child (entidad débil)
-- ===========================
INSERT INTO child(nameChild, staffID) VALUES
    ('Alejandro Castillo', 1111),
    ('Valentina Morales', 2222),
    ('Mateo Pérez', 3333),
    ('Valeria Pérez', 4444),
    ('Andrés Gómez', 5555),
    ('Camila Martínez', 6666),
    ('Juliana Rodríguez', 7777),
    ('Santiago Ramírez', 8888),
    ('Daniel Sánchez', 9999),
    ('Mariana López', 1010),
    ('Sebastián Torres', 1110),
    ('Martín Herrera', 1210),
    ('Tomás Silva', 1310),
    ('Isabella Castro', 1410);

-- ===========================
-- Registro para la tabla StaffTask (representa la relación N:M)
-- ===========================
INSERT INTO stafftask(staffID, taskID) VALUES
    (1111, 11),
    (2222, 12),
    (3333, 13),
    (4444, 14),
    (5555, 15),
    (6666, 16),
    (7777, 17),
    (8888, 18),
    (9999, 19),
    (1010, 20),
    (1110, 21),
    (1210, 22),
    (1310, 23),
    (1410, 24);