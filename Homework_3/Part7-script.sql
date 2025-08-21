SELECT
	c.first_name ||	' ' || c.last_name AS full_name, -- Совмещение столбцов в один с новым именем
	c.country,
	COUNT(o.order_id) AS total_orders,		-- Подсчет количества заказов
	SUM(o.amount) AS total_amount			-- Подсчет суммы заказов
FROM
	Customers c
INNER JOIN Orders o ON						-- Соединение таблиц по общему ключу
	c.customer_id = o.customer_id
INNER JOIN Shippings s ON
	s.customer = c.customer_id
WHERE
	s.status = 'Delivered'					-- Фильтр на наличие у заказа статуса 'Delivered'
GROUP BY									-- Группировка полей, связанных с подсчитываемыми полями
	c.first_name, c.last_name, c.country
HAVING
	COUNT(o.order_id) >= 2		-- Фильтр на количество заказов от 2 и более 
ORDER BY
	c.first_name;				-- Сортировка имен в алф.порядке