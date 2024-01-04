## Combinaciones: H_EDUCACION

Estas combinaciones abarcan desde las más simples (que involucran solo una dimensión) hasta las más complejas (que combinan todas las dimensiones disponibles). Vamos a listarlas:

1. **Año**
2. **CCAA**
3. **Sexo**
4. **Tipo de Centro**
5. **Rango de Edad**
6. **Año, CCAA**
7. **Año, Sexo**
8. **Año, Tipo de Centro**
9. **Año, Rango de Edad**
10. **CCAA, Sexo**
11. **CCAA, Tipo de Centro**
12. **CCAA, Rango de Edad**
13. **Sexo, Tipo de Centro**
14. **Sexo, Rango de Edad**
15. **Tipo de Centro, Rango de Edad**
16. **Año, CCAA, Sexo**
17. **Año, CCAA, Tipo de Centro**
18. **Año, CCAA, Rango de Edad**
19. **Año, Sexo, Tipo de Centro**
20. **Año, Sexo, Rango de Edad**
21. **Año, Tipo de Centro, Rango de Edad**
22. **CCAA, Sexo, Tipo de Centro**
23. **CCAA, Sexo, Rango de Edad**
24. **CCAA, Tipo de Centro, Rango de Edad**
25. **Sexo, Tipo de Centro, Rango de Edad**
26. **Año, CCAA, Sexo, Tipo de Centro**
27. **Año, CCAA, Sexo, Rango de Edad**
28. **Año, CCAA, Tipo de Centro, Rango de Edad**
29. **Año, Sexo, Tipo de Centro, Rango de Edad**
30. **CCAA, Sexo, Tipo de Centro, Rango de Edad**
31. **Año, CCAA, Sexo, Tipo de Centro, Rango de Edad** (Todas las dimensiones)

Cada una de estas combinaciones representa una consulta distinta en la que se agruparán los datos según las dimensiones especificadas y se calculará la suma de profesores. La complejidad aumenta con el número de dimensiones incluidas en cada consulta.

### Combinaciones Simples

1. **Año**

   ```sql
   SELECT YEAR_ID, SUM(nPROFESORES) AS Total_Profesores
   FROM H_NUMPROFESORES
   GROUP BY YEAR_ID;
   ```

2. **CCAA**

   ```sql
   SELECT CCAA_ID, SUM(nPROFESORES) AS Total_Profesores
   FROM H_NUMPROFESORES
   GROUP BY CCAA_ID;
   ```

3. **Sexo**

   ```sql
   SELECT SEXO_ID, SUM(nPROFESORES) AS Total_Profesores
   FROM H_NUMPROFESORES
   GROUP BY SEXO_ID;
   ```

4. **Tipo de Centro**

   ```sql
   SELECT CENTRO_ID, SUM(nPROFESORES) AS Total_Profesores
   FROM H_NUMPROFESORES
   GROUP BY CENTRO_ID;
   ```

5. **Rango de Edad**
   ```sql
   SELECT EDAD_ID, SUM(nPROFESORES) AS Total_Profesores
   FROM H_NUMPROFESORES
   GROUP BY EDAD_ID;
   ```

### Combinaciones de Dos Dimensiones

6. **Año, CCAA**

   ```sql
   SELECT YEAR_ID, CCAA_ID, SUM(nPROFESORES) AS Total_Profesores
   FROM H_NUMPROFESORES
   GROUP BY YEAR_ID, CCAA_ID;
   ```

7. **Año, Sexo**

   ```sql
   SELECT YEAR_ID, SEXO_ID, SUM(nPROFESORES) AS Total_Profesores
   FROM H_NUMPROFESORES
   GROUP BY YEAR_ID, SEXO_ID;
   ```

8. **Año, Tipo de Centro**

   ```sql
   SELECT YEAR_ID, CENTRO_ID, SUM(nPROFESORES) AS Total_Profesores
   FROM H_NUMPROFESORES
   GROUP BY YEAR_ID, CENTRO_ID;
   ```

9. **Año, Rango de Edad**

   ```sql
   SELECT YEAR_ID, EDAD_ID, SUM(nPROFESORES) AS Total_Profesores
   FROM H_NUMPROFESORES
   GROUP BY YEAR_ID, EDAD_ID;
   ```

10. **CCAA, Sexo**

    ```sql
    SELECT CCAA_ID, SEXO_ID, SUM(nPROFESORES) AS Total_Profesores
    FROM H_NUMPROFESORES
    GROUP BY CCAA_ID, SEXO_ID;
    ```

