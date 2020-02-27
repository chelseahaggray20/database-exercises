use employees;



SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M'
ORDER BY first_name;










SELECT *, datediff(now(), hire_date) FROM employees WHERE hire_date LIKE '199%'
                                                      AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;