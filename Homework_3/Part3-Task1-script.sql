SELECT
    c.country,
    COUNT(*)		-- Счетчик строк в каждой группе GROUP BY
FROM
    Customers c
GROUP BY			-- Группировка строк столбца country с одинаковыми значениями
	c.country;