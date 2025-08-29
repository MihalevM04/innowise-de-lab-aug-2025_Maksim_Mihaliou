SELECT				-- Выбор конкретных столбцов ...
    o.order_id,
    o.item,
    o.amount,
    o.customer_id
FROM				-- Из таблицы ...
    Orders o     	-- Присвоение Orders псевдонима "o"
WHERE				-- Фильтр ...
    o.amount > 1000;      -- Значение поля больше 1000
    