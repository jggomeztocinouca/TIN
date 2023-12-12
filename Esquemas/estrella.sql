DROP DATABASE IF EXISTS TIN;

CREATE DATABASE TIN;
USE TIN;

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

CREATE TABLE D_YEAR(
  ID_year INT PRIMARY KEY
);

CREATE TABLE D_SEXO(
    SEXO_ID INT PRIMARY KEY,
    SEXO VARCHAR(6)
);

CREATE TABLE D_EDAD(
    EDAD_ID INT PRIMARY KEY,
    RANGO_INI INT,
    RANGO_FIN INT
);

CREATE TABLE H_ABANDONO(
    ID_Hecho INT AUTO_INCREMENT PRIMARY KEY,
    ID_year INT,
    ID_CCAA INT,
    ID_SEXO INT,
    Tasa_Abandono FLOAT,
    FOREIGN KEY (ID_year) REFERENCES D_YEAR(ID_year),
    FOREIGN KEY (ID_CCAA) REFERENCES D_CCAA(CCAA_ID),
    FOREIGN KEY (ID_SEXO) REFERENCES D_SEXO(SEXO_ID)
);

CREATE TABLE H_ESTUDIANTES (
    ID_Hecho INT AUTO_INCREMENT PRIMARY KEY,
    YEAR_ID INT,
    CCAA_ID INT,
    EDAD_ID INT,
    Educacion_ID INT,
    Gasto_Publico FLOAT,
    Gasto_Hogares FLOAT,
    Ratio_Profesor_Alumno FLOAT,
    Tasa_Rendimiento FLOAT,
    Tasa_Exito FLOAT,
    FOREIGN KEY (CCAA_ID) REFERENCES D_CCAA(CCAA_ID),
    FOREIGN KEY (YEAR_ID) REFERENCES D_EDAD(EDAD_ID),
    FOREIGN KEY (Educacion_ID) REFERENCES D_Educacion(Educacion_ID),
    FOREIGN KEY (YEAR_ID) REFERENCES D_YEAR(ID_YEAR)
);

CREATE TABLE D_CENTROS(
  ID_CENTRO INT AUTO_INCREMENT PRIMARY KEY,
  TIPO VARCHAR(20)
);

CREATE TABLE H_PROFESORES_SEXO(
    ID_HECHO INT AUTO_INCREMENT PRIMARY KEY,
    YEAR_ID INT,
    SEXO_ID INT,
    CCAA_ID INT,
    nPROFESORES INT,
    FOREIGN KEY (SEXO_ID) REFERENCES D_SEXO(SEXO_ID),
    FOREIGN KEY (YEAR_ID) REFERENCES D_YEAR(ID_year),
    FOREIGN KEY (CCAA_ID) REFERENCES D_CCAA(CCAA_ID)
);

CREATE TABLE H_PROFESORES_EDUCACION(
   ID_HECHO INT AUTO_INCREMENT PRIMARY KEY,
   YEAR_ID INT,
   CENTRO_ID INT,
   CCAA_ID INT,
   nPROFESORES INT,
   FOREIGN KEY (CENTRO_ID) REFERENCES D_CENTROS(ID_CENTRO),
   FOREIGN KEY (YEAR_ID) REFERENCES D_YEAR(ID_year),
   FOREIGN KEY (CCAA_ID) REFERENCES D_CCAA(CCAA_ID)
);

