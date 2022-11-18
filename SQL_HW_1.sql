--SQL_HW_1--
--Создать .sql файл в котором под каждой командой напишите sql запрос который выполнит команду. .sql файл выгружайте себе в гугл репозиторий.--

--1. Вывести все поля и все строки.--
Select * from students;

--2. Вывести всех студентов в таблице--
select id, name from students;

--3. Вывести только Id пользователей--
select id from students;

--4. Вывести только имя пользователей--
select name from students;

--5. Вывести только email пользователей--
select email from students;

--6. Вывести имя и email пользователей--
select name, email from students;

--7. Вывести id, имя, email и дату создания пользователей--
select name, email from students;

--8. Вывести id, имя, email и дату создания пользователей--
select name, email, created_on from students;

--9. Вывести пользователей где password 12333--
select * 
from students
where password='12333';

--10. Вывести пользователей которые были созданы 2021-03-26 00:00:00--
select * 
from students
where created_on ='2021-03-26 00:00:00';

--11. Вывести пользователей где в имени есть слово Анна--
select * from students
where name like 'Anna%' ;

--12. Вывести пользователей где в имени в конце есть 8--
select * from students
where name like '%8%' ;

--13. Вывести пользователей где в имени в есть буква а--
select * from students
where name like '%a%' ;

--14. Вывести пользователей которые были созданы 2021-07-12 00:00:00--
select * 
from students
where created_on ='2021-07-12 00:00:00';

--15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313--
select * 
from students
where created_on ='2021-07-12 00:00:00'
AND password = '1m313';

--16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey--
select * 
from students
where created_on ='2021-07-12 00:00:00'
AND name like '%Andrey%';


--17. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8--
select * 
from students
where created_on ='2021-07-12 00:00:00'
AND name like '%8%';

--18. Вывести пользователя у которых id равен 110--
select * from students
where id = 110;

--19. Вывести пользователя у которых id равен 153--
select * from students
where id = 153;

--20. Вывести пользователя у которых id больше 140--
select * from students
where id > 140
order by id;

--21. Вывести пользователя у которых id меньше 130--
select * from students
where id < 130
order by id;

-- 22. Вывести пользователя у которых id меньше 127 или больше 188--
select * from students
where id > 188
Or id < 127
order by id;

--23. Вывести пользователя у которых id меньше либо равно 137--
select * from students
where id <= 137
order by id;

--24. Вывести пользователя у которых id больше либо равно 137--
select * from students
where id >= 137
order by id;

--25. Вывести пользователя у которых id больше 180 но меньше 190--
select * from students
where id > 180
And id < 190
order by id;

--26. Вывести пользователя у которых id между 180 и 190--
select * from students
where id between 180 and 190
order by id;

--27. Вывести пользователей где password равен 12333, 1m313, 123313--
select * from students
where password = '12333' or password = '1m313' or password = '123313'
order by password ;

--28. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00--
select * from students
where created_on = '2020-10-03 00:00:00' or created_on = '2021-05-19 00:00:00' or created_on = '2021-03-26 00:00:00'
order by created_on ;

--29. Вывести минимальный id--
select min(id) as MinId from students;

--30. Вывести максимальный.--
select max(id) as MaxId from students;

--31. Вывести количество пользователей--
select count (id) from students;

--32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.--
select id, name, created_on from students
order by created_on;

--33. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля--
select id, name, created_on from students
order by created_on desc;
