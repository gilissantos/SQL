/*
	Em alguns casos necessitamos de concatenar campos ou adicionar textos em uma Query.
	A fun��o CONCAT tem este objetivo.

	Sint�xe:

	SELECT nameColumn1, CONCAT(nameColumn1, valueString, nameColumn2) FROM nameTable;
*/

SELECT		e.FirstName,
			e.LastName,
			CONCAT(e.FirstName, ' ', e.LastName) AS 'Resultado'
FROM		Employees AS e;

-- Resultado da Query: concatenamos o primeiro + espa�o + o segundo nome.

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
	A fun��o CONCAT_WS concatena campos e valores, por�m define um seperador entre os valores concatenados.

	Sint�xe:

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

-- Obs: Sempre que realizar este tipo de Query, use entre par�nteses, al�m de ser uma boa pr�tica deixa o c�digo mais leg�vel.