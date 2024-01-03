## Combinaciones posibles: Mixto

### Combinaciones de Dos Tablas

1. **H_NumAlumnos, H_NumProfesores**: Comparación del número de alumnos y profesores por año.
2. **H_Abandono, H_NumAlumnos**: Análisis de la tasa de abandono escolar en relación con el número de alumnos.
3. **H_Abandono, H_NumProfesores**: Evaluación de la tasa de abandono en relación con el número de profesores.
4. **H_NumAlumnos, D_Centros**: Distribución de alumnos por tipo de centro educativo.
5. **H_NumProfesores, D_Centros**: Distribución de profesores por tipo de centro educativo.
6. **H_NumAlumnos, D_Ensenanza**: Análisis del número de alumnos por tipo de enseñanza.
7. **H_NumProfesores, D_Ensenanza**: Análisis del número de profesores por tipo de enseñanza.
8. **H_Abandono, D_Ensenanza**: Tasa de abandono escolar según el tipo de enseñanza.

### Combinaciones de Tres Tablas

1. **H_NumAlumnos, H_NumProfesores, D_Centros**: Comparación del número de alumnos y profesores en diferentes tipos de centros educativos.
2. **H_Abandono, H_NumAlumnos, D_Centros**: Análisis de la tasa de abandono escolar en relación con el número de alumnos y el tipo de centro.
3. **H_Abandono, H_NumProfesores, D_Centros**: Tasa de abandono en relación con el número de profesores y el tipo de centro.
4. **H_NumAlumnos, H_NumProfesores, D_Ensenanza**: Comparación del número de alumnos y profesores en diferentes tipos de enseñanza.
5. **H_Abandono, H_NumAlumnos, D_Ensenanza**: Análisis de la tasa de abandono escolar en relación con el número de alumnos y el tipo de enseñanza.
6. **H_Abandono, H_NumProfesores, D_Ensenanza**: Tasa de abandono en relación con el número de profesores y el tipo de enseñanza.

Estas consultas pueden proporcionar insights valiosos sobre la dinámica educativa en diferentes contextos, ayudando a entender mejor la relación entre profesores, alumnos, tipos de enseñanza, y centros educativos, además de la tasa de abandono escolar en diferentes circunstancias.

### Combinaciones de Dos Tablas

1. **H_NumAlumnos, H_NumProfesores (Comparación anual):**

   ```sql
   SELECT a.ID_year, SUM(a.nALUMNOS) AS Total_Alumnos, SUM(p.nPROFESORES) AS Total_Profesores
   FROM H_NUMALUMNOS a
   JOIN H_NUMPROFESORES p ON a.YEAR_ID = p.YEAR_ID
   GROUP BY a.ID_year;
   ```

2. **H_Abandono, H_NumAlumnos (Tasa de abandono vs. número de alumnos):**

   ```sql
   SELECT a.ID_year, a.ID_CCAA, SUM(a.Tasa_Abandono) AS Tasa_Abandono, SUM(n.nALUMNOS) AS Total_Alumnos
   FROM H_ABANDONO a
   JOIN H_NUMALUMNOS n ON a.ID_year = n.YEAR_ID AND a.ID_CCAA = n.CCAA_ID
   GROUP BY a.ID_year, a.ID_CCAA;
   ```

3. **H_Abandono, H_NumProfesores (Tasa de abandono vs. número de profesores):**

   ```sql
   SELECT a.ID_year, a.ID_CCAA, SUM(a.Tasa_Abandono) AS Tasa_Abandono, SUM(p.nPROFESORES) AS Total_Profesores
   FROM H_ABANDONO a
   JOIN H_NUMPROFESORES p ON a.ID_year = p.YEAR_ID AND a.ID_CCAA = p.CCAA_ID
   GROUP BY a.ID_year, a.ID_CCAA;
   ```

4. **H_NumAlumnos, D_Centros (Distribución de alumnos por tipo de centro):**

   ```sql
   SELECT c.TIPO, SUM(n.nALUMNOS) AS Total_Alumnos
   FROM H_NUMALUMNOS n
   JOIN D_CENTROS c ON n.CENTRO_ID = c.ID_CENTRO
   GROUP BY c.TIPO;
   ```

5. **H_NumProfesores, D_Centros (Distribución de profesores por tipo de centro):**

   ```sql
   SELECT c.TIPO, SUM(p.nPROFESORES) AS Total_Profesores
   FROM H_NUMPROFESORES p
   JOIN D_CENTROS c ON p.CENTRO_ID = c.ID_CENTRO
   GROUP BY c.TIPO;
   ```

6. **H_NumAlumnos, D_Ensenanza (Número de alumnos por tipo de enseñanza):**

   ```sql
   SELECT e.TIPO, SUM(n.nALUMNOS) AS Total_Alumnos
   FROM H_NUMALUMNOS n
   JOIN D_ENSENANZA e ON n.ENSENANZA_ID = e.ID_ENSENANZA
   GROUP BY e.TIPO;
   ```

7. **H_NumProfesores, D_Ensenanza (Número de profesores por tipo de enseñanza):**

   ```sql
   SELECT e.TIPO, SUM(p.nPROFESORES) AS Total_Profesores
   FROM H_NUMPROFESORES p
   JOIN D_ENSENANZA e ON p.ENSENANZA_ID = e.ID_ENSENANZA
   GROUP BY e.TIPO;
   ```

