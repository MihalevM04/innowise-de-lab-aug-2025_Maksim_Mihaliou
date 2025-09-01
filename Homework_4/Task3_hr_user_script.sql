INSERT INTO Employees (FirstName, LastName, Department, Salary) VALUES
('Tyler', 'Durden', 'Psychology', 100000.00);

UPDATE Employees
SET Salary = 120000.00
WHERE FirstName = 'Tyler' AND LastName = 'Durden';
