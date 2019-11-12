/*
	Os campos do NULL/Nulo estão presentes em alguns casos específicos, porém para a extração de dados e alguns relatórios estes 
dados não são utilizados, e a forma de tratá-los são através de algumas funções específicas.
	No SQL Serve tem a função ISNULL(expression, replaceValue).

	Sintáxe:
	
	SELECT	nameColumn, ISNULL(nameColumn, replaceValue) FROM nameTable;
*/

SELECT	ISNULL(Region, '-') AS Region 
FROM	Employees;

-- Resultado da Query: substituímos os valores NULL por -.

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
