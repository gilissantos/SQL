/*
	HAVING é uma cláusula com o objetivo de utilizar funções agregadas.
	Foi adicionada ao SQL porque a cláusula WHERE não aceita fuções agregadas.

	Sintáxe:

	SELECT nameColumn1 FROM nameTable HAVING nameFunction;
*/

SELECT		COUNT(EmployeeID) AS Quantidade,
			Region
FROM		Employees
WHERE		Region IS NOT NULL
GROUP BY	Region
HAVING		COUNT(EmployeeID) > 1;

-- Resultado da Query: Extraímos a quantidade de clientes maiores 5 por cada região.

Quantidade	Region
	5		WA