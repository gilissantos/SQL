/*
	A Instrução DISTINCT é utilizada para retornar apenas os dados distintos, ou seja, diferentes dentro de um Query.
Quando usamos DISTINCT todos os dados da consulta serão exclusivos.

	Sintáxe:

	SELECT DISTINCT nameColumn1, nameColumn2 FROM nameTable;
*/

SELECT	COUNT(DISTINCT ProductID) AS [Qtde],
		'Yes' AS [Distinct]
FROM	[Order Details]
UNION
SELECT	COUNT(ProductID) AS [Qtde],
		'No' AS [Distinct]
FROM	[Order Details];


-- Resultado da Query: extraímos a quantidade de registros com e sem a instrução DISTINCT.

Qtde	Distinct
77		Yes
2155	No