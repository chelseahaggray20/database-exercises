use employees;
select distinct title as bob from titles_of_employees;










select last_name from employees
where last_name LIKE 'e%e'
group by last_name;



















select first_name, last_name from employees
where last_name LIKE 'e%e'
group by last_name, first_name;


















select last_name, count(*) from employees
where last_name like '%q%'
  and last_name not like '%qu%'
group by last_name
order by count(*) desc;




















SELECT count(*), gender FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender
order by gender desc;