/*
	A ordenação de dados corre através do comando ORDER BY, por padrão exibe os dados de forma Crescente, porém podemos definir como ordenar.
	ASC para Crescente e DESC para Decrescente, podemos ordenar mais de uma coluna.


	Sintáxe:

	SELECT nameColumn1, nameColumn2 FROM nameTable ORDER BY nameColumn1, nameColumn2;
*/


-- Resultado da Query: ordenando pelo primeiro nome:

SELECT		FirstName,
			BirthDate
FROM		Employees
ORDER BY	FirstName;


FirstName	BirthDate
Andrew		1952-02-19 
Anne		1966-01-27 
Janet		1963-08-30 
Laura		1958-01-09 
Margaret	1937-09-19 
Michael		1963-07-02 
Nancy		1948-12-08 
Robert		1960-05-29 
Steven		1955-03-04 


-- Resultado da Query: ordenando pela data de nascimento:

SELECT		FirstName,
			BirthDate
FROM		Employees
ORDER BY	BirthDate;


FirstName	BirthDate
Margaret	1937-09-19
Nancy		1948-12-08 
Andrew		1952-02-19 
Steven		1955-03-04 
Laura		1958-01-09 
Robert		1960-05-29 
Michael		1963-07-02 
Janet		1963-08-30 
Anne		1966-01-27


-- Resultado da Query: ordenando por data de nascimento e nome:


SELECT		FirstName,
			BirthDate
FROM		Employees
ORDER BY	BirthDate, FirstName;


FirstName	BirthDate
Margaret	1937-09-19 
Nancy		1948-12-08 
Andrew		1952-02-19 
Steven		1955-03-04 
Laura		1958-01-09 
Robert		1960-05-29 
Michael		1963-07-02 
Janet		1963-08-30 
Anne		1966-01-27


-- Resultado da Query: ordenando nome em ordem decrescente:

SELECT			FirstName,
				BirthDate
FROM			Employees
ORDER BY 		FirstName DESC;


FirstName	BirthDate
Steven		1955-03-04 
Robert		1960-05-29 
Nancy		1948-12-08 
Michael		1963-07-02 
Margaret	1937-09-19 
Laura		1958-01-09 
Janet		1963-08-30 
Anne		1966-01-27 
Andrew		1952-02-19 