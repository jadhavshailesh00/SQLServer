create table Department(D_ID int primary key,DeptName varchar(10));
create table Employee (E_ID int primary key,Name varchar(10),salary varchar(10),
D_ID int ,joindate Date,ManagerID int ,foreign key(D_ID) references Department(D_ID))


insert into Department values (1, 'HR'),
(2, 'Finance'),
(3, 'ENG'),
(4, 'Marketing');


-- Inserting employees
INSERT INTO Employee (E_ID, Name, Salary, D_ID, joindate, ManagerID)
VALUES 
(1, 'John', 5000.00, 1, '2023-01-15', NULL),
(2, 'Jane', 8000.00, 2, '2022-03-10', 1),
(3, 'Michael', 6000.00, 3, '2023-07-20', 1),
(4, 'Emily', 9000.00, 4, '2021-11-25', NULL),
(5, 'David', 4000.00, 1, '2024-05-05', 1), -- Corrected D_ID to 1
(6, 'Susan', 7000.00, 2, '2023-04-01', NULL), -- Corrected D_ID to 2
(7, 'Paul', 6000.00, 3, '2023-08-15', 3),
(8, 'Mark', 5000.00, 3, '2023-07-01', 3);



select * from Department
select * from employee




-- Write a query to find the second highest salary from an Employee table.
Select Max(salary) as SalaryEmployee from employee where salary <(select max(salary) from employee)

 --Question: Write a query to display the employee names along with their department names.
select e.name,d.DeptName from Employee e join department d
on e.D_ID=d.D_ID  

select * from Employee
ALTER TABLE Employee alter COLUMN salary FLOAT

--Write a query to find employees whose salary is higher than the average salary in the company.
select name,salary from employee where salary  > (select AVG(salary) from employee)

--Write a query to find the total number of employees in each department, and only display departments that have more than 5 employees.
select count(e.E_ID) as toatalEmployee ,d.deptName from employee e join department d
on e.D_ID=d.D_ID group by d.deptName having count (e.E_ID) >5

--Write a query to find employees who have the same salary in the Employee table.
select salary,count(E_ID) from employee group by salary having count (E_ID) >1

--Write a query to fetch the details of employees who joined in the last 6 months.
select * from employee where joindate< DATEADD(MONTH,6,GETDATE());

--Write a query to get the top 3 employees with the highest salaries.
select top 3 name, salary from employee  order by salary desc 

