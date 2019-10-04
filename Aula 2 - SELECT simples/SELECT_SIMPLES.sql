SELECT		SUM(p.UnitPrice) AS Soma,
			AVG(p.UnitPrice) AS Media,
			MIN(p.UnitPrice) AS Minimo,
			MAX(p.UnitPrice) AS Maximo
FROM		Products as p;

