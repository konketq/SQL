--1. ������� ������� employees

create table employees (
id serial primary key,
employee_name varchar(50) not null
);

select * from employees; 

--��������� ������� employee 70 ��������.

insert into employees(employee_name) values 
('Vadim'),
('��������'),
('�������'),
('�������'),
('������'),
('�������'),
('��������'), 
('��������'), 
('������'),
('�����'),
('���������'), 
('�������'), 
('��������'), 
('���������'),
('�������'), 
('����'), 
('������'),
('��������'),
('��������'),
('���������'),
('����������'),
('��������'),
('��������'),
('�������'), 
('��������'),
('�������'), 
('����'),
('���������'),
('������'),
('����'),
('�����'), 
('����'),
('��'),
('�����'),
('������'),
('������'),
('������'),
('������'),
('�������'),
('�������'),
('�������'),
('������'),
('���'),
('������'),
('����'),
('�������'), 
('������'),
('�������'),
('���������'), 
('����������'),
('������'),
('��������'), 
('��������'),
('������'),
('����'),
('�������'), 
('�������'),
('���'),
('�����'), 
('����'),
('�������'), 
('�����'),
('����'),
('�����'),
('������'),
('�����'),
('�������'), 
('�����'),
('����'),
('���');

--3. ������� ������� salary  id. Serial  primary key, monthly_salary. Int, not null

create table salary (
id serial primary key,
monthly_salary int not null
);

select * from salary;

-- 4. ��������� ������� salary 15 ��������:
insert into salary(monthly_salary) values 
(1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

 --5. ������� ������� employee_salary id. Serial  primary key, employee_id. Int, not null, unique, salary_id. Int, not null

create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

select * from employee_salary; 

--6. ��������� ������� employee_salary 40 ��������: - � 10 ����� �� 40 �������� �������������� employee_id

insert into employee_salary(employee_id, salary_id) values
(3, 7),
(1, 4),
(9, 5),
(39, 13),
(23, 4),
(11, 2),
(52, 10),
(15, 13),
(26, 4),
(16, 1),
(33, 7),
(7, 16),
(68, 8),
(60, 10),
(56, 4),
(32, 1),
(20, 15),
(49, 3),
(45, 10),
(57, 6),
(29, 7),
(70, 16),
(37, 14),
(27, 10),
(14, 13),
(2, 11),
(30, 9),
(40, 5),
(31, 11),
(71, 15),
(89, 10),
(90, 1),
(105, 3),
(75, 2),
(76, 6),
(87, 12),
(97, 14),
(82, 10),
(95, 7),
(100, 11);

-- 7. ������� ������� roles- id. Serial  primary key,- role_name. int, not null, unique

create table roles (
id serial primary key,
role_name int not null unique
);

select * from roles;

--8. �������� ��� ������ role_name � int �� varchar(30)

alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

--9. ��������� ������� roles 20 ��������:

insert into roles(role_name) values
('role_name'),
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

-- 10. ������� ������� roles_employee- id. Serial  primary key,
-- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
-- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)

create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)
);

select * from roles_employee;

--11. ��������� ������� roles_employee 40 ��������:

insert into roles_employee(employee_id, role_id) values
(1, 2),
(2, 4),
(3, 9),
(4, 13),
(5, 4),
(6, 2),
(7, 9),
(8, 13),
(9, 3),
(10, 4),
(20, 5),
(21, 19),
(22, 20),
(23, 14),
(24, 3),
(25, 9),
(26, 13),
(27, 11),
(28, 4),
(29, 12),
(30, 17),
(31, 19),
(32, 20),
(33, 11),
(34, 10),
(35, 2),
(36, 9),
(37, 19),
(38, 18),
(39, 17),
(40, 16),
(41, 15),
(42, 12),
(43, 5),
(44, 6),
(45, 7),
(46, 9),
(47, 10),
(48, 11),
(49, 4);