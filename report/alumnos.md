## Combinaciones posibles: Alumnos

Cada consulta se enfocará en un conjunto de dimensiones específicas relacionadas con el número de alumnos. Aquí está la lista:

1. **Año**
2. **CCAA**
3. **Sexo**
4. **Tipo de Centro**
5. **Tipo de Enseñanza**
6. **Año, CCAA**
7. **Año, Sexo**
8. **Año, Tipo de Centro**
9. **Año, Tipo de Enseñanza**
10. **CCAA, Sexo**
11. **CCAA, Tipo de Centro**
12. **CCAA, Tipo de Enseñanza**
13. **Sexo, Tipo de Centro**
14. **Sexo, Tipo de Enseñanza**
15. **Tipo de Centro, Tipo de Enseñanza**
16. **Año, CCAA, Sexo**
17. **Año, CCAA, Tipo de Centro**
18. **Año, CCAA, Tipo de Enseñanza**
19. **Año, Sexo, Tipo de Centro**
20. **Año, Sexo, Tipo de Enseñanza**
21. **Año, Tipo de Centro, Tipo de Enseñanza**
22. **CCAA, Sexo, Tipo de Centro**
23. **CCAA, Sexo, Tipo de Enseñanza**
24. **CCAA, Tipo de Centro, Tipo de Enseñanza**
25. **Sexo, Tipo de Centro, Tipo de Enseñanza**
26. **Año, CCAA, Sexo, Tipo de Centro**
27. **Año, CCAA, Sexo, Tipo de Enseñanza**
28. **Año, CCAA, Tipo de Centro, Tipo de Enseñanza**
29. **Año, Sexo, Tipo de Centro, Tipo de Enseñanza**
30. **CCAA, Sexo, Tipo de Centro, Tipo de Enseñanza**
31. **Año, CCAA, Sexo, Tipo de Centro, Tipo de Enseñanza** (Todas las dimensiones)

### Combinaciones Simples

1. **Año**
   ```sql
   SELECT YEAR_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY YEAR_ID;
   ```
2. **CCAA**
   ```sql
   SELECT CCAA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY CCAA_ID;
   ```
3. **Sexo**
   ```sql
   SELECT SEXO_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY SEXO_ID;
   ```
4. **Tipo de Centro**
   ```sql
   SELECT CENTRO_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY CENTRO_ID;
   ```
5. **Tipo de Enseñanza**
   ```sql
   SELECT ENSENANZA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY ENSENANZA_ID;
   ```

### Combinaciones de 2 dimensiones

6. **Año, CCAA**
   ```sql
   SELECT YEAR_ID, CCAA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY YEAR_ID, CCAA_ID;
   ```
7. **Año, Sexo**
   ```sql
   SELECT YEAR_ID, SEXO_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY YEAR_ID, SEXO_ID;
   ```
8. **Año, Tipo de Centro**
   ```sql
   SELECT YEAR_ID, CENTRO_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY YEAR_ID, CENTRO_ID;
   ```
9. **Año, Tipo de Enseñanza**
   ```sql
   SELECT YEAR_ID, ENSENANZA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY YEAR_ID, ENSENANZA_ID;
   ```
10. **CCAA, Sexo**

    ```sql
    SELECT CCAA_ID, SEXO_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY CCAA_ID, SEXO_ID;
    ```

11. **CCAA, Tipo de Centro**
    ```sql
    SELECT CCAA_ID, CENTRO_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY CCAA_ID, CENTRO_ID;
    ```
12. **CCAA, Tipo de Enseñanza**
    ```sql
    SELECT CCAA_ID, ENSENANZA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY CCAA_ID, ENSENANZA_ID;
    ```
13. **Sexo, Tipo de Centro**
    ```sql
    SELECT SEXO_ID, CENTRO_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY SEXO_ID, CENTRO_ID;
    ```
14. **Sexo, Tipo de Enseñanza**
    ```sql
    SELECT SEXO_ID, ENSENANZA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY SEXO_ID, ENSENANZA_ID;
    ```
15. **Tipo de Centro, Tipo de Enseñanza**
    ```sql
    SELECT CENTRO_ID, ENSENANZA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY CENTRO_ID, ENSENANZA_ID;
    ```

### Combinaciones de 3 dimensiones

