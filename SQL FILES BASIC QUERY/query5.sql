-- 5. Get the number of employees in each department:

select count(employee_id) as number_of_employees , department_id

from employee
group by department_id;