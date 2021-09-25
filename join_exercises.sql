

-- 1. Use the join_example_db;. Select all the records from both the users and roles tables.

USE join_example_db;



-- 2. Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.

SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

-- 3. Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries. Use count and the appropriate join type to get a list of roles along with the number of users that has the role. Hint: You will also need to use group by in the query.





-- 1. Employees Database

USE employees;

-- 2. Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.


SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Current Manager'
FROM dept_manager
JOIN employees USING(emp_no)
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date > CURDATE();

/*  Department Name    | Department Manager
 --------------------+--------------------
  Customer Service   | Yuchang Weedman
  Development        | Leon DasSarma
  Finance            | Isamu Legleitner
  Human Resources    | Karsten Sigstam
  Marketing          | Vishwani Minakawa
  Production         | Oscar Ghazalie
  Quality Management | Dung Pesch
  Research           | Hilary Kambil
  Sales              | Hauke Zhang */
  
-- 3. Find the name of all departments currently managed by women.


SELECT dept_name, concat(first_name, ' ', last_name), gender
FROM employees AS e -- used AS (alias)
JOIN dept_manager dm USING(emp_no) -- don't need to put AS
JOIN departments d USING(dept_no)
WHERE dm.to_date > now()
AND gender LIKE 'f'
ORDER BY dept_name; -- Work on this code



/*Department Name | Manager Name
----------------+-----------------
Development     | Leon DasSarma
Finance         | Isamu Legleitner
Human Resources | Karsetn Sigstam
Research        | Hilary Kambil*/

-- 4. Find the current titles of employees currently working in the Customer Service department.

SELECT title, count(*)
FROM titles as t
JOIN dept_emp de USING(emp_no)
JOIN departments d using(dept_no)
WHERE t.to_date > now()
AND de.to_date > now()
AND dept_name LIKE 'Customer%'
GROUP BY title;




/*Title              | Count
-------------------+------
Assistant Engineer |    68
Engineer           |   627
Manager            |     1
Senior Engineer    |  1790
Senior Staff       | 11268
Staff              |  3574
Technique Leader   |   241*/

-- 5. Find the current salary of all current managers.

SELECT dept_name, salary, first_name, last_name
FROM salaries AS s
JOIN dept_manager dm USING(emp_no)
JOIN departments d USING(dept_no)
JOIN employees e using(emp_no)
WHERE s.to_date > now()
AND dm.to_date > now()
ORDER BY dept_name; 




/*Department Name    | Name              | Salary
-------------------+-------------------+-------
Customer Service   | Yuchang Weedman   |  58745
Development        | Leon DasSarma     |  74510
Finance            | Isamu Legleitner  |  83457
Human Resources    | Karsten Sigstam   |  65400
Marketing          | Vishwani Minakawa | 106491
Production         | Oscar Ghazalie    |  56654
Quality Management | Dung Pesch        |  72876
Research           | Hilary Kambil     |  79393
Sales              | Hauke Zhang       | 101987*/

-- 6. Find the number of current employees in each department.

SELECT dept_name, count(*)
FROM dept_emp AS de
JOIN departments d USING(dept_no)
WHERE de.to_date > now()
GROUP BY dept_name
ORDER By dept_name;


/*+---------+--------------------+---------------+
| dept_no | dept_name          | num_employees |
+---------+--------------------+---------------+
| d001    | Marketing          | 14842         |
| d002    | Finance            | 12437         |
| d003    | Human Resources    | 12898         |
| d004    | Production         | 53304         |
| d005    | Development        | 61386         |
| d006    | Quality Management | 14546         |
| d007    | Sales              | 37701         |
| d008    | Research           | 15441         |
| d009    | Customer Service   | 17569         |
+---------+--------------------+---------------+*/

-- 7. Which department has the highest average salary? Hint: Use current not historic information.

SELECT dept_name, avg(salary)
FROM salaries AS s
JOIN dept_emp de USING(emp_no)
JOIN departments d USING(dept_no)
WHERE s.to_date > now()
AND de.to_date > now()
GROUP BY dept_name
ORDER BY avg(salary) DESC
LIMIT 1;


/*+-----------+----------------+
| dept_name | average_salary |
+-----------+----------------+
| Sales     | 88852.9695     |
+-----------+----------------+*/
-- 8. Who is the highest paid employee in the Marketing department?

SELECT first_name, last_name, salary
FROM salaries AS s
JOIN dept_emp de USING(emp_no)
JOIN departments d USING(dept_no)
JOIN employees e USING(emp_no)
WHERE s.to_date > now()
AND de.to_date > now()
AND dept_name LIKE 'Market%'
ORDER BY salary DESC
LIMIT 1;



/*+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Akemi      | Warwick   |
+------------+-----------+*/

-- 9. Which current department manager has the highest salary?

SELECT first_name, last_name, salary, dept_name
FROM salaries AS s
JOIN dept_manager dm USING(emp_no)
JOIN employees e USING(emp_no)
JOIN departments d using(dept_no)
WHERE s.to_date > now()
AND dm.to_date > now()
ORDER BY salary DESC
LIMIT 1;


/*+------------+-----------+--------+-----------+
| first_name | last_name | salary | dept_name |
+------------+-----------+--------+-----------+
| Vishwani   | Minakawa  | 106491 | Marketing |
+------------+-----------+--------+-----------+*/

-- Bonus Find the names of all current employees, their department name, and their current manager's name.





240,124 Rows

Employee Name | Department Name  |  Manager Name
--------------|------------------|-----------------
 Huan Lortz   | Customer Service | Yuchang Weedman

 .....
Bonus Who is the highest paid employee within each department.


