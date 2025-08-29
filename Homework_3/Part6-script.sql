SELECT
	o.order_id,
    c.customer_id,
    o.item,
    o.amount,
    SUM(o.amount) OVER(PARTITION BY c.customer_id) AS total_by_customer
    -- Добавляет столбец, где для каждого
    -- сгруппированного поля столбца customer_id
    -- находится сумма связанных с ним полей столбца amount
FROM
    Customers c
INNER JOIN Orders o ON				-- Соединение таблиц по общему ключу
	c.customer_id = o.customer_id
ORDER BY							-- Сортировка по возрастанию
	o.order_id;