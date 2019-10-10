/*
	Os operadores de compara��o testam se duas express�es s�o iguais, podem ser utilizados em todas as express�es.
	Exceto quando as express�es s�o do tipo de dados TEXT, NTEXT ou IMAGE. 
	Em nossos exemplos vamos utilizar a cl�usula WHERE + o operador de compara��o.

	Veja a descri��o abaixo:

	Operador					Significado
	= (Igual a)					Igual a
	> (Maior que)				Maior que
	< (Menor que)				Menor que
	>= (Maior ou igual a)		Maior que ou igual a
	<= (Menor ou igual a)		Menor que ou igual a
	<> (Diferente de)			� diferente de
	!= (N�o � igual a)			Diferente de (n�o � padr�o ISO)
	!< (N�o � menor que)		N�o � menor que (n�o � padr�o ISO)
	!> (N�o � maior que)		N�o � maior que (n�o � padr�o ISO)
	

	Sint�xe:

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
--								Operador [ != ] N�o � igual a 
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
--								Operador [ !< ] N�o � menor que 
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
--								Operador [ !> ] N�o � maior que 
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


-- Obs: fa�a v�rios simula��es com dados distintos: texto, num�ricos etc. 