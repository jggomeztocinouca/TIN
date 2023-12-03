DROP DATABASE IF EXISTS TIN;

CREATE DATABASE TIN;
USE TIN;

CREATE TABLE D_Estudiante (
    Estudiante_ID INT AUTO_INCREMENT PRIMARY KEY,
    Sexo VARCHAR(50),
    Edad INT
);

CREATE TABLE D_Educacion (
    Educacion_ID INT AUTO_INCREMENT PRIMARY KEY,
    Tipo_Ensenanza VARCHAR(255),
    Nivel VARCHAR(255)
);

CREATE TABLE D_CCAA (
    CCAA_ID INT AUTO_INCREMENT PRIMARY KEY,
    Comunidad_Autonoma VARCHAR(255),
    Provincia VARCHAR(255)
);

CREATE TABLE Educacion_Espana_Hechos (
    ID_Hecho INT AUTO_INCREMENT PRIMARY KEY,
    Ano INT,
    CCAA_ID INT,
    Educacion_ID INT,
    Estudiante_ID INT,
    Gasto_Publico FLOAT,
    Gasto_Hogares FLOAT,
    Ratio_Profesor_Alumno FLOAT,
    Tasa_Rendimiento FLOAT,
    Tasa_Exito FLOAT,
    Tasa_Abandono FLOAT,
    FOREIGN KEY (CCAA_ID) REFERENCES D_CCAA(CCAA_ID),
    FOREIGN KEY (Educacion_ID) REFERENCES D_Educacion(Educacion_ID),
    FOREIGN KEY (Estudiante_ID) REFERENCES D_Estudiante(Estudiante_ID)
);

