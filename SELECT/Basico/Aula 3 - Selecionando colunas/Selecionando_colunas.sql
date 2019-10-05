/*
	Neste exemplo vamos selecionar apenas as colunas: FirstName e City, na maioria dos casos necessitamos de determinados campos ao invés de todas as colunas de uma ou mais tabelas.
	
	Sintáxe:

	SELECT nameColumn1, nameColumn2, nameColumn3, ... FROM nameTable;
*/


SELECT		FirstName,
			City
FROM		Employees;


-- Resultado da Query:


FirstName	City
Nancy		Seattle
Andrew		Tacoma
Janet		Kirkland
Margaret	Redmond
Steven		London
Michael		London
Robert		London
Laura		Seattle
Anne		London