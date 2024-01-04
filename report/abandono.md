## Combinaciones posibles: Abandono

Aquí está la lista de consultas posibles según los requisitos:

1. **Año** - Tasa de abandono por año.
2. **CCAA** - Tasa de abandono por comunidad autónoma.
3. **Sexo** - Tasa de abandono por sexo.
4. **Año, CCAA** - Tasa de abandono por año y comunidad autónoma.
5. **Año, Sexo** - Tasa de abandono por año y sexo.
6. **CCAA, Sexo** - Tasa de abandono por comunidad autónoma y sexo.
7. **Año, CCAA, Sexo** - Tasa de abandono por año, comunidad autónoma y sexo.
8. Diferencia de tasa de abandono respecto al año anterior (general, por CCAA, por sexo, y por cualquier combinación de año, CCAA, y sexo).
9. Comunidad autónoma con mayor tasa de abandono por año.

### Consultas SQL

1. **Tasa de abandono por año:**

   ```sql
   SELECT ID_year, AVG(Tasa_Abandono) AS Tasa_Abandono_Promedio
   FROM H_ABANDONO
   GROUP BY ID_year;
   ```

2. **Tasa de abandono por comunidad autónoma:**

   ```sql
   SELECT ID_CCAA, AVG(Tasa_Abandono) AS Tasa_Abandono_Promedio
   FROM H_ABANDONO
   GROUP BY ID_CCAA;
   ```

3. **Tasa de abandono por sexo:**

   ```sql
   SELECT ID_SEXO, AVG(Tasa_Abandono) AS Tasa_Abandono_Promedio
   FROM H_ABANDONO
   GROUP BY ID_SEXO;
   ```

4. **Tasa de abandono por año y comunidad autónoma:**

   ```sql
   SELECT ID_year, ID_CCAA, AVG(Tasa_Abandono) AS Tasa_Abandono_Promedio
   FROM H_ABANDONO
   GROUP BY ID_year, ID_CCAA;
   ```

5. **Tasa de abandono por año y sexo:**

   ```sql
   SELECT ID_year, ID_SEXO, AVG(Tasa_Abandono) AS Tasa_Abandono_Promedio
   FROM H_ABANDONO
   GROUP BY ID_year, ID_SEXO;
   ```

6. **Tasa de abandono por comunidad autónoma y sexo:**

   ```sql
   SELECT ID_CCAA, ID_SEXO, AVG(Tasa_Abandono) AS Tasa_Abandono_Promedio
   FROM H_ABANDONO
   GROUP BY ID_CCAA, ID_SEXO;
   ```

7. **Tasa de abandono por año, comunidad autónoma y sexo:**

   ```sql
   SELECT ID_year, ID_CCAA, ID_SEXO, AVG(Tasa_Abandono) AS Tasa_Abandono_Promedio
   FROM H_ABANDONO
   GROUP BY ID_year, ID_CCAA, ID_SEXO;
   ```

8. **Diferencia de tasa de abandono respecto al año anterior:**
   Para esta consulta, se necesitaría una subconsulta o una función de ventana. Asumiendo que MySQL soporta funciones de ventana, la consulta sería algo así:

   ```sql
   SELECT
       a.ID_year,
       a.ID_CCAA,
       a.ID_SEXO,
       a.Tasa_Abandono - LAG(a.Tasa_Abandono) OVER (PARTITION BY a.ID_CCAA, a.ID_SEXO ORDER BY a.ID_year) AS Diferencia
   FROM H_ABANDONO a;
   ```

9. **Comunidad autónoma con mayor tasa de abandono por año:**
   ```sql
   SELECT
       a.ID_year,
       a.ID_CCAA,
       MAX(a.Tasa_Abandono) AS Tasa_Abandono_Maxima
   FROM H_ABANDONO a
   GROUP BY a.ID_year;
   ```
