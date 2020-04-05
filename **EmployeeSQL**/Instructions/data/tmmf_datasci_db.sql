SELECT * FROM dept_emp;
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM titles;


SELECT
departments.dept_no,
departments.dept_name,
dept_manager.emp_no,
employees.last_name,
employees.first_name,
dept_manager.from_date,
dept_manager.to_date
FROM dept_manager  
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no;





select 
dm.dept_no as "Department #", 
d.dept_name as "Department Name",
dm.emp_no as "Manager Employee #", 
e.last_name as "Manager Last Name",
e.first_name as "Manager First Name", 
dm.from_date as "Employment Start Date",
dm.to_date as "Employment End Date"
from dept_manager dm
inner join departments d
on dm.dept_no = d.dept_no
inner join employees e
on dm.emp_no = e.emp_no;

e.emp as "Employee #",
e.last_name as "Last Name"
e.first_name as "First Name"
d.dept_name as "Department Name"
from dept_manager dm
inner join departments d
on dm.dept_no = d.dept_no
inner join employees e
on de.emp_no = e.emp_no;

select 
e.emp_no as "Employee #",
e.last_name as "Last Name",
e.first_name as "First Name",
d.dept_name as "Department Name"
from dept_emp de
inner join departments d
on de.dept_no = d.dept_no
inner join employees e
on de.emp_no = e.emp_no
where d.dept_name = 'Sales' OR d.dept_name = 'Development';


select first_name from employees as e
where e.first_name = 'H%' AND
e.last_name = 'B%' ;

SELECT * FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%' ORDER BY first_name;

SELECT last_name, COUNT(*)
FROM employees
	GROUP BY  
	HAVING COUNT(*) > 1;
	
SELECT last_name,COUNT(*) FROM employees GROUPBY last_name HAVING COUNT(*)>1;	
select last_name,count(last_name) from employees having count(last_name)>1 groupby last_name;

SELECT 
    last_name, 
    COUNT(last_name)
FROM
    employees
GROUP BY last_name
HAVING COUNT(last_name) > 1
ORDER BY COUNT(*) DESC;

