/*
	Digamos que em alguns casos necessitamos de unir o resultado de duas tabelas semelhantes com os mesmos campos em uma consulta.
	O operador UNION é utilizado para estes casos, onde cada instrução SELECT deve conter o mesmo número de colunas, tipo de dados e na mesma ordem.
	Há doios tipos de UINON:

	>UNION: exclui as linhas duplicadas das tabelas.
	>UNION ALL: inclui todas as linhas das tabelas mesmo duplicadas.


	Sintáxe:

	SELECT	nameColumn1, nameColumn2 FROM table1
	UNION
	SELECT	nameColumn1, nameColumn2 FROM table2;


	SELECT	nameColumn1, nameColumn2 FROM table1
	UNION ALL
	SELECT	nameColumn1, nameColumn2 FROM table2;
*/


SELECT CompanyName, Address, City FROM Customers
UNION
SELECT FirstName, Address, City FROM Employees; 	

-- Resultado da Quer: realizamos a união das tabelas Customers e Employees, extraímos apenas os campos que não são duplicados. 

CompanyName								Address								City
Alfreds Futterkiste						Obere Str. 57						Berlin
Ana Trujillo Emparedados y helados		Avda. de la Constitución 2222		México D.F.
Andrew									908 W. Capital Way					Tacoma
Anne									7 Houndstooth Rd.					London
Antonio Moreno Taquería					Mataderos  2312						México D.F.
Around the Horn							120 Hanover Sq.						London
Berglunds snabbköp						Berguvsvägen  8						Luleå
Blauer See Delikatessen					Forsterstr. 57						Mannheim
Blondesddsl père et fils				24, place Kléber					Strasbourg
Bólido Comidas preparadas				C/ Araquil, 67						Madrid
-- --------------------------------------------------------------------------------------------------------------------------

SELECT CompanyName, Address, City FROM Customers
UNION ALL
SELECT FirstName, Address, City FROM Employees;

-- Resultado da Query: realizamos a união das tabelas Customers e Employees, extraímos apenas os campos que não são duplicados.

CompanyName								Address							City
Alfreds Futterkiste						Obere Str. 57					Berlin
Ana Trujillo Emparedados y helados		Avda. de la Constitución 2222	México D.F.
Antonio Moreno Taquería					Mataderos  2312					México D.F.
Around the Horn							120 Hanover Sq.					London
Berglunds snabbköp						Berguvsvägen 8					Luleå
Blauer See Delikatessen					Forsterstr. 57					Mannheim
Blondesddsl père et fils				24, place Kléber				Strasbourg
Bólido Comidas preparadas				C/ Araquil, 67					Madrid
Bon app									12, rue des Bouchers			Marseille
Bottom-Dollar Markets					23 Tsawassen Blvd.				Tsawassen


-- Obs: Faça inúmeras Query's use condições, funções etc.