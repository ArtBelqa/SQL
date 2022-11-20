--создаем таблицу ЗП--
create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

--вставить в таблицу занчения для Месяца ЗП--
insert into salary(monthly_salary)
values 	(500),
		(700),
		(1000),
		(1200),
		(1400),
		(1500),
		(2000);
		
--если хотим вставить и ID и ЗП--
insert into salary(id, monthly_salary)
values 	(7,1700);

--Создаем таблицу Ролей--
create table role(
	id serial primary key,
	role_title varchar(50) unique not null
);

--вносим данные в таблицу РОлей--
insert into role (role_title)
values 	('Junior_QA'),
		('Middle_QA'),
		('Senior_QA'),
		('Junior_JS_developer'),
		('Middle_JS_developer'),
		('Senior_JS_developer');
		
select * from role;

--создаем таблицу с реляцией ЗП и Ролей--
create table role_salary(
	id serial primary key,
	id_role int not null,
	id_salary int not null,
	foreign key (id_role)
		references role(id),
	foreign key (id_salary)
		references salary(id)
);

select * from role_salary;

--вонсим в Роли и ЗП данные--
insert into role_salary (id_role, id_salary)
values 	(1,1),
		(2,3),
		(3,7);
	
--хочу обновить ЗП в таблице salary на 1800--
Update salary
set monthly_salary = 1800
where id = 7;

--Удалите не нужные значения из ЗП--
delete from salary
where id= 8 or id=9;

--добавить в таблицу ROLE парковочные места для senior--
alter table role
add column parking int;

--Переименовал Parking в taxi--
alter table role 
rename column parking to taxi;

--DROP для удаления столбцов, таблиц и БД (column), DELETE для удаления строк в таблицах
--Удалить столбик TAXI--
alter table role
Drop column taxi;



