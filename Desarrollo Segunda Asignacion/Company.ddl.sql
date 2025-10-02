-- Tabla para Staff
CREATE TABLE staff(
    id INTEGER PRIMARY KEY,
    name VARCHAR(100),
    dOBirthday TIMESTAMP,  -- Se nombra sin los puntos, para evitar conflictos en compilación.
    address VARCHAR(100),
    companyID INTEGER,
    FOREIGN KEY (companyID) REFERENCES company(companyID),
    sinceDate TIMESTAMP  -- Atributo de la relación "work", pero ingresada aquí por la relación 1:N.
);

-- Tabla para atributo multivaluado de Staff: phone
CREATE TABLE phone(
    number VARCHAR(100) PRIMARY KEY,
    staffID INT,
    FOREIGN KEY (staffID) REFERENCES staff(id)
);

-- Tabla para Wife
CREATE TABLE wife(
    dni INTEGER PRIMARY KEY,
    nameWife VARCHAR(100),
    staffID INTEGER,
    FOREIGN KEY (staffID) REFERENCES staff(id)
);

-- Tabla para Company
CREATE TABLE company(
    companyID INT PRIMARY KEY,
    companyName VARCHAR(100)
);

-- Tabla para Task
CREATE TABLE task(
    taskID INTEGER PRIMARY KEY,
    description TEXT
);

-- Tabla para Child (no tiene llave primaria, pues es una entidad débil)
CREATE TABLE child(
    nameChild VARCHAR(100),
    staffID INT,
    FOREIGN KEY (staffID) REFERENCES staff(id)
);

-- Tabla para la relación N:M entre Staff y Task
CREATE TABLE stafftask(
    staffID INTEGER,
    taskID INTEGER,
    PRIMARY KEY (staffID, taskID),
    FOREIGN KEY (staffID) REFERENCES staff(id),
    FOREIGN KEY (taskID) REFERENCES task(taskID)
);