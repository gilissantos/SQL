/*
	Em um determinado relat�rio � necess�rio extra� os dados em Linhas para Colunas, ou seja, de Horizontal para Vertical.
	A fun��o PIVOT do SQL server tem esse objetivo, transformar dados Vertical, 'gira' o resultado de uma coluna em v�rias colunas.
	Particularmente faz a mesma coisa que a fun��o TRANSPOR do MS Excel, veja o passo a passo como fazer o PIVOT:

	1� Fazer um SELECT sem PIVOT
	2� Fa�a uma subquery com alguma fun��o de agrega��o/agrupamento
	3� Fa�a o PIVOT com uma fun��o de agrega��o
	4� Fa�a um FOR com a coluna que deve ser transformada em cabe�alhos/t�tulos
	5� Coloque as colunas em lista com o operador IN.
	Sint�xe:
	
	
SELECT <coluna n�o din�mica>,
    [primeira coluna din�mica] AS <nome da coluna>,
    [segunda coluna din�mica] AS <nome da coluna>,
    ...
    [�ltima coluna din�mica] AS <nome da coluna>
FROM
    (<Consulta SELECT que produz os dados>)
    AS <alias para a consulta de origem>
PIVOT
(
    <fun��o de agrega��o> (<coluna sendo agregada>)
FOR
[<coluna que cont�m os valores que se tornar�o cabe�alhos de coluna>]
    IN ([primeira coluna din�mica], [segunda coluna din�mica],
    ... [�ltima coluna din�mica])
) AS <alias para a tabela din�mica>
<cl�usula opcional ORDER BY>; 

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

-- Importante: apenas com fun��es de agrupamento/agrega��o podemos usar o PIVOT, caso contr�rio retornar� erros.