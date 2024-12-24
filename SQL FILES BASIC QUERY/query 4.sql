-- 4. Get the salary details of employees along with their bonuses:

select employee.first_name, employee.last_name, employee.salary, salary.bonus

from employee

join salary on employee.employee_id = salary.employee_id;