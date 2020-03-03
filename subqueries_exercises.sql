use employees;

SELECT dept_no
FROM departments
WHERE dept_name = 'Customer Service';





SELECT *
FROM departments
WHERE dept_no = (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Customer Service'
);





SELECT emp_no
FROM dept_manager
WHERE dept_no IN (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Sales'
)
  AND to_date > NOW();








SELECT e.first_name, e.last_name
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no;

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
);



select concat(first_name, ' ', last_name) from employees
where emp_no IN (
    select emp_no from salaries where salary > 70000 and to_date > NOW()
);



SELECT emp_no, salary
FROM salaries
WHERE to_date > NOW()
ORDER BY salary DESC;


SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE to_date > NOW()
    ORDER BY salary DESC
)
LIMIT 10;



SELECT first_name, hire_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_emp
    WHERE from_date = (SELECT MIN(from_date) FROM dept_emp)
);




SELECT emp_no
FROM dept_manager
WHERE TO_DATE > NOW();

SELECT CONCAT(first_name, ' ', last_name) as full_name, gender
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE TO_DATE > NOW()
);



SELECT *
FROM titles
WHERE title = 'Senior Engineer'
  AND emp_no IN (
    SELECT emp_no
    FROM dept_emp
    WHERE dept_no IN (
        SELECT dept_no
        FROM departments
        WHERE dept_name = 'Customer Service'
    )
);
