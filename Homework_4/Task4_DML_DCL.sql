-- Увеличние Salary всех сотрудников в отделе 'HR' на 10%
UPDATE Employees
SET Salary = Salary * 1.10
WHERE Department = 'HR';

-- Обновление Department любого сотрудника с Salary выше 70000.00 на 'Senior IT'
UPDATE Employees
SET Department = 'Senior IT'
WHERE Salary > 70000.00;

-- Удаление всех сотрудников, которые не назначены ни на один проект в таблице EmployeeProjects
DELETE FROM Employees e
WHERE NOT EXISTS (
	SELECT 1
	FROM EmployeeProjects ep
	WHERE ep.EmployeeID = e.EmployeeID
);

BEGIN; -- Начало транзакции

-- Вставка нового проекта
INSERT INTO Projects (ProjectName, Budget, StartDate, EndDate)
VALUES ('Project August 2025', 1000000.00, '2025-08-04', '2025-08-29');

-- Назначение на него двух существующих сотрудников
INSERT INTO EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
VALUES (1, 4, 120);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
VALUES (3, 4, 90);

COMMIT; -- Зафиксировать изменения
