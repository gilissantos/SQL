/*
	Os operadores lógicos testam se determinadas condições são verdadeiras/legítimas.
	Retornam tipo de dados BOOLEAN com valores: TRUE, FALSE ou UNKNOWN.
	Utilizamos os operadores lógicos junto com a cláusula WHERE, ou seja, adicionando mais condições.
	Veja a tabela com a descrição abaixo:


	Operador	Significado
	AND			TRUE se as duas expressões boolianas forem TRUE.
	BETWEEN		TRUE se o operando estiver dentro de um intervalo.
	IN			TRUE se o operando for igual a um de uma lista de expressões.
	*LIKE		TRUE se o operando corresponder a um padrão.
	OR			TRUE se qualquer expressão booliana for TRUE.

	Obs: Estamos tratando de retorno de dados do tipo booleano, porém vamos tratar apenas o retorno em tabelas.

*/

-- ------------------------------------------------------------------------------------------------------------------
--												Operador [ AND ] = E
-- ------------------------------------------------------------------------------------------------------------------

SELECT		City,
			Country
FROM		Employees
WHERE		Country = 'UK'
AND			City = 'London';

-- resultado da query:

City	Country
London	UK
London	UK
London	UK
London	UK

-- ------------------------------------------------------------------------------------------------------------------
--												Operador [ BETWEEN ] = ENTRE/INTERVALO
-- ------------------------------------------------------------------------------------------------------------------

SELECT		Quantity
FROM		[Order Details]
WHERE		Quantity BETWEEN 10 AND 12;

-- resultado da query:

Quantity
12
10
10
12
10

-- Importante: O operador BETWEEN obrigatóriamente só pode ser usado com o operador AND;

-- ------------------------------------------------------------------------------------------------------------------
--												Operador [ IN ] = NO/EM
-- ------------------------------------------------------------------------------------------------------------------

SELECT		City
FROM		Employees
WHERE		City IN ('Seattle', 'Tacoma', 'London');

-- resultado da query:

City
Seattle
Tacoma
London
London
London
Seattle	
London	

-- Obs: O operador IN rece uma lista que poder ser do tipo string, data/hora ou numérico.

-- ------------------------------------------------------------------------------------------------------------------
--												Operador [ OR ] = OU
-- ------------------------------------------------------------------------------------------------------------------

SELECT		City,
			Country
FROM		Employees
WHERE		Country = 'USA'
OR			City = 'london';

-- Resultado da Query:

City		Country
Seattle		USA
Tacoma		USA
Kirkland	USA
Redmond		USA
London		UK
London		UK
London		UK
Seattle		USA
London		UK



-- *O operador LIKE foi apartado destes exemplos em outra aula separada nomeada como Aula * - Operador_LIKE.