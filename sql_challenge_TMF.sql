-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT
   employees.emp_no,
   last_name,
   first_name,
   gender,
   salary  
FROM
   employees
INNER JOIN salaries ON salaries.emp_no = employees.emp_no;


-- 2. List employees who were hired in 1986.
SELECT emp_no
,first_name
,last_name
,hire_date
FROM employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
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


-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select 
e.emp_no as "Employee #",
e.last_name as "Last Name",
e.first_name as "First Name",
d.dept_name as "Department Name"
from dept_emp de
inner join departments d
on de.dept_no = d.dept_no
inner join employees e
on de.emp_no = e.emp_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
 SELECT * FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%' ORDER BY first_name;
-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
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
where d.dept_name = 'Sales';
-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
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
	

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT 
    last_name, 
    COUNT(last_name)
FROM
    employees
GROUP BY last_name
HAVING COUNT(last_name) > 1
ORDER BY COUNT(*) DESC;