8. **H_Abandono, D_Ensenanza (Tasa de abandono escolar según tipo de enseñanza):**
   ```sql
   SELECT e.TIPO, SUM(a.Tasa_Abandono) AS Tasa_Abandono
   FROM H_ABANDONO a
   JOIN H_NUMALUMNOS n ON a.ID_year = n.YEAR_ID AND a.ID_CCAA = n.CCAA_ID
   JOIN D_ENSENANZA e ON n.ENSENANZA_ID = e.ID_ENSENANZA
   GROUP BY e.TIPO;
   ```

### Combinaciones de Tres Tablas

1. **H_NumAlumnos, H_NumProfesores, D_Centros (Comparación por tipo de centro):**
   ```sql
   SELECT c.TIPO, SUM(a.nALUMNOS) AS Total_Alumnos, SUM(p.nPROFESORES) AS Total_Profesores
   FROM H_NUMALUMNOS a
   JOIN H_NUMPROFESORES p ON a.YEAR_ID = p.YEAR_ID AND a.CENTRO
   ```

\_ID = p.CENTRO_ID
JOIN D_CENTROS c ON a.CENTRO_ID = c.ID_CENTRO
GROUP BY c.TIPO;

````

2. **H_Abandono, H_NumAlumnos, D_Centros (Tasa de abandono por tipo de centro):**
```sql
SELECT c.TIPO, SUM(a.Tasa_Abandono) AS Tasa_Abandono, SUM(n.nALUMNOS) AS Total_Alumnos
FROM H_ABANDONO a
JOIN H_NUMALUMNOS n ON a.ID_year = n.YEAR_ID AND a.ID_CCAA = n.CCAA_ID
JOIN D_CENTROS c ON n.CENTRO_ID = c.ID_CENTRO
GROUP BY c.TIPO;
````

3. **H_Abandono, H_NumProfesores, D_Centros (Tasa de abandono y número de profesores por tipo de centro):**

   ```sql
   SELECT c.TIPO, SUM(a.Tasa_Abandono) AS Tasa_Abandono, SUM(p.nPROFESORES) AS Total_Profesores
   FROM H_ABANDONO a
   JOIN H_NUMPROFESORES p ON a.ID_year = p.YEAR_ID AND a.ID_CCAA = p.CCAA_ID
   JOIN D_CENTROS c ON p.CENTRO_ID = c.ID_CENTRO
   GROUP BY c.TIPO;
   ```

4. **H_NumAlumnos, H_NumProfesores, D_Ensenanza (Comparación por tipo de enseñanza):**

   ```sql
   SELECT e.TIPO, SUM(a.nALUMNOS) AS Total_Alumnos, SUM(p.nPROFESORES) AS Total_Profesores
   FROM H_NUMALUMNOS a
   JOIN H_NUMPROFESORES p ON a.YEAR_ID = p.YEAR_ID AND a.ENSENANZA_ID = p.ENSENANZA_ID
   JOIN D_ENSENANZA e ON a.ENSENANZA_ID = e.ID_ENSENANZA
   GROUP BY e.TIPO;
   ```

5. **H_Abandono, H_NumAlumnos, D_Ensenanza (Tasa de abandono y número de alumnos por tipo de enseñanza):**

   ```sql
   SELECT e.TIPO, SUM(a.Tasa_Abandono) AS Tasa_Abandono, SUM(n.nALUMNOS) AS Total_Alumnos
   FROM H_ABANDONO a
   JOIN H_NUMALUMNOS n ON a.ID_year = n.YEAR_ID AND a.ID_CCAA = n.CCAA_ID
   JOIN D_ENSENANZA e ON n.ENSENANZA_ID = e.ID_ENSENANZA
   GROUP BY e.TIPO;
   ```

6. **H_Abandono, H_NumProfesores, D_Ensenanza (Tasa de abandono y número de profesores por tipo de enseñanza):**
   ```sql
   SELECT e.TIPO, SUM(a.Tasa_Abandono) AS Tasa_Abandono, SUM(p.nPROFESORES) AS Total_Profesores
   FROM H_ABANDONO a
   JOIN H_NUMPROFESORES p ON a.ID_year = p.YEAR_ID AND a.ID_CCAA = p.CCAA_ID
   JOIN D_ENSENANZA e ON p.ENSENANZA_ID = e.ID_ENSENANZA
   GROUP BY e.TIPO;
   ```

### Consultas Adicionales de Ratio Profesor/Alumno

9. **H_NumProfesores, H_NumAlumnos (Ratio Profesor/Alumno Anual a Nivel Nacional):**

   ```sql
   SELECT a.ID_year, (SUM(p.nPROFESORES) / SUM(a.nALUMNOS)) AS Ratio_Profesor_Alumno
   FROM H_NUMALUMNOS a
   JOIN H_NUMPROFESORES p ON a.YEAR_ID = p.YEAR_ID
   GROUP BY a.ID_year;
   ```

10. **H_NumProfesores, H_NumAlumnos (Ratio Profesor/Alumno Anual por CCAA):**
    ```sql
    SELECT a.ID_year, a.CCAA_ID, (SUM(p.nPROFESORES) / SUM(a.nALUMNOS)) AS Ratio_Profesor_Alumno
    FROM H_NUMALUMNOS a
    JOIN H_NUMPROFESORES p ON a.YEAR_ID = p.YEAR_ID AND a.CCAA_ID = p.CCAA_ID
    GROUP BY a.ID_year, a.CCAA_ID;
    ```
