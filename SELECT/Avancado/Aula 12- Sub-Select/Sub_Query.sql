/*
	SUBQUERY/SUBSELECT/SUBCONSULTA � uma instru��o SELECT dentro de outra Instru��o do SQL.
Utilizamos quando algumas consultas seriam complexas ou imposs�veis de fazermos de outra maneira.
	Podemos utilizar das seguintes maneiras conforme abaixo:

	>Como filtro de  uma consulta, com os operadores IN por exemplo, e outros operadores de compara��o.
	>Como uma nova coluna de uma consulta.
	>Como fonte de dados de uma consulta principal SELECT FROM SUBSELECT

*/


SELECT			
	CL.CompanyName	AS CLIENTE,
	CL.City			AS CIDADE,
	(OD.UnitPrice * OD.Quantity) AS TOTAL,
	OS.OrderDate	AS DATA_PEDIDO,
		(SELECT 
			DISTINCT
			CL.CompanyName
			FROM
		Customers
			GROUP BY CL.ContactName)
FROM			
	Customers		AS CL
INNER JOIN	Orders	AS OS
ON				
	CL.CustomerID = OS.CustomerID
INNER JOIN	[Order Details] AS OD
ON
	OD.OrderID = OS.OrderID;