-- Создание таблицы Departments
CREATE TABLE Departments (
	DepartmentID SERIAL PRIMARY KEY,
	DepartmentName VARCHAR(50) UNIQUE NOT NULL,
	Location VARCHAR(50)
);
-- Добавление нового столбца в Employees
ALTER TABLE Employees
ADD COLUMN Email VARCHAR(100);

-- Заполнение столбца Email в форме Имя.Фамилия@gmail.com
UPDATE Employees
SET Email = FirstName || '.' || LastName || '@gmail.com';
-- Добавление UNIQUE к столбцу Email
ALTER TABLE Employees
ADD CONSTRAINT UQ_Email UNIQUE (Email);

-- Переименование столбца Location в OfficeLocation в таблице Departments
ALTER TABLE Departments
RENAME COLUMN Location TO OfficeLocation;