11. **CCAA, Tipo de Centro**

    ```sql
    SELECT CCAA_ID, CENTRO_ID, SUM(nPROFESORES) AS Total_Profesores
    FROM H_NUMPROFESORES
    GROUP BY CCAA_ID, CENTRO_ID;
    ```

12. **CCAA, Rango de Edad**

    ```sql
    SELECT CCAA_ID, EDAD_ID, SUM(nPROFESORES) AS Total_Profesores
    FROM H_NUMPROFESORES
    GROUP BY CCAA_ID, EDAD_ID;
    ```

13. **Sexo, Tipo de Centro**

    ```sql
    SELECT SEXO_ID, CENTRO_ID, SUM(nPROFESORES) AS Total_Profesores
    FROM H_NUMPROFESORES
    GROUP BY SEXO_ID, CENTRO_ID;
    ```

14. **Sexo, Rango de Edad**

    ```sql
    SELECT SEXO_ID, EDAD_ID, SUM(nPROFESORES) AS Total_Profesores
    FROM H_NUMPROFESORES
    GROUP BY SEXO_ID, EDAD_ID;
    ```

15. **Tipo de Centro, Rango de Edad**
    ```sql
    SELECT CENTRO_ID, EDAD_ID, SUM(nPROFESORES) AS Total_Profesores
    FROM H_NUMPROFESORES
    GROUP BY CENTRO_ID, EDAD_ID;
    ```

### Combinaciones de Tres Dimensiones

16. **Año, CCAA, Sexo**

    ```sql
    SELECT YEAR_ID, CCAA_ID, SEXO_ID, SUM(nPROFESORES) AS Total_Profesores
    FROM H_NUMPROFESORES
    GROUP BY YEAR_ID, CCAA_ID, SEXO_ID;
    ```

17. **Año, CCAA, Tipo de Centro**

    ```sql
    SELECT YEAR_ID, CCAA_ID, CENTRO_ID, SUM(nPROFESORES) AS Total_Profesores
    FROM H_NUMPROFESORES
    GROUP BY YEAR_ID, CCAA_ID, CENTRO_ID;
    ```

18. **Año, CCAA, Rango de Edad**

    ```sql
    SELECT YEAR_ID, CCAA_ID, EDAD_ID, SUM(nPROFESORES) AS Total_Profesores
    FROM H_NUMPROFESORES
    GROUP BY YEAR_ID, CCAA_ID, EDAD_ID;
    ```

19. **Año, Sexo, Tipo de Centro**

    ```sql
    SELECT YEAR_ID, SEXO_ID, CENTRO_ID, SUM(nPROFESORES) AS Total_Profesores
    FROM H_NUMPROFESORES
    GROUP BY YEAR_ID, SEXO_ID, CENTRO_ID;
    ```

20. **Año, Sexo, Rango de Edad**

    ```sql
    SELECT YEAR_ID, SEXO_ID, EDAD_ID, SUM(nPROFESORES) AS Total_Profesores
    FROM H_NUMPROFESORES
    GROUP BY YEAR_ID, SEXO_ID, EDAD_ID;
    ```

21. **Año, Tipo de Centro, Rango de Edad**

    ```sql
    SELECT YEAR_ID, CENTRO_ID, EDAD_ID, SUM(nPROFESORES) AS Total_Profesores
    FROM H_NUMPROFESORES
    GROUP BY YEAR_ID, CENTRO_ID, EDAD_ID;
    ```

22. **CCAA, Sexo, Tipo de Centro**

    ```sql
    SELECT CCAA_ID, SEXO_ID, CENTRO_ID, SUM(nPROFESORES) AS Total_Profesores
    FROM H_NUMPROFESORES
    GROUP BY CCAA_ID, SEXO_ID, CENTRO_ID;
    ```

23. **CCAA, Sexo, Rango de Edad**

    ```sql
    SELECT CCAA_ID, SEXO_ID, EDAD_ID, SUM(nPROFESORES) AS Total_Profesores
    FROM H_NUMPROFESORES
    GROUP BY CCAA_ID, SEXO_ID, EDAD_ID;
    ```

