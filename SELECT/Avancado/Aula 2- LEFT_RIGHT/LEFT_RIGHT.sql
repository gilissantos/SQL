/*
	LEFT and RIGHT
	
	As fun��es LEFT e RIGHT manipulam dados do tipo strings, extraem caracteres para direita/esquerda.
	Aceita dois par�metros de entrada: 
	O valor/campo 
	Quantidade (tipo inteiro) de caracteres � ser extra�do.

	Sint�xe:

	SELECT	RIGHT(value/nameColumn, 1)	FROM nameTable;
	SELECT	LEFT(value/nameColumn, 1)	FROM nameTable; 
	
	 
*/



SELECT a.FirstName,RIGHT(a.FirstName, 3) AS [RIGHT], LEFT(a.FirstName, 3) AS [LEFT]
FROM employees AS a;


-- Resultado da Query:

FirstName	RIGHT	LEFT
Nancy		ncy		Nan
Andrew		rew		And
Janet		net		Jan