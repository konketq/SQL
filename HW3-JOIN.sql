
select * from employee_salary; 

select * from employees; 

select * from roles; 

select * from roles_employee; 

select * from salary; 

--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employee_name, monthly_salary from (employee_salary
join employees
on employee_salary.employee_id = employees.id
join salary 
on employee_salary.salary_id = salary.id);

-- 2. ������� ���� ���������� � ������� �� ������ 2000.

select employee_name, monthly_salary from (employee_salary
join employees
on employee_salary.employee_id = employees.id
join salary 
on employee_salary.salary_id = salary.id) 
where monthly_salary < 2000;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_salary.id, employee_name, monthly_salary from (employee_salary
left join employees
on employee_salary.employee_id = employees.id
join salary 
on employee_salary.salary_id = salary.id)
where employee_name is null;

-- 4. ������� ��� ���������� ������� ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_salary.id, employee_name, monthly_salary from (employee_salary
left join employees
on employee_salary.employee_id = employees.id
join salary 
on employee_salary.salary_id = salary.id)
where employee_name is null and monthly_salary < 2000;

--5. ����� ���� ���������� ���� �� ��������� ��.
select employee_salary.id, employee_name, monthly_salary from (employee_salary
join employees
on employee_salary.employee_id = employees.id
right join salary 
on employee_salary.salary_id = salary.id)
where monthly_salary is null;


--6. ������� ���� ���������� � ���������� �� ���������.

select * from roles_employee
join employees
on roles_employee.employee_id = employees.id
join roles
on roles_employee.role_id = roles.id;

-- 7. ������� ����� � ��������� ������ Java �������������.
select roles_employee.id, employee_name, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Java developer%';

-- 8. ������� ����� � ��������� ������ Python �������������.

select roles_employee.id, employee_name, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Python developer%';

--9. ������� ����� � ��������� ���� QA ���������.

select roles_employee.id, employee_name, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id
join roles
on roles_employee.role_id = roles.id
where role_name like '%QA%';

 --10. ������� ����� � ��������� ������ QA ���������.

select roles_employee.id, employee_name, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Manual QA%';

 --11. ������� ����� � ��������� ��������������� QA
select roles_employee.id, employee_name, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Automation QA%';

 --12. ������� ����� � �������� Junior ������������

select employee_name, monthly_salary, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where role_name like '%Junior%';

 --13. ������� ����� � �������� Middle ������������
select employee_name, monthly_salary, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where role_name like '%Middle%';

 --14. ������� ����� � �������� Senior ������������

select employee_name, monthly_salary, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where role_name like '%Senior%';

 --15. ������� �������� Java �������������

select monthly_salary, role_name from roles_employee
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where role_name like '%Java developer%';

--16. ������� �������� Python �������������

select monthly_salary, role_name from roles_employee
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where role_name like '%Python developer%';

--17. ������� ����� � �������� Junior Python �������������

select employee_name, monthly_salary, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where role_name like '%Junior%Python%developer';

--18. ������� ����� � �������� Middle JS �������������

select employee_name, monthly_salary, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where role_name like '%Middle%JavaScript%developer%';

 --19. ������� ����� � �������� Senior Java �������������
select employee_name, monthly_salary, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where role_name like '%Senior%Java%developer%';

--20. ������� �������� Junior QA ���������

select monthly_salary, role_name from roles_employee
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where role_name like '%Junior%QA%';

--21. ������� ������� �������� ���� Junior ������������

select AVG(monthly_salary) as avarage_junior_salary from roles_employee
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where role_name like '%Junior%';

 --22. ������� ����� ������� JS �������������
 
select SUM(monthly_salary) as sum_js_salary from roles_employee
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where role_name like '%JavaScript%developer%';
 
 --23. ������� ����������� �� QA ���������

select MIN(monthly_salary) as min_qa_salary from roles_employee
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where role_name like '%QA%';

--24. ������� ������������ �� QA ���������

select MAX(monthly_salary) as max_qa_salary from roles_employee
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where role_name like '%QA%';

--25. ������� ���������� QA ���������

select COUNT(role_name) as all_qa from roles_employee
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where role_name like '%QA%engineer%';

--26. ������� ���������� Middle ������������.

select COUNT(role_name) as all_middle from roles_employee
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where role_name like '%Middle%';

--27. ������� ���������� �������������

select COUNT(role_name) as all_developer from roles_employee
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where role_name like '%developer%';

--28. ������� ���� (�����) �������� �������������.
 
select SUM(monthly_salary) as sum_dev_salary from roles_employee
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where role_name like '%developer%';
 
--29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employee_name, monthly_salary, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
order by monthly_salary; 


--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select employee_name, monthly_salary, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where monthly_salary between '1700' and '2300'
order by monthly_salary; 

--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

select employee_name, monthly_salary, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where monthly_salary < '2300'
order by monthly_salary; 
 
--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
 
select employee_name, monthly_salary, role_name from roles_employee
join employees
on roles_employee.employee_id = employees.id
join employee_salary
on employee_salary.employee_id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
join salary 
on salary.id = employee_salary.salary_id
where monthly_salary = '1100' or monthly_salary = '1500'or monthly_salary = '2000'
order by monthly_salary; 

