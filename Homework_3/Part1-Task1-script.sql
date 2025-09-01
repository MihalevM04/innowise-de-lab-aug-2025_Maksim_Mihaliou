SELECT				-- Выбор конкретных столбцов ...
    c.first_name,
    c.last_name,
    c.age,
    c.country
FROM				-- Из таблицы ...
    Customers c     -- Присвоение Customers псевдонима "c"
WHERE				-- Фильтр ...
    c.age > 25      -- Значение поля больше 25
    AND c.country = 'USA'; -- Значение поля совпадает с "USA"
    