/*
	Avançando um pouco mais em nossas consultas, vamos utilizar a cláusula WHERE que realiza um tipo de filtro de acordo com uma necessidade.
	No exemplo abaixo vamos consultar as colunas FirstName, LastName e City, como o comando WHERE vamos filtrar apenas dados que correspondem a cidade de London.

	Sintáxe:

	SELECT nameColumn1, nameColumn2... FROM nameTable WHERE nameColumn = 'nameCity';

*/


SELECT		e.FirstName,
			e.LastName,
			e.City
FROM		Employees as e
WHERE		e.City = 'London';


-- Resultado da Query:

FirstName	LastName	City
Steven		Buchanan	London
Michael		Suyama		London
Robert		King		London
Anne		Dodsworth	London


-- Obs: Fique atento com o tipo de dados que vai passar como parâmetro, dados do tipo texto/string, data/hora e decimal/float devem ser descritos entre ''.