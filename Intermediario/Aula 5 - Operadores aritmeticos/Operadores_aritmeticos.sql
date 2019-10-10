/*
	Os operadores aritméticos servem para executar operações matemáticas em duas expressões de uma ou mais tipos de dados.
	Importante ressaltar que apenas com campos do tipo de dados numéricos é possível utilizá-los, são eles:
	
	+: Adição
	-: subtração
	*: multiplicação
	/: divisão
	%: módulo (realiza o resto de uma divisão)


	Sintáxe:

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

-- Resultado da query: realizamos a subtração da coluna UnitPrice por 20.00:

SUBTRACAO
-2,00
-1,00
-10,00
2,00
1,35
-- --------------------------------------------------------------------------------------------------------

SELECT		(UnitPrice / 2) as DIVISAO			
FROM		Products;

-- Resultado da query: realizamos a divisão da coluna UnitPrice por 2:

DIVISAO
9,00
9,50
5,00
11,00
10,675
-- --------------------------------------------------------------------------------------------------------

SELECT		(UnitPrice * 2) as MULTIPLICACAO			
FROM		Products;

-- Resultado da query: realizamos a multiplicação da coluna UnitPrice por 2:

MULTIPLICACAO
36,00
38,00
20,00
44,00
42,70
-- --------------------------------------------------------------------------------------------------------

SELECT		(UnitPrice % 2) as MODULO			
FROM		Products;

-- Resultado da query: realizamos o resto da divisão da coluna UnitPrice por 2:

MODULO
0,00
1,00
0,00
0,00
1,35
