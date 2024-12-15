Create database my_stud;
use my_stud;
create table student_data(roll_no int,
name varchar(20),
marks int not null,
grade varchar(1),
city varchar(20),
primary key(roll_no)
);

insert into student_data(roll_no, name, marks, grade, city)
values(1,'sumit',98,'a','mumbai'),
(2,'archana',90,'b','mumbai'),
(3,'payal',80,'c','delhi'),
(4,'don',95,'a','pune'),
(5,'rani',92,'a','delhi'),
(6,'ronnie',88,'a','chennai');

select * from student_data;
select * from student_data where marks>80;
select * from student_data where city='mumbai';
select * from student_data where marks > 85 and city='mumbai'
select * from student_data where marks between 85 and 95;
select * from student_data where city in ('mumbai', 'delhi');


select distinct city from student_data;
select * from student_data where marks>=90 limit 2;
select * from student_data order by marks asc;
select * from student_data order by marks desc;
select * from student_data order by grade asc;
select * from student_data order by marks asc limit 2;

select max(marks) from student_data;
select min(marks) from student_data;
select avg(marks) from student_data;
select count(roll_no) from student_data;
select sum(marks) from student_data;
select name, avg(marks) from student_data group by name order by avg(marks) desc;
select city, count(name) from student_data group by city;

select grade from student_data group by grade order by grade
select grade, count(roll_no) from student_data group by grade order by grade 
select city, count(name) from student_data group by city having max(marks)>90;
select city from student_data where grade='a' group by city order by city desc;

#updates
set sql_safe_updates=0;
update student_data set marks=66 where name='payal';
set sql_safe_updates=0;
update student_data set grade='D' where name='payal';
update student_data set name='don' where roll_no='1';
update student_data set grade='O' where marks between 95 and 100;

#delete
delete from student_data where name='rani';

#alter
alter table student_data add column age int not null default 20;
alter table student_data change city location varchar(20);
alter table student_data rename to student_info;
alter table student_info add column demo int not null default 20;
alter table student_info drop column demo;

#insert
select * from student_info;
insert into student_info(roll_no, name, marks, grade, location, age)
values(8,'priyanka', 82,'b', 'kolkata', 25),
(9, 'rohit', 87,'b','kanpur', 22);

alter table student_info change name full_name varchar(50)
alter table student_info drop column location;
select * from student_info;
show tables;