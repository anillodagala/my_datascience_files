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
create table Employee_Bonus(Employee_ref_id int foreign key references Employee(Employee_id),Bonus_amount int,bonus_date date)select * from Employee_Bonus

create table Employee_Title(Employee_ref_id int foreign key references Employee(Employee_id),Employee_title varchar(100),Affective_date date)select * from Employee_Title

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

--1 Display the “FIRST_NAME” from Employee table using the alias name
 --as Employee_name.
select First_name as Employee_name from Employee
---2 Display “LAST_NAME” from Employee table in upper case.select upper(Last_name) as Last_name from Employee --3 Display unique values of DEPARTMENT from EMPLOYEE table.
select Distinct(Department) from Employee---4 Display the first three characters of LAST_NAME from EMPLOYEE table.select Last_name,substring(Last_name,1,3) from Employee --5 Display the unique values of DEPARTMENT from EMPLOYEE table and prints its length.select Distinct(Department),len(Department) from Employee--6 Display the FIRST_NAME and LAST_NAME from EMPLOYEE table into a single column AS FULL_NAME. select First_name +' '+ Last_name as FULL_NAME from Employee--7 DISPLAY all EMPLOYEE details from the employee table order by FIRST_NAME Ascending.select * from Employee order by First_name --8. Display all EMPLOYEE details order by FIRST_NAME Ascending and DEPARTMENT Descending.select * from Employee order by  Department desc--9 Display details for EMPLOYEE with the first name as “VEENA” and “KARAN” from EMPLOYEE table.select * from Employee where First_name='Veena'  select * from Employee where First_name='Karan' --10 Display details of EMPLOYEE with DEPARTMENT name as “Admin”.select * from Employee where Department='Admin'  --11 DISPLAY details of the EMPLOYEES whose FIRST_NAME contains ‘V’.select * from Employee where First_name like 'V%' --12 DISPLAY details of the EMPLOYEES whose SALARY lies between 100000 and 500000select * from Employee where salary between 100000 and 500000  --13 Display details of the employees who have joined in Feb-2020.select * from Employee where Joining_date like '2020-02%'  --14 Display employee names with salaries >= 50000 and <= 100000.select * from Employee where salary between 50000 and 100000  --16 DISPLAY details of the EMPLOYEES who are also Managers.select * from Employee inner join Employee_title on Employee_id=Employee_ref_id and Employee_title='Manager' --17 DISPLAY duplicate records having matching data in some fields of a tableselect Department,count(*)  from Employee group by Department having count(*)>1   ---18 Display only odd rows from a table.select * from Employee where Employee_id%2!=0 ---19 Clone a new table from EMPLOYEE table.select * INTO EMPLOYEE_clone FROM Employeeselect * FROM EMPLOYEE_clone---20 DISPLAY the TOP 2 highest salary from a table.
select top 2 * from Employee order by salary desc

--21. DISPLAY the list of employees with the same salary.select * from Employee WHERE salary = ( select salary from Employee group by salary having  count(*)>1 )    --22 Display the second highest salary from a table. select top 1* from (select top 2 * from Employee order by salary desc)y order by salary 
   --23 Display the first 50% records from a table. select top 50 percent * from Employee --24. Display the departments that have less than 4 people in it. select Department,count(*) from Employee group by Department having count(*)<4   --25. Display all departments along with the number of people in there. select Department,count(*) from Employee  group by Department --26 Display the name of employees having the highest salary in each department. select * from Employee where salary in (  select max(salary) from Employee  group by Department)--27 Display the names of employees who earn the highest salary. select * from Employee where salary in (  select max(salary) from Employee ) --28 Diplay the average salaries for each department   select avg(salary),Department from Employee  group by Department --29 display the name of the employee who has got maximum bonus  select First_name from Employee inner join Employee_Bonus on Employee_id=Employee_ref_id and Bonus_amount=(  select max(Bonus_amount) from Employee_Bonus )   --30 Display the first name and title of all the employees	select First_name,Employee_title from Employee inner join Employee_title on Employee_id=Employee_ref_id  