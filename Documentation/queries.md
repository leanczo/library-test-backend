## Ejercicio 1
Ranking de los diez primeros libros más solicitados, incluyendo: Nombre del libro, autor, editorial y cantidad de veces que ha sido retirado. Ordenar los resultados de mayor a menor cantidad.

```sql
SELECT 
    b.title AS 'Nombre del libro',
    a.name AS 'Autor',
    b.publisher AS 'Editorial',
    COUNT(l.loan_id) AS 'Cantidad de veces retirado'
FROM books b
JOIN book_authors ba ON b.book_id = ba.book_id
JOIN authors a ON ba.author_id = a.author_id
JOIN loans l ON b.book_id = l.book_id
GROUP BY b.title, a.name, b.publisher
ORDER BY COUNT(l.loan_id) DESC
LIMIT 10;
```

## Ejercicio 2
Listado de títulos y su cantidad de autores. Se debe visualizar: Título y cantidad de autores. Solo visualizar aquellos registros donde hayan más de dos autores.

```sql
SELECT 
    b.title AS 'Título',
    COUNT(a.author_id) AS 'Cantidad de Autores'
FROM books b
JOIN book_authors ba ON b.book_id = ba.book_id
JOIN authors a ON ba.author_id = a.author_id
GROUP BY b.title
HAVING COUNT(a.author_id) > 2;
```

## Ejercicio 3
Listado de los lectores y cuantas veces han retirado un determinado libro: Lector, libro, cantidad de retiros.

```sql
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS 'Lector',
    b.title AS 'Libro',
    COUNT(l.loan_id) AS 'Cantidad de retiros'
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
JOIN books b ON l.book_id = b.book_id
GROUP BY c.customer_id, b.book_id;
```

## Ejercicio 4
Listado de libros y cuántas veces fueron retirados por mes en el último año. Contemplar aquellos meses donde no hubo retiros como 0. El resultado debe otorgar: Código de libro, Título, Mes y año, Cantidad de libros.

```sql
WITH months AS (
    SELECT 1 AS month UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL
    SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL
    SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL
    SELECT 10 UNION ALL SELECT 11 UNION ALL SELECT 12
),

loansByMonth AS (
    SELECT 
        b.code AS `Código de libro`,
        b.title AS `Título`,
        MONTH(l.return_date) AS `Mes`,
        YEAR(l.return_date) AS `Año`,
        COUNT(l.loan_id) AS `Cantidad de libros`
    FROM books b
    JOIN loans l ON b.book_id = l.book_id
    WHERE l.return_date BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND CURDATE()
    GROUP BY b.code, b.title, MONTH(l.return_date), YEAR(l.return_date)
)

SELECT 
    lbm.`Código de libro`,
    lbm.`Título`,
    m.month AS `Mes`,
    YEAR(CURDATE()) AS `Año`,
    IFNULL(lbm.`Cantidad de libros`, 0) AS `Cantidad de libros`
FROM months m
LEFT JOIN loansByMonth lbm ON m.month = lbm.`Mes`
ORDER BY m.month;

```


## Ejercicio 5
Para cada lector, se debe visualizar cuál es su autor de preferencia (aquel autor que más libros ha retirado): Código de lector, nombre del lector, código de autor y autor.

```sql
WITH LectorAutorCount AS (
    SELECT 
        l.customer_id,
        ba.author_id,
        COUNT(DISTINCT l.book_id) AS book_count
    FROM loans l
    JOIN books b ON l.book_id = b.book_id
    JOIN book_authors ba ON b.book_id = ba.book_id
    GROUP BY l.customer_id, ba.author_id
),

MaxAuthors AS (
    SELECT 
        customer_id,
        SUBSTRING_INDEX(GROUP_CONCAT(author_id ORDER BY book_count DESC, author_id ASC), ',', 1) as top_author_id
    FROM LectorAutorCount
    GROUP BY customer_id
)

SELECT 
    c.customer_id AS 'Código de lector',
    c.first_name AS 'Nombre del lector',
    a.author_id AS 'Código de autor',
    a.name AS 'Autor'
FROM MaxAuthors ma
JOIN authors a ON ma.top_author_id = a.author_id
JOIN customers c ON ma.customer_id = c.customer_id
ORDER BY c.customer_id;
```