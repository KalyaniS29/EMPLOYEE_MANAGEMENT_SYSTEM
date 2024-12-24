-- 3. List all projects and their associated department names:

select project.project_name, department.department_name

from project

join department on project.department_id = department.department_id;