/*
	O agrupamento de dados é mais utilizado na extração de relatório, por exemplo vamos extrair apenas o maior valor de cada pedido, pois um pedido pode ter mais de um produto.
	Podemos usar mais de uma função de agrupamento com vários campos, tornando assim condições para extrair dados e transformar em uma determinada informação.

	Sintáxe:

	SELECT nameColumn1, nameColumn2 FROM nameTable GROUP BY nameColumn;
*/


-- Resultado da Query: consultamos o maior preço de um pedido, consultamos com a função MAX() da coluna UnitPrice e agrupamentos pelo número do pedito da coluna OrderID.

SELECT		OrderID,
		MAX(UnitPrice)
		Quantity
FROM		[Order Details]
GROUP BY	OrderID;

OrderID	Quantity
10248	34,80
10249	42,40
10250	42,40
10251	16,80
10252	64,80
10741	19,00
-- ---------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------


-- Outro exemplo é extrair um relatório com a média de preço por pedido:

SELECT		OrderID,
		AVG(UnitPrice) AS [Ticket Medio]
FROM	[Order Details]
GROUP BY	OrderID;


OrderID	Ticket Medio
10248	19,5333
10249	30,50
10250	22,30
10251	16,40
10252	31,3333


-- Obs: estes são apenas um dos exemplos, porém você pode e terá inúmeras possibilidades de acordo com a sua necessidade.