24. **CCAA, Tipo de Centro, Rango de Edad**

    ```sql
    SELECT CCAA_ID, CENTRO_ID, EDAD_ID, SUM(nPROFESORES) AS Total_Profesores
    FROM H_NUMPROFESORES
    GROUP BY CCAA_ID, CENTRO_ID, EDAD_ID;
    ```

25. **Sexo, Tipo de Centro, Rango de Edad**
    ```sql
    SELECT SEXO_ID, CENTRO_ID, EDAD_ID, SUM(nPROFESORES) AS Total_Profesores
    FROM H_NUMPROFESORES
    GROUP BY SEXO_ID, CENTRO_ID, EDAD_ID;
    ```

### Combinaciones de Cuatro Dimensiones

26. **Año, CCAA, Sexo, Tipo de Centro**

```sql
SELECT YEAR_ID, CCAA_ID, SEXO_ID, CENTRO_ID, SUM(nPROFESORES) AS Total_Profesores
FROM H_NUMPROFESORES
GROUP BY YEAR_ID, CCAA_ID, SEXO_ID, CENTRO_ID;
```

27. Año, CCAA, Sexo, Rango de Edad

```sql
SELECT YEAR_ID, CCAA_ID, SEXO_ID, EDAD_ID, SUM(nPROFESORES) AS Total_Profesores
FROM H_NUMPROFESORES
GROUP BY YEAR_ID, CCAA_ID, SEXO_ID, EDAD_ID;
```

28. Año, CCAA, Tipo de Centro, Rango de Edad

```sql
SELECT YEAR_ID, CCAA_ID, CENTRO_ID, EDAD_ID, SUM(nPROFESORES) AS Total_Profesores
FROM H_NUMPROFESORES
GROUP BY YEAR_ID, CCAA_ID, CENTRO_ID, EDAD_ID;
```

29. Año, Sexo, Tipo de Centro, Rango de Edad

```sql
SELECT YEAR_ID, SEXO_ID, CENTRO_ID, EDAD_ID, SUM(nPROFESORES) AS Total_Profesores
FROM H_NUMPROFESORES
GROUP BY YEAR_ID, SEXO_ID, CENTRO_ID, EDAD_ID;
```

30. CCAA, Sexo, Tipo de Centro, Rango de Edad

```sql
SELECT CCAA_ID, SEXO_ID, CENTRO_ID, EDAD_ID, SUM(nPROFESORES) AS Total_Profesores
FROM H_NUMPROFESORES
GROUP BY CCAA_ID, SEXO_ID, CENTRO_ID, EDAD_ID;
```

### Combinación de Cinco Dimensiones

31. **Año, CCAA, Sexo, Tipo de Centro, Rango de Edad**

```sql
SELECT YEAR_ID, CCAA_ID, SEXO_ID, CENTRO_ID, EDAD_ID, SUM(nPROFESORES) AS Total_Profesores
FROM H_NUMPROFESORES
GROUP BY YEAR_ID, CCAA_ID, SEXO_ID, CENTRO_ID, EDAD_ID;
```

### Consulta aritmética: Diferencia de Número de Profesores Respecto al Año Anterior

```sql
SELECT a.YEAR_ID,
       COALESCE(a.Total_Profesores - b.Total_Profesores, 0) AS Diferencia
FROM (SELECT YEAR_ID, SUM(nPROFESORES) AS Total_Profesores
      FROM H_NUMPROFESORES
      GROUP BY YEAR_ID) a
LEFT JOIN (SELECT YEAR_ID, SUM(nPROFESORES) AS Total_Profesores
           FROM H_NUMPROFESORES
           GROUP BY YEAR_ID) b
ON a.YEAR_ID = b.YEAR_ID + 1;
```

### Consulta aritmética: Diferencia de Número de Profesores Respecto al Año Anterior por CCAA

```sql
SELECT a.YEAR_ID, a.CCAA_ID,
       COALESCE(a.Total_Profesores - b.Total_Profesores, 0) AS Diferencia
FROM (SELECT YEAR_ID, CCAA_ID, SUM(nPROFESORES) AS Total_Profesores
      FROM H_NUMPROFESORES
      GROUP BY YEAR_ID, CCAA_ID) a
LEFT JOIN (SELECT YEAR_ID, CCAA_ID, SUM(nPROFESORES) AS Total_Profesores
           FROM H_NUMPROFESORES
           GROUP BY YEAR_ID, CCAA_ID) b
ON a.YEAR_ID = b.YEAR_ID + 1 AND a.CCAA_ID = b.CCAA_ID;
```
