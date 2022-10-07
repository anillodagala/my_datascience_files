create database new_assignment

use new_assignment
--Create the following Tables and insert the values accordingly
create table Employee(Employee_id int primary key,
First_name varchar(100),)
alter table Employee  
add Last_name  varchar(100),
salary int,
Joining_date date,
Department varchar(100)


select * from Employee
create table Employee_Bonus(Employee_ref_id int foreign key references Employee(Employee_id),

create table Employee_Title(Employee_ref_id int foreign key references Employee(Employee_id),

insert into Employee
values 
(1,'Anika','Arora',100000,'2020-02-14 9:00:00','HR'),
(2,'Veena','Verma',80000,'2011-06-15 9:00:00','Admin'),
(3,'Vishal','Singhal',300000,'2020-02-16 9:00:00','HR'),
(4,'Sushanth','Singh',500000,'2020-02-17 9:00:00','Admin'),
(5,'Bhupal','Bhati',500000,'2011-06-18 9:00:00','Admin'),
(6,'Dheeraj','Diwan',200000,'2011-06-19 9:00:00','Account'),
(7,'Karan','Kumar',75000,'2020-01-14 9:00:00','Account'),
(8,'Chandrika','Chauhan',90000,'2011-04-15 9:00:00','Admin')
select * from Employee

insert into Employee_Title
values (1,'Manager','2016-02-20 0:00:00'),
(2,'Executive','2016-06-11 0:00:00'),
(8,'Executive','2016-06-11 0:00:00'),
(5,'Manager','2016-06-11 0:00:00'),
(4,'Asst. Manager','2016-06-11 0:00:00'),
(7,'Executive','2016-06-11 0:00:00'),
(6,'Lead','2016-06-11 0:00:00'),
(3,'Lead','2016-06-11 0:00:00')
select * from Employee_Title



insert into Employee_Bonus
values (1,5000,'2020-02-16 0:00:00'),
(2,3000,'2011-06-16 0:00:00'),
(3,4000,'2020-02-16 0:00:00'),
(4,4500,'2020-02-16 0:00:00'),
(5,3500,'2011-06-16 0:00:00')
select * from Employee_Bonus

--1 Display the �FIRST_NAME� from Employee table using the alias name
 --as Employee_name.
select First_name as Employee_name from Employee
---2 Display �LAST_NAME� from Employee table in upper case.
select Distinct(Department) from Employee
select top 2 * from Employee order by salary desc

--21. DISPLAY the list of employees with the same salary.
 