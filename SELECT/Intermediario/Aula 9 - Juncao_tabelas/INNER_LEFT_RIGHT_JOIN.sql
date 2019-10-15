/*
	A jun��o ou associa��o de tabelas � realizada atrav�s da cl�usula JOIN, que em portug�s significa juntar/jun��o.
	JOIN realizada��o a jun��o de tabelas por meio das cla�sulas JOIN e WHERE, por�m em nossos exemplos vamos realizar 
jun��es da forma mais utilizada: a chave prim�ria da primeira tabela com a chave estrangeira da segunda tabela.
	Neste exemplo vamos realizar consultas com:

	>INNER JOIN: seleciona apenas os dados que s�o relacionados/comuns das duas ou mais tabelas.
	>LEFT JOIN: seleciona todos os registros da tabela1 mesmo que n�o esatejam na tabela2.
	>Right JOIN: seleciona todos os registros da tabela2 mesmo que n�o esatejam na tabela1. 	



	Sint�xe:

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


-- Resultado da Query: selecionamos e juntamos apenas os dados que s�o correspondentes.

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

-- Obs: neste caso os dados extra�dos s�o iguais da primeira consulta (IINER JOIN), pois todos os dados s�o correspondentes.
-- -------------------------------------------------------------------------------------------------------------------------

SELECT		p.ProductName,
			c.CategoryName,
			p.UnitPrice,
			c.Description
FROM		Products AS p
RIGHT JOIN	Categories AS c
ON			p.CategoryID = c.CategoryID;

-- Resultado da Query: selecionamos e juntamos apenas os dados que s�o correspondentes, caso contr�rio a tabela da direita seria NULL.

ProductName	CategoryName		UnitPrice	Description
Chai	Beverages				18,00		Soft drinks, coffees, teas, beers, and ales
Chang	Beverages				19,00		Soft drinks, coffees, teas, beers, and ales
Guaran� Fant�stica	Beverages	4,50		Soft drinks, coffees, teas, beers, and ales