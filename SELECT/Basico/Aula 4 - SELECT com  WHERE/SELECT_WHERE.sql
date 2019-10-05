/*
	Avan�ando um pouco mais em nossas consultas, vamos utilizar a cl�usula WHERE que realiza um tipo de filtro de acordo com uma necessidade.
	No exemplo abaixo vamos consultar as colunas FirstName, LastName e City, como o comando WHERE vamos filtrar apenas dados que correspondem a cidade de London.

	Sint�xe:

	SELECT nameColumn1, nameColumn2... FROM nameTable WHERE nameColumn = 'nameCity';

*/


SELECT		FirstName,
		LastName,
		City
FROM		Employees
WHERE		City = 'London';


-- Resultado da Query:

FirstName	LastName	City
Steven		Buchanan	London
Michael		Suyama		London
Robert		King		London
Anne		Dodsworth	London

-- ----------------------------------------------------------------

SELECT		FirstName,
		LastName,
		City
FROM		Employees
WHERE		employeeID = 1;


-- Resultado da Query

FirstName	LastName	City
Nancy		Davolio		Seattle


-- Obs: Fique atento com o tipo de dados que vai passar como par�metro, dados do tipo texto/string, data/hora e decimal/float devem ser descritos entre ''.