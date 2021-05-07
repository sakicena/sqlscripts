show databases;
create database krishna;
create database krishna1;
drop database krishna1;



use krishna;
create table Students ( Id int not null primary key, Name varchar(25) not null , Age int not null,Address varchar(50)  );

desc Students; # describing students


create table Employees ( EmployeeId int not null primary key,FirstName varchar(25) not null,LastName varchar(25) not null, Age int not null,AddressLine varchar(255),city varchar(25));

create table duplicates as select EmployeeId ,FirstName,Age from Employees;

drop table duplicates;

alter table  Employees rename to EmpDetails;

alter table Students add temp varchar(10);

alter table students drop temp;

alter table students modify number varchar(13);

alter table students rename column number to phone;