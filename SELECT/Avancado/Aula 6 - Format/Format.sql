/*
A fun��o FORMAT retorna um formato de acordo com a cultura local que foi especificado.
Serve para valores com DATA/HORA e n�mero com strings.

Sint�xe:

SELECT FORMAT(value/nameColumn, format, culture) FROM nameTable; campo ou nome da tabela s�o opcionais de acordo com a necessidade.

*/


DECLARE @dia DATETIME = GETDATE();

SELECT	FORMAT(@dia, 'd', 'pt-BR') AS 'Brasil',
		FORMAT(@dia, 'd', 'zh-cn') AS 'China',
		FORMAT(@dia, 'd', 'de-de') AS 'Alemanha';

-- Resultado da Query: Verificamos o formato da data que s�o reconhecidos de acordo com a cultura do Pa�s.


-- Importante: Leia documenta��o do SQL Server para saber mais sobre os formatos culturais do T-SQL. 