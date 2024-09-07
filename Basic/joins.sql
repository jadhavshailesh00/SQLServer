CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'Engineering');

INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID)
VALUES
(101, 'John Doe', 1),
(102, 'Jane Smith', 2),
(103, 'Emily Johnson', 3),
(104, 'Michael Brown', 1),
(105, 'Sarah Davis', 3);

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Projects (ProjectID, ProjectName, DepartmentID)
VALUES
(201, 'Recruitment System', 1),
(202, 'Financial Reporting', 2),
(203, 'Automation Tool', 3),
(204, 'Employee Portal', 1),
(205, 'Data Migration', 3);


select * from Employees
select * from Departments
select * from projects

/*Inner Join to Get Employee Names and Their Department Names */
select * from Employees e join Departments d
on e.DepartmentID=d.DepartmentID

/* Perform a JOIN Operation Involving All Three Tables*/
select * from Employees e join Departments d 
on e.DepartmentID=d.DepartmentID
join Projects p
on d.DepartmentID=P.DepartmentID