create table students(
id serial primary key,
name varchar(20) not null,
email varchar(20) unique,
age int,
marks decimal
);
insert into students values(1,'nik','nik@gmail.com',25,90.14);
insert into students values(2,'carrie','carrie@gmail.com',17,95.04);
insert into students values(5,'kush','kush@gmail.com',21,92.14);
select * from students;
select * from students where age>21;
update students set email='rahul@gmail.com' where id=5;
delete  from students where age<18;
select s1.* from students s1  where 1=(select count(marks)from students s2 where s1.marks<s2.marks);

create table student(
id int primary key,
name varchar(20),
age int
);
insert into student values(1,'Rahul',22);
insert into student values(2,'Priya',21);
insert into student values(3,'Akash',23);
create table courses(
course_id int primary key,
course_name varchar(20),
id int,foreign key(id) references student(id)
);
insert into courses values(101,'Java',1);
insert into courses values(102,'Python',2);
insert into courses values(103,'SQL',1);
select name n,course_name c from student s inner join courses c  on c.id=s.id;