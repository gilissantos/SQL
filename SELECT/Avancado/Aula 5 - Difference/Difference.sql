/*
	A função DIFFERENCE compara dois valores e retorna um número inteiro em uma escala de 0 a 4.
	Quanto mais próxima de 0 menos ou nenhuma semelhança.
	Quanto mais próxima de 4 mais ou semelhante.

	Sintáxe:

	SELECT DIFFERENCE(value1/nameColumn1, value2/nameColumn2 ) FROM nameTable; campos ou tabela opcionais conforme necessidade.
*/


DECLARE @palavra1 VARCHAR = 'Ame';
DECLARE @palavra2 VARCHAR = 'EnOM';
DECLARE @palavra3 VARCHAR = 'ABCDE';
DECLARE @palavra4 VARCHAR = '12345';

SELECT	DIFFERENCE(@palavra1, @palavra2) AS 'GRAU DE SEMELHANCA 1', 
		DIFFERENCE(@palavra3, @palavra4)  AS 'GRAU DE SEMELHANCA 2';

-- Resultado da Query: verificamos o grau de semelhança das variáveis.

GRAU DE SEMELHANCA 1	GRAU DE SEMELHANCA 2
		3						0
-- -----------------------------------------------------------------------------------

SELECT	e.FirstName,
		e.LastName,
		DIFFERENCE(e.FirstName, e.LastName) AS 'Grau de semelhanca'
FROM	Employees AS e;	

-- Resultado da Query: 

 FirstName	LastName	Grau de semelhanca
Nancy		Davolio				1
Andrew		Fuller				1
Janet		Leverling			0
Margaret	Peacock				1
Steven		Buchanan			1
Michael		Suyama				1
Robert		King				0
Laura		Callahan			2
Anne		Dodsworth			0