SELECT
	c.first_name,
	c.last_name,
	o.amount
FROM
	Customers c
INNER JOIN Orders o ON				-- Соединение таблиц заказов и клиентов
	o.customer_id = c.customer_id	-- по совпадающим полям
WHERE
	o.amount = (			-- где каждое поле amount - это
	SELECT					-- максимальное значение
		MAX(amount)
	FROM
		Orders
);