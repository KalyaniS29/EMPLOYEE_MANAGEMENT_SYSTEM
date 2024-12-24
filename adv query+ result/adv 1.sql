-- 1. Get the total number of days each employee was present in a specific month and year (01, 2023).
select employee.employee_id, 
concat ( employee.first_name, ' ' , employee.last_name) as employee_name,
count(attendance.attendence_id) as days_present

from attendance
join employee on employee.employee_id = attendance.employee_id

where attendance.status1= 'present'  and month(attendance.date1)= 01 and year(attendance.date1) =2023

group by employee_id, first_name, last_name;