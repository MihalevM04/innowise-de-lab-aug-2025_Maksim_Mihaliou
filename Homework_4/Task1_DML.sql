-- Добавление новых записей в таблицу
INSERT INTO Employees (FirstName, LastName, Department, Salary) VALUES
('Cyrus', 'Smith', 'Engineering', 95000.00),
('Rachel', 'Sexton', 'Analysis', 105000.00);

-- Выбор всех столбцов из таблицы Employees
SELECT * FROM Employees;

SELECT FirstName, LastName		-- Выбор столбцов FirstName и LastName
FROM Employees					-- таблицы Employees
WHERE Department = 'IT';		-- где Department совпадает с 'IT'.

UPDATE Employees				-- Изменение данных в таблице Employees
SET Salary = 65000.00			-- Установка нового значения Salary
WHERE FirstName = 'Alice' AND LastName = 'Smith';	-- для Alice Smith

DELETE FROM EmployeeProjects	-- Удаление записей сотрудника 'Prince'
WHERE EmployeeID = (			-- из таблицы EmployeeProjects,
	SELECT EmployeeID			-- ссылающихся на Employees(EmployeeID)
	FROM Employees
	WHERE LastName = 'Prince'
);
-- Удаление сотрудника с LastName 'Prince' из таблицы Employees
DELETE FROM Employees
WHERE LastName = 'Prince';

-- Выборка всех данных для проверки результатов
SELECT * FROM Employees;
