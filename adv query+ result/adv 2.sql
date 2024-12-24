-- Calculate the net salary of all employees after bonuses and deductions, and list those whose net salary exceeds a certain threshold.(60000/-)

select employee.employee_id,
concat (employee.first_name , ' ' ,employee.last_name) as employee_name,
salary.salary as base_salary,
salary.bonus, salary.deduction,
(salary.salary+ salary.bonus- salary.deduction) as net_salary

from salary 
join employee on salary.employee_id = employee.employee_id

where (salary.salary+ salary.bonus - salary.deduction)> 60000;