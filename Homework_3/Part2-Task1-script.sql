SELECT
    c.first_name,
    c.last_name,
    o.item,
    o.amount
FROM
    Orders o
INNER JOIN Customers c ON	-- Присвоение Customers псевдонима "c"
							-- Соединение с таблицей Customers
	o.customer_id = c.customer_id;	-- по совпадающим полям