16. **Año, CCAA, Sexo**
    ```sql
    SELECT YEAR_ID, CCAA_ID, SEXO_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY YEAR_ID, CCAA_ID, SEXO_ID;
    ```
17. **Año, CCAA, Tipo de Centro**
    ```sql
    SELECT YEAR_ID, CCAA_ID, CENTRO_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY YEAR_ID, CCAA_ID, CENTRO_ID;
    ```
18. **Año, CCAA, Tipo de Enseñanza**
    ```sql
    SELECT YEAR_ID, CCAA_ID, ENSENANZA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY YEAR_ID, CCAA_ID, ENSENANZA_ID;
    ```
19. **Año, Sexo, Tipo de Centro**
    ```sql
    SELECT YEAR_ID, SEXO_ID, CENTRO_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY YEAR_ID, SEXO_ID, CENTRO_ID;
    ```
20. **Año, Sexo, Tipo de Enseñanza**

    ```sql
    SELECT YEAR_ID, SEXO_ID, ENSENANZA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY YEAR_ID, SEXO_ID, ENSENANZA_ID;
    ```

21. **Año, Tipo de Centro, Tipo de Enseñanza**
    ```sql
    SELECT YEAR_ID, CENTRO_ID, ENSENANZA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY YEAR_ID, CENTRO_ID, ENSENANZA_ID;
    ```
22. **CCAA, Sexo, Tipo de Centro**
    ```sql
    SELECT CCAA_ID, SEXO_ID, CENTRO_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY CCAA_ID, SEXO_ID, CENTRO_ID;
    ```
23. **CCAA, Sexo, Tipo de Enseñanza**
    ```sql
    SELECT CCAA_ID, SEXO_ID, ENSENANZA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY CCAA_ID, SEXO_ID, ENSENANZA_ID;
    ```
24. **CCAA, Tipo de Centro, Tipo de Enseñanza**
    ```sql
    SELECT CCAA_ID, CENTRO_ID, ENSENANZA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY CCAA_ID, CENTRO_ID, ENSENANZA_ID;
    ```
25. **Sexo, Tipo de Centro, Tipo de Enseñanza**
    ```sql
    SELECT SEXO_ID, CENTRO_ID, ENSENANZA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY SEXO_ID, CENTRO_ID, ENSENANZA_ID;
    ```

### Combinaciones de 4 dimensiones

26. **Año, CCAA, Sexo, Tipo de Centro**
    ```sql
    SELECT YEAR_ID, CCAA_ID, SEXO_ID, CENTRO_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY YEAR_ID, CCAA_ID, SEXO_ID, CENTRO_ID;
    ```
27. **Año, CCAA, Sexo, Tipo de Enseñanza**
    ```sql
    SELECT YEAR_ID, CCAA_ID, SEXO_ID, ENSENANZA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY YEAR_ID, CCAA_ID, SEXO_ID, ENSENANZA_ID;
    ```
28. **Año, CCAA, Tipo de Centro, Tipo de Enseñanza**
    ```sql
    SELECT YEAR_ID, CCAA_ID, CENTRO_ID, ENSENANZA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY YEAR_ID, CCAA_ID, CENTRO_ID, ENSENANZA_ID;
    ```
29. **Año, Sexo, Tipo de Centro, Tipo de Enseñanza**
    ```sql
    SELECT YEAR_ID, SEXO_ID, CENTRO_ID, ENSENANZA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY YEAR_ID, SEXO_ID, CENTRO_ID, ENSENANZA_ID;
    ```
30. **CCAA, Sexo, Tipo de Centro, Tipo de Enseñanza**
    ```sql
    SELECT CCAA_ID, SEXO_ID, CENTRO_ID, ENSENANZA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY CCAA_ID, SEXO_ID, CENTRO_ID, ENSENANZA_ID;
    ```

### Combinación de 5 dimensiones

31. **Año, CCAA, Sexo, Tipo de Centro, Tipo de Enseñanza** (Todas las dimensiones)
    ```sql
    SELECT YEAR_ID, CCAA_ID, SEXO_ID, CENTRO_ID, ENSENANZA_ID, SUM(nALUMNOS) FROM H_NUMALUMNOS GROUP BY YEAR_ID, CCAA_ID, SEXO_ID, CENTRO_ID, ENSENANZA_ID;
    ```
