/*
A função FORMAT retorna um formato de acordo com a cultura local que foi especificado.
Serve para valores com DATA/HORA e número com strings.

Sintáxe:

SELECT FORMAT(value/nameColumn, format, culture) FROM nameTable; campo ou nome da tabela são opcionais de acordo com a necessidade.

*/


DECLARE @dia DATETIME = GETDATE();

SELECT	FORMAT(@dia, 'd', 'pt-BR') AS 'Brasil',
		FORMAT(@dia, 'd', 'zh-cn') AS 'China',
		FORMAT(@dia, 'd', 'de-de') AS 'Alemanha';

-- Resultado da Query: Verificamos o formato da data que são reconhecidos de acordo com a cultura do País.


-- Importante: Leia documentação do SQL Server para saber mais sobre os formatos culturais do T-SQL. 