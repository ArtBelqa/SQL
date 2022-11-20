/*SQL_DDL
Первая часть.

Таблица employees

Создать таблицу employees
1.- id. serial,  primary key,
- employee_name. Varchar(50), not null*/
create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

--2.Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
values 	('Michael'),
		('Christopher'),
		('Jason'),
		('David'),
		('James'),
		('John'),
		('Robert'),
		('Brian'),
		('William'),
		('Matthew'),
		('Joseph'),
		('Daniel'),
		('Kevin'),
		('Eric'),
		('Jeffrey'),
		('Richard'),
		('Scott'),
		('Mark'),
		('Thomas'),
		('Timothy'),
		('Anthony'),
		('Charles'),
		('Joshua'),
		('Ryan'),
		('Jeremy'),
		('Paul'),
		('Andrew'),
		('Gregory'),
		('Chad'),
		('Kenneth'),
		('Jonathan'),
		('Stephen'),
		('Shawn'),
		('Aaron'),
		('Adam'),
		('Patrick'),
		('Sean'),
		('Edward'),
		('Todd'),
		('Donald'),
		('Ronald'),
		('Benjamin'),
		('Keith'),
		('Bryan'),
		('Gary'),
		('Jose'),
		('Nathan'),
		('Douglas'),
		('Jennifer'),
		('Amy'),
		('Melissa'),
		('Michelle'),
		('Kimberly'),
		('Lisa'),
		('Angela'),
		('Heather'),
		('Stephanie'),
		('Nicole'),
		('Jessica'),
		('Elizabeth'),
		('Rebecca'),
		('Kelly'),
		('Mary'),
		('Christina'),
		('Amanda'),
		('Julie'),
		('Sarah'),
		('Laura');
		
/*3. Таблица salary
Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null*/
create table salary_employees (
	id serial primary key,
	monthly_salary int not null
);
--4.Наполнить таблицу Наполнить таблицу salary 15 строками.
insert into salary_employees (monthly_salary)
values 	(1000),
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

/*5.	Таблица employee_salary
Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null*/
create table employee_salary (
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (salary_id)
		references salary_employees(id)
);

Drop table employee_salary;
/* 6.Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id*/
insert into employee_salary (employee_id, salary_id)
values 	(1,1),
		(2,4),
		(3,7),
		(5,9),
		(4,8),
		(6,4),
		(7,10),
		(8,15),
		(9,2),
		(10,16),
		(11,6),
		(12,7),
		(13,15),
		(14,14),
		(15,13),
		(16,12),
		(17,11),
		(18,10),
		(19,9),
		(20,8),
		(21,7),
		(22,6),
		(23,5),
		(24,4),
		(25,3),
		(26,2),
		(27,1),
		(28,7),
		(29,15),
		(30,6);
/*7. Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique*/
create table roles (
	id serial primary key,
	role_name int unique not null
);

--8.Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name 
varchar(30);

Drop table roles;
/*9.Наполнить таблицу roles 20 строками:*/

insert into roles (role_name)
values  ('Junior_Python_developer'),
		('Middle_Python_developer'),
		('Senior_Python_developer'),
		('Junior_Java_developer'),
		('Middle Java developer'),
		('Senior Java developer'),
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
	
/*Таблица roles_employee
10.Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:
*/

create table roles_employee (
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
));

insert into roles_employee (employee_id, role_id)
values 	(1,1),
		(2,4),
		(3,7),
		(5,9),
		(4,17),
		(6,4),
		(7,10),
		(8,15),
		(9,2),
		(10,16),
		(11,6),
		(12,7),
		(13,15),
		(14,14),
		(15,13),
		(16,12),
		(17,11),
		(18,10),
		(19,9),
		(20,8),
		(21,7),
		(22,6),
		(23,5),
		(24,4),
		(25,3),
		(26,2),
		(27,1),
		(28,7),
		(29,15),
		(30,17);
	
select * from employees;
select * from salary_employees;
select * from employee_salary;
select * from roles;
select * from roles_employee;