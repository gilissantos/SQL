/*
	Neste exemplo vamos usar a tabela Products e criar um campo temporário.
	O campo/coluna temporária vai armazenar o resultado do cláculo dos campos UnitPrice x UnitsInStock.
	
	Sintáxe:

	SELECT nameColumn1, (nameColumn2 * nameColumn3) AS 'nameSolicited' FROM nameTable;
	 
*/



-- Query of example:

SELECT		ProductName,
			UnitPrice,
			UnitsInStock,
			(UnitPrice * UnitsInStock) AS ValueTotal
FROM		Products; 


-- Resultado da Query:

ProductName						UnitPrice	UnitsInStock	ValueTotal
Chai							18,00		39				702,00
Chang							19,00		17				323,00
Aniseed Syrup					10,00		13				130,00
Chef Anton's Cajun Seasoning	22,00		53				1166,00
Chef Anton's Gumbo Mix			21,35		0				0,00


-- Obs: para efetuar calculos devemos verificar se o tipo de dados do campo é númerico ou data/hora.