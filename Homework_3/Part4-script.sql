SELECT
	c.first_name,
	c.age
FROM
	Customers c
ORDER BY			-- Сортировка по столбцу age
	c.age DESC;		-- в обратном порядке (по убыванию)