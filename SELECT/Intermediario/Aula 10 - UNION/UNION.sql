/*
	Digamos que em alguns casos necessitamos de unir o resultado de duas tabelas semelhantes com os mesmos campos em uma consulta.
	O operador UNION � utilizado para estes casos, onde cada instru��o SELECT deve conter o mesmo n�mero de colunas, tipo de dados e na mesma ordem.
	H� doios tipos de UINON:

	>UNION: exclui as linhas duplicadas das tabelas.
	>UNION ALL: inclui todas as linhas das tabelas mesmo duplicadas.


	Sint�xe:

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

-- Resultado da Quer: realizamos a uni�o das tabelas Customers e Employees, extra�mos apenas os campos que n�o s�o duplicados. 

CompanyName								Address								City
Alfreds Futterkiste						Obere Str. 57						Berlin
Ana Trujillo Emparedados y helados		Avda. de la Constituci�n 2222		M�xico D.F.
Andrew									908 W. Capital Way					Tacoma
Anne									7 Houndstooth Rd.					London
Antonio Moreno Taquer�a					Mataderos  2312						M�xico D.F.
Around the Horn							120 Hanover Sq.						London
Berglunds snabbk�p						Berguvsv�gen  8						Lule�
Blauer See Delikatessen					Forsterstr. 57						Mannheim
Blondesddsl p�re et fils				24, place Kl�ber					Strasbourg
B�lido Comidas preparadas				C/ Araquil, 67						Madrid
-- --------------------------------------------------------------------------------------------------------------------------

SELECT CompanyName, Address, City FROM Customers
UNION ALL
SELECT FirstName, Address, City FROM Employees;

-- Resultado da Query: realizamos a uni�o das tabelas Customers e Employees, extra�mos apenas os campos que n�o s�o duplicados.

CompanyName								Address							City
Alfreds Futterkiste						Obere Str. 57					Berlin
Ana Trujillo Emparedados y helados		Avda. de la Constituci�n 2222	M�xico D.F.
Antonio Moreno Taquer�a					Mataderos  2312					M�xico D.F.
Around the Horn							120 Hanover Sq.					London
Berglunds snabbk�p						Berguvsv�gen 8					Lule�
Blauer See Delikatessen					Forsterstr. 57					Mannheim
Blondesddsl p�re et fils				24, place Kl�ber				Strasbourg
B�lido Comidas preparadas				C/ Araquil, 67					Madrid
Bon app									12, rue des Bouchers			Marseille
Bottom-Dollar Markets					23 Tsawassen Blvd.				Tsawassen


-- Obs: Fa�a in�meras Query's use condi��es, fun��es etc.