SELECT
	o.item,
	COUNT(*),		-- Подсчет общего количества заказов каждого товара
	AVG(o.amount)	-- Вычисление средней суммы за каждый товар
FROM
	Orders o
GROUP BY			-- Группировка товаров
	o.item;