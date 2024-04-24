USE my_sql_bootcamp;

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);


SELECT DISTINCT(author_fname) FROM  books;

SELECT DISTINCT(CONCAT(author_fname,' ',author_lname) )AS AUTHORS FROM books;

# ORDER BY 
SELECT author_lname FROM books
ORDER BY author_lname;

SELECT * FROM books;

SELECT title , author_fname FROM books
ORDER BY released_year DESC;


SELECT * FROM books
WHERE author_fname LIKE'%da%';

# HOW MANY BOOKS ARE IN DATABASE
SELECT COUNT(*) AS TOTAL_BOOKS FROM books;

# HOW MANY UNIQUE AUTHORS IN BOOKS
SELECT COUNT(DISTINCT(author_fname)) FROM books;

#HOW MANY TITLES CONTAINS 'THE'
SELECT COUNT(*) FROM books
WHERE title LIKE '%the%';

#HOW MANY BOOKS WRITTEN BY AUTHORS
SELECT CONCAT(author_fname,' ',author_lname)AS AUTHOR_NAME ,COUNT(*)AS BOOKS_PUBLISHED FROM books
GROUP BY 1
HAVING BOOKS_PUBLISHED >1
ORDER BY 2 DESC;


# BOOK COUNT BY RELEASE YEAR
SELECT released_year,COUNT(*)AS books_published FROM books
GROUP BY released_year;

# LARGE PAGES BOOK
SELECT * FROM books
WHERE pages=(SELECT MAX(pages) FROM books);

SELECT * FROM books
ORDER BY pages DESC LIMIT 1;

# AUTHORS FIRST RELEASED BOOK
SELECT 
    author_fname, author_lname, MIN(released_year)
FROM
    books
GROUP BY 1 , 2;

# LONGEST PAGE COUNT FOR EACH AUTHOR
SELECT author_fname,author_lname,MAX(pages) FROM books
GROUP BY 1,2;

# SUM OF ALL PAGES IN ENTIRE BOOKS
SELECT SUM(pages) AS SUM FROM books;

#SUM OF ALL PAGES OF EACH AUTHOR
SELECT author_fname,author_lname,SUM(pages) FROM books
GROUP BY 1,2;

# AVERAGE RELEASED STOCK QUANTITY FOR BOOKS
SELECT released_year,ROUND(AVG(stock_quantity)) AS avg_stock_quantity FROM books
GROUP BY 1;