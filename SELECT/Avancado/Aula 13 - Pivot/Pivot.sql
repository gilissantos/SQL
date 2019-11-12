/*
	Em um determinado relatório é necessário extraí os dados em Linhas para Colunas, ou seja, de Horizontal para Vertical.
	A função PIVOT do SQL server tem esse objetivo, transformar dados Vertical, 'gira' o resultado de uma coluna em várias colunas.
	Particularmente faz a mesma coisa que a função TRANSPOR do MS Excel, veja o passo a passo como fazer o PIVOT:

	1º Fazer um SELECT sem PIVOT
	2º Faça uma subquery com alguma função de agregação/agrupamento
	3º Faça o PIVOT com uma função de agregação
	4º Faça um FOR com a coluna que deve ser transformada em cabeçalhos/títulos
	5º Coloque as colunas em lista com o operador IN.
	Sintáxe:
	
	
SELECT <coluna não dinâmica>,
    [primeira coluna dinâmica] AS <nome da coluna>,
    [segunda coluna dinâmica] AS <nome da coluna>,
    ...
    [última coluna dinâmica] AS <nome da coluna>
FROM
    (<Consulta SELECT que produz os dados>)
    AS <alias para a consulta de origem>
PIVOT
(
    <função de agregação> (<coluna sendo agregada>)
FOR
[<coluna que contém os valores que se tornarão cabeçalhos de coluna>]
    IN ([primeira coluna dinâmica], [segunda coluna dinâmica],
    ... [última coluna dinâmica])
) AS <alias para a tabela dinâmica>
<cláusula opcional ORDER BY>; 

*/


SELECT	*
FROM	(
	SELECT			b.ProductName		AS PRODUTO,
					SUM(b.UnitPrice)	AS VALOR,
					YEAR(c.OrderDate)	AS DATA_PEDIDO
	FROM			[Order Details]		AS a
	INNER	JOIN	[Products]			AS b
	ON				a.ProductID = b.ProductID
	INNER	JOIN	Orders				AS c
	ON				c.OrderID = a.OrderID
	GROUP BY		b.ProductName, b.UnitPrice, YEAR(c.OrderDate)
	) AS EM_LINHA
PIVOT (SUM(VALOR) FOR DATA_PEDIDO IN ([1996], [1997], [1998])) AS EM_COLUNA;


-- Resultado da Query: realizamos a soma do valor dos produtos e agrupamos por ano, usamos o PIVOT para transformar a coluna ano em colunas para cada ano.

Produto				1996	1997	1998
Alice Mutton		312,00	702,00	429,00
Aniseed Syrup		10,00	70,00	40,00
Boston Crab Meat	110,40	460,00	184,00
Camembert Pierrot	374,00	714,00	646,00
Carnarvon Tigers	312,50	750,00	625,00

-- Importante: apenas com funções de agrupamento/agregação podemos usar o PIVOT, caso contrário retornará erros.