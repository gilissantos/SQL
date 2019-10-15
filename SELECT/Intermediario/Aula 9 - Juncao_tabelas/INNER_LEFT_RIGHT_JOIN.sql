/*
	A junção ou associação de tabelas é realizada através da cláusula JOIN, que em portugês significa juntar/junção.
	JOIN realizadação a junção de tabelas por meio das claúsulas JOIN e WHERE, porém em nossos exemplos vamos realizar 
junções da forma mais utilizada: a chave primária da primeira tabela com a chave estrangeira da segunda tabela.
	Neste exemplo vamos realizar consultas com:

	>INNER JOIN: seleciona apenas os dados que são relacionados/comuns das duas ou mais tabelas.
	>LEFT JOIN: seleciona todos os registros da tabela1 mesmo que não esatejam na tabela2.
	>Right JOIN: seleciona todos os registros da tabela2 mesmo que não esatejam na tabela1. 	



	Sintáxe:

	SELECT	nameColumn1, 
			nameColumn2 
	FROM	table1 
	JOIN	table2 
	ON		table1.primaryKey =  table2.foreignKey;

*/


SELECT			a.ProductName,
				b.CategoryName,
				a.UnitPrice,
				b.Description
FROM			Products as a
INNER JOIN		Categories as b
ON				a.CategoryID = b.CategoryID;


-- Resultado da Query: selecionamos e juntamos apenas os dados que são correspondentes.

ProductName		CategoryName	UnitPrice	Description
Chai			Beverages		18,00		Soft drinks, coffees, teas, beers, and ales
Chang			Beverages		19,00		Soft drinks, coffees, teas, beers, and ales
Aniseed Syrup	Condiments		10,00		Sweet and savory sauces, relishes, spreads, and seasonings
-- ------------------------------------------------------------------------------------------------------------

SELECT		p.ProductName,
			c.CategoryName,
			p.UnitPrice,
			c.Description
FROM		Products AS p
LEFT JOIN	Categories AS c
ON			p.CategoryID = c.CategoryID;

-- Obs: neste caso os dados extraídos são iguais da primeira consulta (IINER JOIN), pois todos os dados são correspondentes.
-- -------------------------------------------------------------------------------------------------------------------------

SELECT		p.ProductName,
			c.CategoryName,
			p.UnitPrice,
			c.Description
FROM		Products AS p
RIGHT JOIN	Categories AS c
ON			p.CategoryID = c.CategoryID;

-- Resultado da Query: selecionamos e juntamos apenas os dados que são correspondentes, caso contrário a tabela da direita seria NULL.

ProductName	CategoryName		UnitPrice	Description
Chai	Beverages				18,00		Soft drinks, coffees, teas, beers, and ales
Chang	Beverages				19,00		Soft drinks, coffees, teas, beers, and ales
Guaraná Fantástica	Beverages	4,50		Soft drinks, coffees, teas, beers, and ales