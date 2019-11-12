/*
	Os campos do NULL/Nulo est�o presentes em alguns casos espec�ficos, por�m para a extra��o de dados e alguns relat�rios estes 
dados n�o s�o utilizados, e a forma de trat�-los s�o atrav�s de algumas fun��es espec�ficas.
	No SQL Serve tem a fun��o ISNULL(expression, replaceValue).

	Sint�xe:
	
	SELECT	nameColumn, ISNULL(nameColumn, replaceValue) FROM nameTable;
*/

SELECT	ISNULL(Region, '-') AS Region 
FROM	Employees;

-- Resultado da Query: substitu�mos os valores NULL por -.

Region
WA
WA
WA
WA
-
-
-
WA
-
