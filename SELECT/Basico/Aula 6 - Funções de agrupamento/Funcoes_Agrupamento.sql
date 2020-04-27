/*
	As funções de agrupamento de dados permitem a recupeção e manipulação de dados, porém apenas para exibição, ou seja não alteramos a natureza dos dados.
	Neste exemplo vamos contar a quantidade de registros, somar, multiplicar, mínimo, máximo e média de determinados campos calculados.
	
	Obs: a partir deste exemplo vamos utilizar AS(ALIAS) que significa pseudônimo ou codinome para nomear as colunas e funções de agregação.
	
	Sintáxe:

	SELECT nameFunction(nameColumn) AS 'nomeDesejado' FROM nameTable;

*/

-- Resultado da Query com a função Count(), contamos a quantidade de produtos da tabela Products:

SELECT		COUNT(ProductName) AS Qtde
FROM		Products;

Qtde
77

-- -------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------

-- Resultado da Query com a função SUM(), realizamos a soma do preço de todos os produtos da coluna UnitPrice:

SELECT		SUM(UnitPrice) AS SOMA
FROM		Products;

SOMA
2222,71
-- -------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------

-- Resultado da Query com a função MIN(), consultamos o menor preço da coluna UnitPrice:

SELECT		MIN(UnitPrice) AS MINIMO
FROM		Products;

MINIMO
2,50
-- -------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------

-- Resultado da Query com a função MAX(), consultamos o maior preço da coluna UnitPrice:

SELECT		MAX(UnitPrice) AS MAXIMO
FROM		Products;

MAXIMO
263,50
-- ------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------

-- Resultado da Query com a função AVG(), consultamos a media de preço da coluna UnitPrice:

SELECT		AVG(UnitPrice) AS MEDIA
FROM		Products;

MEDIA
28,8663
-- ------------------------------------------------------------------------------------------------------------------


