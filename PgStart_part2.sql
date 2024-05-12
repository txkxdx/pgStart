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

