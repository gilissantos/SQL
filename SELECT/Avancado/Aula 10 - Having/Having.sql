/*
	HAVING � uma cl�usula com o objetivo de utilizar fun��es agregadas.
	Foi adicionada ao SQL porque a cl�usula WHERE n�o aceita fu��es agregadas.

	Sint�xe:

	SELECT nameColumn1 FROM nameTable HAVING nameFunction;
*/

SELECT		COUNT(EmployeeID) AS Quantidade,
			Region
FROM		Employees
WHERE		Region IS NOT NULL
GROUP BY	Region
HAVING		COUNT(EmployeeID) > 1;

-- Resultado da Query: Extra�mos a quantidade de clientes maiores 5 por cada regi�o.

Quantidade	Region
	5		WA