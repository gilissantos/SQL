/*
	Campo ou coluna temporária são o resultado de uma consulta, operação matemática ou demais expressões.
	Este objeto é armazenado na memória temporára, não altera a estrutura física de uma tabela, após a consulta é descartada.
	Vamos realizar alguns exemplos e utilizar AS/Alias, ou seja, codinome/apelido para os campos temporários.

	Sintáxe:

	SELECT nameColumn1, 'valueTemporary' AS 'nameColumnTemporary' FROM nameTable;
*/

SELECT		FirstName,
		'Period of Experience' AS 'Situation'
FROM		Employees;

-- Resultado da Query: Adicionamos o valor 'Period of Experience' do tipo strin e o título do campo/coluna.

FirstName	Situation
Nancy		Period of Experience
Andrew		Period of Experience
Janet		Period of Experience
Margaret	Period of Experience
Steven		Period of Experience
Michael		Period of Experience
Robert		Period of Experience
Laura		Period of Experience
Anne		Period of Experience

-- --------------------------------------------------------------------------------------------

SELECT	UnitPrice,
	Quantity,
	(UnitPrice * Quantity) as totalValue
FROM	[Order Details];

/*
 Resultado da Query: realizamos um cálculo/multiplicamos o preço unitpario * a quantidade.
 Armazenamos o resultado em uma coluna que nomeamos como totalValue.
*/

UnitPrice	Quantity	totalValue
14,00		12			168,00
9,80		10			98,00
34,80		5			174,00
18,60		9			167,40
42,40		40			1696,00
