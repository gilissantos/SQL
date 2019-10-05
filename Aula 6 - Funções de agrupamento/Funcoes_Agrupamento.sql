/*
	As fun��es de agrupamento de dados permitem a recupe��o e manipula��o de dados, por�m apenas para exibi��o, ou seja n�o alteramos a natureza dos dados.
	Neste exemplo vamos contar a quantidade de registros, somar, multiplicar, m�nimo, m�ximo e m�dia de determinados campos calculados.
	
	Sint�xe:

	SELECT nameFunction(nameColumn) FROM nameTable;

*/

-- Resultado da Query com a fun��o Count(), contamos a quantidade de produtos da tabela Products:

SELECT		COUNT(ProductName) AS Qtde
FROM		Products;

Qtde
77

-- -------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------

-- Resultado da Query com a fun��o SUM(), realizamos a soma do pre�o de todos os produtos da coluna UnitPrice:

SELECT		SUM(UnitPrice) AS SOMA
FROM		Products;

SOMA
2222,71
-- -------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------

-- Resultado da Query com a fun��o MIN(), consultamos o menor pre�o da coluna UnitPrice:

SELECT		MIN(UnitPrice) AS MINIMO
FROM		Products;

MINIMO
2,50
-- -------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------

-- Resultado da Query com a fun��o MAX(), consultamos o maior pre�o da coluna UnitPrice:

SELECT		MAX(UnitPrice) AS MAXIMO
FROM		Products;

MAXIMO
263,50
-- ------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------

-- Resultado da Query com a fun��o AVG(), consultamos a media de pre�o da coluna UnitPrice:

SELECT		AVG(UnitPrice) AS MEDIA
FROM		Products;

MEDIA
28,8663
-- ------------------------------------------------------------------------------------------------------------------


