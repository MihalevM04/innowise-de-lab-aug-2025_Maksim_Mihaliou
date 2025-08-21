SELECT
    c.first_name,
    c.last_name,
    s.status
FROM
    Shippings s
INNER JOIN Customers c ON	-- Соединение с Customers совпадающих полей
	s.customer = c.customer_id;	-- когда значение1 = значению2