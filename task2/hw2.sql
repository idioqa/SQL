--1. Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar( 50 ) not null)
	
select * from employees

--2 Наполнить таблицу employee 70 строками. (In Python file)

--3 Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null)
	
--4 Наполнить таблицу salary 15 строками:
	
insert into salary (monthly_salary) values(1000),(1100),(1200),(1300),(1400),(1500),(1600),(1700),(1800),(1900),(2000),(2100),(2200),(2300),(2400),(2500)

select * from salary

--5 Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null)
	
--6 Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
	
insert into employee_salary (employee_id, salary_id) 
values (1,1),(2,2),(3,1),(4,5),(5,1),(6,2),(7,4),(8,7),(9,10),(10,1),
	   (11,1),(12,5),(13,3),(14,7),(15,14),(16,3),(17,12),(18,12),(19,5),(20,2),
	   (21,9),(22,12),(23,12),(24,10), (25, 2), (26, 11), (27, 15), (28, 12), (29, 3),(30, 12),
	   (100, 2), (120, 14), (122, 1), (123, 3), (125, 10),(126, 10),(127,1),(128,5),(129,2),(130,6)
	   
select * from employee_salary

--7 Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
--8 Поменять тип столба role_name с int на varchar(30)
--9 Наполнить таблицу roles 20 строками:

create table roles(
	id serial primary key,
	role_name int not null unique)
	
alter table roles alter column role_name type varchar(30) 

insert into roles (role_name) values ('Junior Python developer'), ('Middle Python developer'), ('Senior Python developer'),
	('Junior Java developer'), ('Middle Java developer'), ('Senior Java developer'), ('Junior JavaScript developer'),
	('Middle JavaScript developer'), ('Senior JavaScript developer'), ('Junior Manual QA engineer'), 
	('Middle Manual QA engineer'), ('Senior Manual QA engineer'), ('Project Manager'), ('Designer'),('HR'), ('CEO'),
	('Sales manager'), ('Junior Automation QA engineer'), ('Middle Automation QA engineer'), ('Senior Automation QA engineer')
	
select * from roles

--10 Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
	id serial primary key,
	employee_id int not null unique references employees (id),
	role_id int not null references roles (id))
	
--Наполнить таблицу roles_employee 40 строками: (In python)