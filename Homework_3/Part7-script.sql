SELECT
	c.first_name ||	' ' || c.last_name AS full_name, -- Совмещение столбцов в один с новым именем
	c.country,
	COUNT(o.order_id) AS total_orders,		-- Подсчет количества заказов
	SUM(o.amount) AS total_amount			-- Подсчет суммы заказов
FROM
	Customers c
INNER JOIN Orders o ON						-- Соединение таблиц по общему ключу
	c.customer_id = o.customer_id
WHERE EXISTS (
  SELECT *
  FROM Shippings s							-- Проверка
  WHERE s.customer = c.customer_id			-- по совпадающим с таблицей Shippings ключам,
    AND s.status = 'Delivered'				-- найдется ли хотя бы одна доставка со статусом 'Delivered'
)
GROUP BY									-- Группировка полей, связанных с подсчитываемыми полями
	c.first_name, c.last_name, c.country
HAVING
	COUNT(o.order_id) >= 2		-- Фильтр на количество заказов от 2 и более
ORDER BY
	c.first_name;				-- Сортировка имен в алф.порядке