USE employees;

SELECT *
FROM employees;

-- 2. Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya' using IN. Enter a comment with the number of records returned. 

SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

-- 709 observations

-- 3. Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', as in Q2, but use OR instead of IN. Enter a comment with the number of records returned. Does it match number of rows from Q2? 

SELECT first_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

-- 709 observations
-- Same as Q2

-- 4. Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', using OR, and who is male. Enter a comment with the number of records returned. 

SELECT *
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
AND gender = 'M';

-- 441 observations

-- 5. Find all current or previous employees whose last name starts with 'E'. Enter a comment with the number of employees whose last name starts with E. 

SELECT *
FROM employees
WHERE last_name LIKE 'e%';

-- 7730 observations

-- 6. Find all current or previous employees whose last name starts or ends with 'E'. Enter a comment with the number of employees whose last name starts or ends with E. How many employees have a last name that ends with E, but does not start with E?  

SELECT *
FROM employees
WHERE last_name LIKE 'e%'
OR last_name LIKE '%e'; 

-- 30723 observations

SELECT *
FROM employees
WHERE last_name LIKE '%e'
AND last_name NOT LIKE 'e%'; 

-- 23393 observations

-- 7. Find all current or previous employees employees whose last name starts and ends with 'E'. Enter a comment with the number of employees whose last name starts and ends with E. How many employees' last names end with E, regardless of whether they start with E? 

SELECT *
FROM employees
WHERE last_name LIKE 'e%'
AND last_name LIKE '%e'; 

-- 899 observations

SELECT *
FROM employees
WHERE last_name LIKE '%e'; 

-- 24292 observations

-- 8. Find all current or previous employees hired in the 90s. Enter a comment with the number of employees returned. 135214 rows

SELECT *
FROM employees
WHERE hire_date LIKE "199%";

-- 135214 observations

-- 9. Find all current or previous employees born on Christmas. Enter a comment with the number of employees returned. 

SELECT *
FROM employees
WHERE birth_date LIKE '%-12-15%';


-- 842 observations

-- SELECT hire_date, year(hire_date), month(hire_date), day(hire_date), weekday(hire_date)

-- 10. Find all current or previous employees hired in the 90s and born on Christmas. Enter a comment with the number of employees returned. 362

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25';

-- 362 observations

-- 11. Find all current or previous employees with a 'q' in their last name. Enter a comment with the number of records returned. 1873

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

-- 1873 observations

-- 12. Find all current or previous employees with a 'q' in their last name but not 'qu'. How many employees are found?

SELECT *
FROM employees
WHERE last_name LIKE '%q%' 
AND NOT last_name LIKE '%qu%';

-- 547 observations

