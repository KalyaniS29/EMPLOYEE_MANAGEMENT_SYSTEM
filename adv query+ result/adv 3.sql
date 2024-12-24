-- Rank departments based on the number of active employees and their total salaries.


select department.department_id,
department.department_name,
count(employee.employee_id) as active_employees, 
sum(employee.salary) as total_salary,
rank() over (order by count(employee.employee_id) desc , sum(employee.salary) desc ) as department_rank

from department 
join employee
on department.department_id = employee.department_id

where employee.hire_date <= current_date
group by department.department_id , department.department_name
order by department_rank;