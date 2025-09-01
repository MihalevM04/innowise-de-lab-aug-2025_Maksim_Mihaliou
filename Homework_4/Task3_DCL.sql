-- Создание пользователя с именем hr_user и паролем 1234
CREATE USER hr_user WITH PASSWORD '1234';

-- Предоставление hr_user права SELECT на таблицу Employees
GRANT SELECT ON Employees TO hr_user;

-- Предоставление hr_user прав INSERT и UPDATE на таблицу Employees.
GRANT INSERT, UPDATE ON Employees TO hr_user;

GRANT USAGE ON SEQUENCE employees_employeeid_seq TO hr_user;
