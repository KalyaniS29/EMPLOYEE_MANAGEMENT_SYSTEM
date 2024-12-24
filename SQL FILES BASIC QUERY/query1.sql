-- 1. get the attendance status of employees on a specific date "2023-01-11"

use employeedb;
select employee_id, status1,date1
from attendence
where date1= "2023-01-11";