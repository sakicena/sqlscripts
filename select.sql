use krishna;

drop table students;
select  * from students;

# creating table and inserting data into the table
create table students(id int not null primary key,name varchar(25) not null,age int not null,gender varchar(15) not null);
insert into students values(1,'srikanth',20,'male');
insert into students values(2,'krishna',22,'female');
insert into students values(3,'varsha',24,'female');
insert into students values(4,'nagaraju',22,'male');
insert into students values(5,'pavan',20,'male');
insert into students values(6,'suresh',29,'male');
insert into students values(7,'bhargavi',19,'female');
insert into students values(8,'charan',18,'male');
insert into students values(9,'lavanya',24,'female');
insert into students values(10,'lasya',22,'female');

#manipulating the table like adding ,modifying ,deleting ,droping columns from the table
alter table students add column eligibility varchar(10) ;
alter table students add column residencetype varchar(8);
alter table students rename column eligibilty to eligibility;

#where clause usage with operators =,>,<,<>,>=,<=
select * from students where age=20;
select * from students where age>20;
select * from students where age>=20;
select * from students where age<=20;
select * from students where age <20;
select * from students where age <>20;
update students set eligibility='yes' where( residencetype='local' And age >20);
update students set eligibility='no' where ((age<=20 and id<>0) or (residencetype='nonlocal' and id<>0));
delete from students where age>25 and residencetype='nonlocal' and id<>0;

select id as rollnumber,name,age from students;

create table employee as select id ,name,age,gender from students;

alter table employee add (salary int);
select * from employee;
alter table employee modify column id int primary key;
select * from employee order by salary asc  ;
select * from employee order by name asc;
select * from employee order by rand();
select distinct name,age,gender,salary from employee;
insert into employee values(12,'Vinay',22,'male',30000);

# creating views 
create view ageabove25 as select * from employee where age>25;
select * from ageabove25;






