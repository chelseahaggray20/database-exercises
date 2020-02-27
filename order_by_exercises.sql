use employees;
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
ORDER BY first_name;



SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
ORDER BY first_name, last_name;



SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
ORDER BY last_name, first_name;


-- Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!

SELECT * FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E'
ORDER BY emp_no;

SELECT * FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
ORDER BY emp_no;



SELECT * FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT * FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
ORDER BY emp_no DESC;



SELECT * FROM employees WHERE hire_date > '199%'
                          AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;



SELECT * FROM employees WHERE hire_date > '199%';

SELECT * FROM employees WHERE hire_date LIKE '%12-25';

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE last_name NOT LIKE '%qu%'
                          AND last_name LIKE '%q%';
