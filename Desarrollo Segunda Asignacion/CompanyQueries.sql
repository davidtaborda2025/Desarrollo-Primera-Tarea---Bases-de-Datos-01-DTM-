-- Listar todos los empleados junto con la empresa donde trabajan
SELECT s.id, s.name AS empleado, c.companyName AS empresa, s.sinceDate
FROM staff s
         JOIN company c ON s.companyID = c.companyID
ORDER BY c.companyName;

-- Consultar todos los teléfonos de un empleado específico
SELECT s.name AS empleado, p.number AS telefono
FROM phone p
         JOIN staff s ON p.staffID = s.id
WHERE s.id = 1010;

-- Mostrar el nombre de cada empleado y el nombre de su esposa
SELECT s.name AS empleado, w.nameWife AS esposa
FROM staff s
         JOIN wife w ON s.id = w.staffID;

-- Buscar los empleados que tienen al menos un hijo
SELECT DISTINCT s.name AS empleado
FROM staff s
         JOIN child c ON s.id = c.staffID
ORDER BY s.name;

-- Contar cuántos empleados trabajan en cada empresa
SELECT c.companyName, COUNT(s.id) AS total_empleados
FROM company c
         LEFT JOIN staff s ON c.companyID = s.companyID
GROUP BY c.companyName
ORDER BY total_empleados DESC;

-- Mostrar las tareas que realiza cada empleado
SELECT s.name AS empleado, t.description AS tarea
FROM staff s
         JOIN stafftask st ON s.id = st.staffID
         JOIN task t ON st.taskID = t.taskID
ORDER BY s.name, t.taskID;

-- Encontrar empleados contratados después de 2018
SELECT id, name, sinceDate
FROM staff
WHERE sinceDate > '2018-01-01'
ORDER BY sinceDate;