ALTER TABLE Employee
ADD COLUMN EmploymentStatus ENUM('Active', 'On Leave', 'Retired', 'Terminated') NOT NULL;


INSERT INTO Employee (EmpID, Name, Role, Grade)
VALUES (304, 'Abraham Lincoln', 'Project Manager', 2);


INSERT INTO Employee (EmpID, Name, Role, Grade, EmploymentStatus)
VALUES (304, 'Abraham Lincoln', 'Project Manager', 2, 'Active');

UPDATE Employee
SET Name = 'Diana of Themyscira', Role = 'Senior Project Manager'
WHERE EmpID = 304;

DELETE FROM Employee
WHERE EmpID = 304;


ALTER TABLE Supplier
MODIFY COLUMN SupplierID INT AUTO_INCREMENT;

INSERT INTO Supplier (Name, MaterialType, ItemsSupplied)
VALUES ('Wayne Enterprises', 'High-Tech Equipment', 10);

ALTER TABLE Material
ADD COLUMN InStock BOOLEAN DEFAULT TRUE;

INSERT INTO Material (MatID, Name, QuantityAvailable)
VALUES (204, 'Steel', 500);
