/*
	A instru��o SELECT junto com as fun��es do SQL Server facilitam a extra��o de dados e cria��o de relat�rio.
	Saber utilizar algumas fun��es aumenta expressivamente a sua produtividade para resolver alguns problemas. 
	Algumas fun��es possuem par�metro obrigat�rio para retornar um valor, por�m outras n�o possuem par�metros.
	H� dois tipo de fun��es:
	

	-Determin�sticas: retorna o mesmo valor, uma fun��o que calcula a quantidade de produtos vendidos em um determinado dia.
	-N�o determin�sticas: os valores alteram cada vez que invocamos a fun��o, por exemplo extrair a data/hora atual.
	

	Sint�xe:

	SELECT nameColumn1, nameFunction() FROM nameTable;



	Importante: Os SGBD's possuem fun��es distintas de acordo com cada distribuidor, por�m conforme citado anteriormente vamos trabalhar com as fun��es nativas do SQL Server da Microsoft.

	Links de apoio: https://docs.microsoft.com/pt-br/sql/relational-databases/user-defined-functions/deterministic-and-nondeterministic-functions?view=sql-server-2017
*/


-- -------------------------------------------------------------------------------------------------------------------------------------
--													Fun��es de Data
-- -------------------------------------------------------------------------------------------------------------------------------------

SELECT			e.FirstName,
				e.BirthDate,	
				YEAR(e.BirthDate) AS 'Year'
FROM			Employees as e;

-- Resultado da Query: Extra�mos apenas o ano da data de nascimento:

FirstName	BirthDate					Year
Nancy		1948-08-12 00:00:00.000		1948
Andrew		1952-02-19 00:00:00.000		1952
Janet		1963-08-30 00:00:00.000		1963
-- -------------------------------------------------------------------------------------------------------------------------------------

SELECT		e.FirstName,
			e.BirthDate,
			MONTH(e.BirthDate) AS 'MONTH'
FROM		Employees as e;

-- Resultado da Query: Extra�mos apenas o m�s da data de nascimento:

FirstName	BirthDate					MONTH
Nancy		1948-08-12 00:00:00.000		  8
Andrew		1952-02-19 00:00:00.000		  2
Janet		1963-08-30 00:00:00.000		  8
-- -------------------------------------------------------------------------------------------------------------------------------------

SELECT		e.FirstName,
			e.BirthDate,
			DAY(e.BirthDate) AS 'DAY'
FROM		Employees as e;

-- Resultado da Query: Extra�mos apenas o dia da data de nascimento:

FirstName	BirthDate					DAY
Nancy		1948-08-12 00:00:00.000		12
Andrew		1952-02-19 00:00:00.000		19
Janet		1963-08-30 00:00:00.000		30
-- -------------------------------------------------------------------------------------------------------------------------------------

-- Em alguns casos � necess�rio extrair parte de uma data conforme os exemplos acima, ou realizar calculos com as datas conforme abaixo:

SELECT		e.FirstName,
			(YEAR(GETDATE()) - YEAR(e.BirthDate)) AS 'Age' 
FROM		Employees as e;

-- Resultado da Query: realizamos o c�lculo com a extra��o dos anos e data atual e resultou na idade do cliente.

FirstName	Age
Nancy		71
Andrew		67
Janet		56
-- -------------------------------------------------------------------------------------------------------------------------------------
--													Fun��es L�gicas [IIF e CASE]
-- -------------------------------------------------------------------------------------------------------------------------------------
/*	
													CASE

	Em alguns casos determinados necessitamos que uma �nica instru��o seja capaz de retornar express�es distintas.
	Baseadas em outras express�es/valores que v�o retornar TRUE ou FALSE vamos utilizar as fun��es CASE e IIF para estes casos.

	Sint�xe CASE:

	SELECT	CASE 
				WHEN nameColumn Expression THEN 'Return'
			END	AS 'nameOptional'			 
	FROM	nameTable;
-- -----------------------------------------------------------------
Sint�xe IIF:

SELECT	IIF(booleanExpression, trueValue, falseValue)				 
FROM	nameTable;



	Obs: podemos usar os operadores l�gicos, aninhar CASE/IIF dentro de CASE/IIF, por�m sempre verifique se � necess�rio e muito cuidado 
	com o consumo de mem�ria ao utilizar v�rias express�es em uma Query.
*/

SELECT		p.ProductName,
			p.Discontinued,
			CASE p.Discontinued
				WHEN 0 THEN 'No'
				WHEN 1 THEN 'Yes'
			END AS 'Status'  	
FROM		Products as p;

-- Resultao da Query: com a express�o CASE definimos que o campo Discotinued for 0 retorne 'No' e quando for 1 retorne 'Yes'.

ProductName							Status
Chai								No
Chang								No
Aniseed Syrup						No
Chef Anton's Cajun Seasoning		No
Chef Anton's Gumbo Mix				Yes
Grandma's Boysenberry Spread		No
Uncle Bob's Organic Dried Pears		No
Northwoods Cranberry Sauce			No
Mishi Kobe Niku						Yes
Ikura								No

-- -------------------------------------------------------------------------------------------------------------------------------------
--													Fun��o [IIF]
-- -------------------------------------------------------------------------------------------------------------------------------------
SELECT		p.ProductName,
			IIF(p.Discontinued <> 0,
			'Yes',
			'No'
			) AS 'Status'
FROM		Products AS p;

-- Resultado da Query: a fun��o IIF � praticamente um atalho da instru��o CASE, por�m simplificada, testa apenas uma condi��o e retorna TRUE ou FALSE.

ProductName							Status
Chai								No
Chang								No
Aniseed Syrup						No
Chef Anton's Cajun Seasoning		No
Chef Anton's Gumbo Mix				Yes
Grandma's Boysenberry Spread		No
Uncle Bob's Organic Dried Pears		No
Northwoods Cranberry Sauce			No
Mishi Kobe Niku						Yes
Ikura								No

-- -----------------------------------------------------------------------------------------------------------------------------
--														Importante 
-- -----------------------------------------------------------------------------------------------------------------------------
/*
Em casos que a necessita � testar apenas uma condi��o utilize a fun��o IIF ao inv�s de CASE, pois consome menos processamento e mem�ria.
Em casos com mais de 2 condi��es utilize CASE para ter mais de um retorno/sa�da.
*/