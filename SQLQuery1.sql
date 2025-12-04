USE TrainingDB; 
Go 

IF OBJECT_ID ('dbo.Employee', 'U') IS NOT NULL 
	DROP TABLE [dbo].[Employee]
GO 

CREATE TABLE Employee ( 
[EmployeeId] INT NOT NULL PRIMARY KEY, 
[FirstName] NVARCHAR(50) NOT NULL, 
[LastName] NVARCHAR(50) NOT NULL, 
[Salary] INT NOT NULL ); 
GO

INSERT INTO dbo.Employee (
[EmployeeId], [FirstName], [LastName], [Salary]
)
Values ( 10021, N'Ram', N'Thaoa', N'5000'), 
( 10031, N'Shyam', N'Shrestha', N'500'),
( 1001, N'Reshma', N'Baral', N'600')
GO

SELECT * From Employee

SELECT EmployeeId from Employee; 