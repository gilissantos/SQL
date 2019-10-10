/*
	Campo ou coluna tempor�ria s�o o resultado de uma consulta, opera��o matem�tica ou demais express�es.
	Este objeto � armazenado na mem�ria tempor�ra, n�o altera a estrutura f�sica de uma tabela, ap�s a consulta � descartada.
	Vamos realizar alguns exemplos e utilizar AS/Alias, ou seja, codinome/apelido para os campos tempor�rios.

	Sint�xe:

	SELECT nameColumn1, 'valueTemporary' AS 'nameColumnTemporary' FROM nameTable;
*/

SELECT		e.FirstName,
			'Period of Experience' AS 'Situation'
FROM		Employees AS e;

-- Resultado da Query: Adicionamos o valor 'Period of Experience' do tipo strin e o t�tulo do campo/coluna.

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
 Resultado da Query: realizamos um c�lculo/multiplicamos o pre�o unitpario * a quantidade.
 Armazenamos o resultado em uma coluna que nomeamos como totalValue.
*/

UnitPrice	Quantity	totalValue
14,00		12			168,00
9,80		10			98,00
34,80		5			174,00
18,60		9			167,40
42,40		40			1696,00
