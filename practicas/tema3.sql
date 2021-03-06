/* Ejercicio 1 */
SELECT ART_PV - ART_PC AS MARGEN_BENEFICIO
FROM articulos
WHERE ART_PC > 20;

/* Ejercicio 2 */
SELECT AVG(ART_PESO) AS MEDIA
FROM articulos;

SELECT AVG(art_peso)
FROM articulos;

/* Ejercicio 3 */
SELECT AVG(ART_PESO)             AS MEDIA,
       MAX(ART_PV - ART_PC)      AS MARGEN_MAXIMO,
       MAX(ART_PV) - MIN(ART_PC) AS DIFERENCIA_MAX_MIN
FROM articulos
WHERE ART_COL IS NOT NULL;

/* Ejercicio 4 */
SELECT COUNT(DISTINCT ART_COL) AS NUM_COLORES
FROM articulos;

/* Ejercicio 5 */
SELECT COUNT(VNT_CANT) AS VENTAS
FROM ventas
GROUP BY VNT_TDA;

/* Ejercicio 6 */
SELECT COUNT(PRV_NUM) AS NUM_PROVEEDORES
FROM proveedores;

/* Ejercicio 7 */
SELECT ART_COL, AVG(ART_PV) AS MEDIA
FROM articulos
GROUP BY ART_COL
ORDER BY ART_COL ASC;

/* Ejercicio 8 */
SELECT AVG(ART_PV) AS MEDIA
FROM articulos
WHERE ART_PC > 0.6
GROUP BY ART_COL
ORDER BY ART_COL ASC;

/* Ejercicio 9 */
SELECT ART_NOM, ART_COL, COUNT(ART_NUM) AS ARTICULOS
FROM articulos;

/* Ejercicio 10 */
SELECT ART_NOM, COUNT(ART_COL) AS COLORES
FROM articulos
WHERE ART_NOM != 'impresora'
GROUP BY ART_NOM
ORDER BY ART_NOM ASC;

/* Ejercicio 11 */
SELECT ART_NOM, ART_COL
FROM articulos
WHERE ART_NOM != 'impresora'
GROUP BY ART_NOM, ART_COL;

/* Ejercicio 12 */
SELECT ART_NOM, ART_COL
FROM articulos
GROUP BY ART_COL
HAVING AVG(ART_PV) > 12
ORDER BY ART_NOM;

/* Ejercicio 13 */
SELECT VNT_TDA, COUNT(VNT_TDA) AS VENTAS, SUM(VNT_ART) AS ARTICULOS
FROM ventas
WHERE VNT_FCH BETWEEN '910109' AND '910113'
GROUP BY VNT_TDA
HAVING COUNT(*) > 2;

/* Ejercicio 14 */
SELECT ART_NOM, ART_PESO, ART_PV, (IFNULL(ART_PESO, 0) + IFNULL(ART_PV, 0)) AS SUMA_PESO_PV
FROM articulos;

/* Ejercicio 15 */
SELECT CLT_POB
FROM clientes
GROUP BY CLT_POB
ORDER BY COUNT(*) DESC;

/* Ejercicio 16 */
SELECT UPPER(CLT_POB) as POBLACION
FROM clientes
GROUP BY CLT_POB
ORDER BY COUNT(*) DESC;
