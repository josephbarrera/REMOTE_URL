
USE employees;

SELECT *
FROM employees;

-- 2. In your script, use DISTINCT to find the unique titles in the titles table. How many unique titles have there ever been? Answer that in a comment in your SQL file.

SELECT DISTINCT title
FROM titles;

-- 7 unique titles

-- 3. Write a query to to find a list of all unique last names of all employees that start and end with 'E' using GROUP BY.

SELECT DISTINCT(last_name)
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name;


-- 4. Write a query to find all unique combinations of first and last names of all employees whose last names start and end with 'E'.

SELECT DISTINCT(first_name, last_name)
FROM employees
WHERE last_name LIKE 'e%e'



-- 5. Write a query to find the unique last names with a 'q' but not 'qu'. Include those names in a comment in your sql code.




-- 6. Add a COUNT() to your results (the query above) to find the number of employees with the same last name.




-- 7. Find all employees with first names 'Irena', 'Vidya', or 'Maya'. Use COUNT(*) and GROUP BY to find the number of employees for each gender with those names.




-- 8. Using your query that generates a username for all of the employees, generate a count employees for each unique username. Are there any duplicate usernames? BONUS: How many duplicate usernames are there?




-- More practice with aggregate functions:

-- 9. Find the historic average salary for all employees. Now determine the current average salary.




-- 10. Now find the historic average salary for each employee. Reminder that when you hear "for each" in the problem statement, you'll probably be grouping by that exact column.




-- 11. Find the current average salary for each employee.




-- 12. Find the maximum salary for each current employee.




-- 13. Now find the max salary for each current employee where that max salary is greater than $150,000.




-- 14. Find the current average salary for each employee where that average salary is between $80k and $90k.




