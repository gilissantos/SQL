/*
	Em alguns casos necessitamos de concatenar campos ou adicionar textos em uma Query.
	A função CONCAT tem este objetivo.

	Sintáxe:

	SELECT nameColumn1, CONCAT(nameColumn1, valueString, nameColumn2) FROM nameTable;
*/

SELECT		e.FirstName,
			e.LastName,
			CONCAT(e.FirstName, ' ', e.LastName) AS 'Resultado'
FROM		Employees AS e;

-- Resultado da Query: concatenamos o primeiro + espaço + o segundo nome.

FirstName	LastName	Resultado
Nancy		Davolio		Nancy Davolio
Andrew		Fuller		Andrew Fuller
Janet		Leverling	Janet Leverling

-- ---------------------------------------------------------------------------------------------------

SELECT		e.FirstName,
			CONCAT(e.FirstName, '@', 'nameProvedor.com') AS 'EMAIL'	
FROM		Employees AS e;

-- Resultado da Query: Concatenamos o primeiro nome + @nameProvedor.com.

-- ---------------------------------------------------------------------------------------------------
--											CONCAT_WS
-- ---------------------------------------------------------------------------------------------------
/*
	A função CONCAT_WS concatena campos e valores, porém define um seperador entre os valores concatenados.

	Sintáxe:

	SELECT CONCAT_WS(separator, valueString/column)
*/

SELECT		e.FirstName,
			e.LastName,
			CONCAT_WS(';', e.FirstName, e.LastName) AS 'RESULTADO' 
FROM		Employees AS e;

-- Resultado da Query: concatenamos os campos FirstName, LastName e separamos por ;.

FirstName	LastName	RESULTADO
Nancy		Davolio		Nancy;Davolio
Andrew		Fuller		Andrew;Fuller
Janet		Leverling	Janet;Leverling
-- -----------------------------------------------------------------------------------------

/*
	Em alguns exemplos pode encontrar campos ou strings concatenados com o operador +.
*/

SELECT		(e.FirstName + e.LastName) AS 'RESULTADO' 
FROM		Employees AS e;

-- Resultado da Query: concatenamos com o operador +.

RESULTADO
NancyDavolio
AndrewFuller
JanetLeverling

-- Obs: Sempre que realizar este tipo de Query, use entre parênteses, além de ser uma boa prática deixa o código mais legível.