/*
	Os operadores de comparação testam se duas expressões são iguais, podem ser utilizados em todas as expressões.
	Exceto quando as expressões são do tipo de dados TEXT, NTEXT ou IMAGE. 
	Em nossos exemplos vamos utilizar a cláusula WHERE + o operador de comparação.

	Veja a descrição abaixo:

	Operador			Significado
	= (Igual a)			Igual a
	> (Maior que)			Maior que
	< (Menor que)			Menor que
	>= (Maior ou igual a)		Maior que ou igual a
	<= (Menor ou igual a)		Menor que ou igual a
	<> (Diferente de)		É diferente de
	!= (Não é igual a)		Diferente de (não é padrão ISO)
	!< (Não é menor que)		Não é menor que (não é padrão ISO)
	!> (Não é maior que)		Não é maior que (não é padrão ISO)
	

	Sintáxe:

	SELECT nameColumn FROM nameTable WHERE operadorLogico nameColumn;   
*/

-- --------------------------------------------------------------------------------------------------
--										Operador [ = ] Igual a 
-- --------------------------------------------------------------------------------------------------

SELECT		FirstName,
		HireDate
FROM		Employees
WHERE		HireDate = '1992-05-01';

-- Resultado da query:

FirstName	HireDate
Nancy		1992-05-01


-- --------------------------------------------------------------------------------------------------
--										Operador [ < ] Menor que
-- --------------------------------------------------------------------------------------------------

SELECT		FirstName,
		HireDate
FROM		Employees
WHERE		HireDate < '1992-05-01';

-- Resultado da query:

FirstName	HireDate
Nancy		1992-04-01


-- --------------------------------------------------------------------------------------------------
--										Operador [ > ] Maior que
-- --------------------------------------------------------------------------------------------------

SELECT		FirstName,
		HireDate
FROM		Employees
WHERE		HireDate > '1992-05-01';

-- Resultado da query:

FirstName	HireDate
Andrew		1992-08-14
Margaret	1993-05-03
Steven		1993-10-17
Michael		1993-10-17
Robert		1994-01-02
Laura		1994-03-05
Anne		1994-11-15

-- --------------------------------------------------------------------------------------------------
--										Operador [ <> ] Diferente de 
-- --------------------------------------------------------------------------------------------------

SELECT		FirstName,
		HireDate
FROM		Employees
WHERE		HireDate <> '1992-05-01';

-- Resultado da query:

FirstName	HireDate
Andrew		1992-08-14
Janet		1992-04-01
Margaret	1993-05-03
Steven		1993-10-17
Michael		1993-10-17
Robert		1994-01-02
Laura		1994-03-05
Anne		1994-11-15

-- --------------------------------------------------------------------------------------------------
--								Operador [ <= ] Menor ou igual a 
-- --------------------------------------------------------------------------------------------------

SELECT		FirstName,
		HireDate
FROM		Employees
WHERE		HireDate <= '1992-05-01';

-- Resultado da query:

FirstName	HireDate
Nancy		1992-05-01
Janet		1992-04-01

-- --------------------------------------------------------------------------------------------------
--								Operador [ >= ] Maior ou igual a 
-- --------------------------------------------------------------------------------------------------

SELECT		FirstName,
		HireDate
FROM		Employees
WHERE		HireDate >= '1992-05-01';

-- Resultado da query:

FirstName	HireDate
Nancy		1992-05-01
Andrew		1992-08-14
Margaret	1993-05-03
Steven		1993-10-17
Michael		1993-10-17
Robert		1994-01-02
Laura		1994-03-05
Anne		1994-11-15

-- --------------------------------------------------------------------------------------------------
--								Operador [ != ] Não é igual a 
-- --------------------------------------------------------------------------------------------------

SELECT		FirstName,
		HireDate
FROM		Employees
WHERE		HireDate != '1992-05-01';

-- Resultado da query:

FirstName	HireDate
Andrew		1992-08-14
Janet		1992-04-01
Margaret	1993-05-03
Steven		1993-10-17
Michael		1993-10-17
Robert		1994-01-02
Laura		1994-03-05
Anne		1994-11-15

-- --------------------------------------------------------------------------------------------------
--								Operador [ !< ] Não é menor que 
-- --------------------------------------------------------------------------------------------------

SELECT		FirstName,
		HireDate
FROM		Employees
WHERE		HireDate !< '1992-05-01';

-- Resultado da query:

FirstName	HireDate
Nancy		1992-05-01
Andrew		1992-08-14
Margaret	1993-05-03
Steven		1993-10-17
Michael		1993-10-17
Robert		1994-01-02
Laura		1994-03-05
Anne		1994-11-15

-- --------------------------------------------------------------------------------------------------
--								Operador [ !> ] Não é maior que 
-- --------------------------------------------------------------------------------------------------

SELECT		FirstName,
		HireDate
FROM		Employees
WHERE		HireDate !< '1992-05-01';

-- Resultado da query:

FirstName	HireDate
Nancy		1992-05-01
Andrew		1992-08-14
Margaret	1993-05-03
Steven		1993-10-17
Michael		1993-10-17
Robert		1994-01-02
Laura		1994-03-05
Anne		1994-11-15


-- Obs: faça várias simulações com dados distintos: texto, numéricos etc. 
