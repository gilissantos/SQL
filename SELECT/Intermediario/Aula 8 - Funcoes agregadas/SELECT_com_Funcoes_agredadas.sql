/*
	A instrução SELECT junto com as funções do SQL Server facilitam a extração de dados e criação de relatório.
	Saber utilizar algumas funções aumenta expressivamente a sua produtividade para resolver alguns problemas. 
	Algumas funções possuem parâmetro obrigatório para retornar um valor, porém outras não possuem parâmetros.
	Há dois tipo de funções:
	

	-Determinísticas: retorna o mesmo valor, uma função que calcula a quantidade de produtos vendidos em um determinado dia.
	-Não determinísticas: os valores alteram cada vez que invocamos a função, por exemplo extrair a data/hora atual.
	

	Sintáxe:

	SELECT nameColumn1, nameFunction() FROM nameTable;



	Importante: Os SGBD's possuem funções distintas de acordo com cada distribuidor, porém conforme citado anteriormente vamos trabalhar com as funções nativas do SQL Server da Microsoft.

	Links de apoio: https://docs.microsoft.com/pt-br/sql/relational-databases/user-defined-functions/deterministic-and-nondeterministic-functions?view=sql-server-2017
*/


-- -------------------------------------------------------------------------------------------------------------------------------------
--													Funções de Data
-- -------------------------------------------------------------------------------------------------------------------------------------

SELECT			e.FirstName,
				e.BirthDate,	
				YEAR(e.BirthDate) AS 'Year'
FROM			Employees as e;

-- Resultado da Query: Extraímos apenas o ano da data de nascimento:

FirstName	BirthDate					Year
Nancy		1948-08-12 00:00:00.000		1948
Andrew		1952-02-19 00:00:00.000		1952
Janet		1963-08-30 00:00:00.000		1963
-- -------------------------------------------------------------------------------------------------------------------------------------

SELECT		e.FirstName,
			e.BirthDate,
			MONTH(e.BirthDate) AS 'MONTH'
FROM		Employees as e;

-- Resultado da Query: Extraímos apenas o mês da data de nascimento:

FirstName	BirthDate					MONTH
Nancy		1948-08-12 00:00:00.000		  8
Andrew		1952-02-19 00:00:00.000		  2
Janet		1963-08-30 00:00:00.000		  8
-- -------------------------------------------------------------------------------------------------------------------------------------

SELECT		e.FirstName,
			e.BirthDate,
			DAY(e.BirthDate) AS 'DAY'
FROM		Employees as e;

-- Resultado da Query: Extraímos apenas o dia da data de nascimento:

FirstName	BirthDate					DAY
Nancy		1948-08-12 00:00:00.000		12
Andrew		1952-02-19 00:00:00.000		19
Janet		1963-08-30 00:00:00.000		30
-- -------------------------------------------------------------------------------------------------------------------------------------

-- Em alguns casos é necessário extrair parte de uma data conforme os exemplos acima, ou realizar calculos com as datas conforme abaixo:

SELECT		e.FirstName,
			(YEAR(GETDATE()) - YEAR(e.BirthDate)) AS 'Age' 
FROM		Employees as e;

-- Resultado da Query: realizamos o cálculo com a extração dos anos e data atual e resultou na idade do cliente.

FirstName	Age
Nancy		71
Andrew		67
Janet		56
-- -------------------------------------------------------------------------------------------------------------------------------------
--													Funções Lógicas [IIF e CASE]
-- -------------------------------------------------------------------------------------------------------------------------------------
/*	
													CASE

	Em alguns casos determinados necessitamos que uma única instrução seja capaz de retornar expressões distintas.
	Baseadas em outras expressões/valores que vão retornar TRUE ou FALSE vamos utilizar as funções CASE e IIF para estes casos.

	Sintáxe CASE:

	SELECT	CASE 
				WHEN nameColumn Expression THEN 'Return'
			END	AS 'nameOptional'			 
	FROM	nameTable;
-- -----------------------------------------------------------------
Sintáxe IIF:

SELECT	IIF(booleanExpression, trueValue, falseValue)				 
FROM	nameTable;



	Obs: podemos usar os operadores lógicos, aninhar CASE/IIF dentro de CASE/IIF, porém sempre verifique se é necessário e muito cuidado 
	com o consumo de memória ao utilizar várias expressões em uma Query.
*/

SELECT		p.ProductName,
			p.Discontinued,
			CASE p.Discontinued
				WHEN 0 THEN 'No'
				WHEN 1 THEN 'Yes'
			END AS 'Status'  	
FROM		Products as p;

-- Resultao da Query: com a expressão CASE definimos que o campo Discotinued for 0 retorne 'No' e quando for 1 retorne 'Yes'.

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
--													Função [IIF]
-- -------------------------------------------------------------------------------------------------------------------------------------
SELECT		p.ProductName,
			IIF(p.Discontinued <> 0,
			'Yes',
			'No'
			) AS 'Status'
FROM		Products AS p;

-- Resultado da Query: a função IIF é praticamente um atalho da instrução CASE, porém simplificada, testa apenas uma condição e retorna TRUE ou FALSE.

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
Em casos que a necessita é testar apenas uma condição utilize a função IIF ao invés de CASE, pois consome menos processamento e memória.
Em casos com mais de 2 condições utilize CASE para ter mais de um retorno/saída.
*/