USE employees;

SELECT *
FROM employees;


-- 2. MySQL provides a way to return only unique results from our queries with the keyword DISTINCT. For example, to find all the unique titles within the company, we could run the following query:

-- SELECT DISTINCT title FROM titles;
-- List the first 10 distinct last name sorted in descending order.

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

/*Zykh
Zyda
Zwicker
Zweizig
Zumaque
Zultner
Zucker
Zuberek
Zschoche
Zongker*/ 

-- 3. Find all previous or current employees hired in the 90s and born on Christmas. Find the first 5 employees hired in the 90's by sorting by hire date and limiting your results to the first 5 records. Write a comment in your code that lists the five names of the employees returned.

SELECT *
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
ORDER BY hire_date
LIMIT 5;

/* Alselm	Cappello	243297
Utz	Mandell	34335
Bouchung	Schreiter	400710
Baocai	Kushner	465730
Petter	Stroustrup	490744 */

-- 4. Try to think of your results as batches, sets, or pages. The first five results are your first page. The five after that would be your second page, etc. Update the query to find the tenth page of results.

-- LIMIT and OFFSET can be used to create multiple pages of data. What is the relationship between -- OFFSET (number of results to skip), LIMIT (number of results per page), and the page number?

SELECT *
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
ORDER BY hire_date
LIMIT 5 OFFSET 46;

/* Pranay	Narwekar	463558
Marjo	Farrow	444269
Ennio	Karcich	291662
Dines	Lubachevsky	413687
Ipke	Fontan	416525 */

-- To get a certain page number using OFFSET, the LIMIT needs to be determined

-- LIMIT = 5
/* Page 1, 1-5, offset 0
Page 2, 6-10, offset 5
Page 3, 11-15, offset 10
..
..
Page n, Offset = (page -1) * LIMIT */

