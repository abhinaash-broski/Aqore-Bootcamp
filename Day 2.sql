IF OBJECT_ID('Staff', 'U') IS NOT NULL
    DROP TABLE Staff;

IF OBJECT_ID('Branches', 'U') IS NOT NULL
    DROP TABLE Branches;
GO


CREATE TABLE Branches (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100) UNIQUE NOT NULL,
    city VARCHAR(100) DEFAULT 'Kathmandu',
    established_year INT
);
Go 
CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    full_name VARCHAR(150) NOT NULL,
    position VARCHAR(100),
    branch_id INT,
    salary DECIMAL(10,2),

    CONSTRAINT fk_branch
        FOREIGN KEY (branch_id)
        REFERENCES Branches(branch_id)
); 
Go
INSERT INTO Branches (branch_id, branch_name, city, established_year)
VALUES
    (1, 'Head Office', 'Kathmandu', 2001),
    (2, 'Pokhara Branch', 'Pokhara', 2010),
    (3, 'Biratnagar Branch', 'Biratnagar', 2015);
    INSERT INTO Staff (staff_id, full_name, position, branch_id, salary)
VALUES
    (101, 'Prakash Thapa', 'Manager', 1, 85000),
    (102, 'Mina Sharma', 'Accountant', 1, 55000),
    (103, 'Ramesh KC', 'Assistant', 2, 40000),
    (104, 'Sita Dahal', 'Officer', 3, 60000),
    (105, 'Ganesh Rai', 'Clerk', 2, 35000);
    
Select * from Branches
Select * from Staff;