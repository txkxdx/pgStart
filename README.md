------------------------------------------ PART 1


План тестирования веб-магазина 

 

Этап 1: Подготовка (неделя 1) 

- Анализ требований и подготовка плана тестирования 

- Подготовка тестовой документации 

- Подготовка тестовых данных и среды 

 

Этап 2: Юнит-тест (неделя 2) 

- Тестирование отдельных модулей кода 

- Проверка корректности работы компонентов 

 

Этап 3: Интеграционное тестирование (3 и 4 недели) 

- Тестирование взаимодействия между компонентами системы 

- Проверка целостности данных в БД 

- Тестирование возможности передачи данных между сервером и клиентом 

 

Этап 4: Системное тестирование (5 и 6 недели) 

- Функциональное тестирование всего приложения 

- Тестирование основных функций: просмотр каталога, добавление товаров в корзину, оформление заказа, выбор доставки, оплата 

- Тестирование взаимодействия с платежной системой 

 

Этап 5: Нагрузочное тестирование (7 и 8 недели) 

- Оценка производительности системы под нагрузкой (стресс-тест) 

- Определение максимальной нагрузки на систему 

- Анализ времени отклика системы при различных нагрузках. 

 

 

Этап 6: Приемочное тестирование (9 и 10 недели) 

- Участие заказчика в тестировании 

- Проверка соответствия продукта требованиям заказчика 

- Оценка удовлетворенности конечных пользователей функциональностью приложения 

 

Этап 7: Поддержка (Месяц после релиза) 

- Оценка результатов тестирования 

- Подготовка отчетов о тестировании 

- Поддержка приложения на этапе выпуска 

 

Ресурсы 

- Доступ к коду приложения и БД 

- Возможность использования средств автоматизации тестирования 

- Доступ к виртуальным машинам для нагрузочного тестирования 

 

Показатели качества 

- Доля (%) успешных тестов 

- Среднее время отклика приложения на запросы пользователей 

- Количество обнаруженных и устраненных неисправностей 

 

Управление рисками 

- Оценка рисков, их приоритезация на каждом этапе 

- Регулярное обновление списка рисков, меры их минимизации 

 

Оценка трудоемкости 

- Оценка трудозатрат на каждом этапе, корректировка плана при необходимости 

- Этот план тестирования обеспечивает высокое качество интернет-магазина и снижает риск возникновения дефектов


------------------------------------------ PART 2



-- №2
create database academy


-- №3
	
create table Students (
	s_id int primary key not null,
	name varchar(50) not null,
	start_year date not null		
)

create table Courses (
	c_no int primary key not null,
	title varchar(100) not null,
	hours int not null
)

create table Exams (
	s_id int not null references Students(s_id),
	c_no int not null references Courses(c_no),
	score int not null
)

-- №4
	
insert into Students values ('1', 'Anton', '2023-01-01')
insert into Students values ('2', 'Valeriy', '2023-02-01')
insert into Students values ('3', 'Alexander', '2023-03-01')
insert into Students values ('4', 'Ruslan', '2023-04-01')
insert into Students values ('5', 'Albert', '2023-03-01')
insert into Students values ('6', 'Ivan', '2023-05-01')

insert into Courses values ('1','Math course', 144)
insert into Courses values ('2','Physics course', 144)
insert into Courses values ('3','English course', 170)
insert into Courses values ('4','French course', 76)
insert into Courses values ('5','Biology course', 54)

insert into Exams values ('1', '1', 5)
insert into Exams values ('1', '2', 4)
insert into Exams values ('1', '3', 5)
insert into Exams values ('2', '1', 5)
insert into Exams values ('2', '2', 2)
insert into Exams values ('2', '3', 4)
insert into Exams values ('3', '1', 5)

-- №5

select students.s_id, name from Students 
left join Exams on exams.s_id = students.s_id 
group by students.s_id, name
having count (exams.s_id) = 0

-- №6

select students.s_id, name, count(exams.s_id) as CountOfExams from students 
join exams on exams.s_id = students.s_id
group by students.s_id, name

-- №7

select c_no, avg(score) as AverageScoreForExam from Exams
group by c_no
order by averagescoreforexam desc







