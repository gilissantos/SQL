/*
	O agrupamento de dados � mais utilizado na extra��o de relat�rio, por exemplo vamos extrair apenas o maior valor de cada pedido, pois um pedido pode ter mais de um produto.
	Podemos usar mais de uma fun��o de agrupamento com v�rios campos, tornando assim condi��es para extrair dados e transformar em uma determinada informa��o.

	Sint�xe:

	SELECT nameColumn1, nameColumn2 FROM nameTable GROUP BY nameColumn;
*/


-- Resultado da Query: consultamos o maior pre�o de um pedido, consultamos com a fun��o MAX() da coluna UnitPrice e agrupamentos pelo n�mero do pedito da coluna OrderID.

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


-- Outro exemplo � extrair um relat�rio com a m�dia de pre�o por pedido:

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


-- Obs: estes s�o apenas um dos exemplos, por�m voc� pode e ter� in�meras possibilidades de acordo com a sua necessidade.