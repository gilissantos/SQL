/*
	Os operadores aritm�ticos servem para executar opera��es matem�ticas em duas express�es de uma ou mais tipos de dados.
	Importante ressaltar que apenas com campos do tipo de dados num�ricos � poss�vel utiliz�-los, s�o eles:
	
	+: Adi��o
	-: subtra��o
	*: multiplica��o
	/: divis�o
	%: m�dulo (realiza o resto de uma divis�o)


	Sint�xe:

	SELECT nameColumn + typeOperador FROM nameTable;

	*/



SELECT		(UnitPrice + 20) as SOMA			
FROM		Products;

-- Resultado da query: realizamos a soma entre a coluna UnitPrice + 20.00:

SOMA
38,00
39,00
30,00
42,00
41,35
-- --------------------------------------------------------------------------------------------------------

SELECT		(UnitPrice - 20) as SUBTRACAO			
FROM		Products;

-- Resultado da query: realizamos a subtra��o da coluna UnitPrice por 20.00:

SUBTRACAO
-2,00
-1,00
-10,00
2,00
1,35
-- --------------------------------------------------------------------------------------------------------

SELECT		(UnitPrice / 2) as DIVISAO			
FROM		Products;

-- Resultado da query: realizamos a divis�o da coluna UnitPrice por 2:

DIVISAO
9,00
9,50
5,00
11,00
10,675
-- --------------------------------------------------------------------------------------------------------

SELECT		(UnitPrice * 2) as MULTIPLICACAO			
FROM		Products;

-- Resultado da query: realizamos a multiplica��o da coluna UnitPrice por 2:

MULTIPLICACAO
36,00
38,00
20,00
44,00
42,70
-- --------------------------------------------------------------------------------------------------------

SELECT		(UnitPrice % 2) as MODULO			
FROM		Products;

-- Resultado da query: realizamos o resto da divis�o da coluna UnitPrice por 2:

MODULO
0,00
1,00
0,00
0,00
1,35
