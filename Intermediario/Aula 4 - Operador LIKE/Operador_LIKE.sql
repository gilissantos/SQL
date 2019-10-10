/*
	O operador LIKE funciona como um filtro de texto, podemos realizar a consulta de um determinado dado junto com a cl�usua WHERE.
	Com o LIKE realizamos as seguintes consultas:

	- 'texto%' - Consulta textos que iniciam com a palavra/caractere desejado
	- '' 
*/


-- Query of example:

SELECT		ProductName
FROM		Products
WHERE		ProductName LIKE 'a%'; 

-- Resultado, Products que iniciam com a letra/caractere a:

ProductName
Alice Mutton
Aniseed Syrup
-- ---------------------------------------------------------------------------------------------------------

SELECT		ProductName
FROM		Products
WHERE		ProductName LIKE '%a';

-- Resultado, Products que terminam com a letra/caractere a:

ProductName
Guaran� Fant�stica
Gula Malacca
-- ---------------------------------------------------------------------------------------------------------

SELECT		ProductName
FROM		Products
WHERE		ProductName LIKE '%a%';

-- Resultado, Products que iniciam ou terminam com a letra/caractere a: 

ProductName
Alice Mutton
Aniseed Syrup
Boston Crab Meat
Camembert Pierrot
Carnarvon Tigers


-- Obs: � poss�vel procurar cadeias/conjuntos de caracteres por exemplo LIKE 'asd'. 