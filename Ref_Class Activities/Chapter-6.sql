--Create Table
CREATE TABLE Employee(
  EmpID INT,
  EmpName VARCHAR(50),
  EmpAddress VARCHAR(100),
  EmpSalary DECIMAL(10,2)
  PRIMARY KEY (EmpID)
);

CREATE TABLE Department(
  DeptID INT,
  DeptName VARCHAR(50),
  DeptLocation VARCHAR(100),
  EmpID INT
  PRIMARY KEY (DeptID)
  FOREIGN KEY (EmpID) REFERENCES Employee(EmpID)
);

--Alter Table
ALTER TABLE Employee
ADD EmpEmail VARCHAR(50);

--Drop Table
DROP TABLE Employee;

--Insert Data
INSERT INTO Employee (EmpID, EmpName, EmpAddress, EmpSalary)
VALUES (1, 'John Doe', '123 Main St', 50000.00);