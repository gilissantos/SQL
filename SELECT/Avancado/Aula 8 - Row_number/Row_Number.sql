/*
	A Função ROW_NUMBER retorna o número da linha dentro de uma Query, porém de acordo com o PARTION_BY e ORDER_BY.
	O objetivo é limitar/escolhe a quantidade de linhas que a consulta deve retornar.

	Sintáxe:

	SELECT nameColumn1, nameColumn2, ROW_NUMBER() OVER (ORDER BY nameColumn) AS 'nameAlias' FROM tableName ODER BY 'nameAlias'
*/

SELECT			ROW_NUMBER()
				OVER ( ORDER BY FirstName) AS 'ID',
				FirstName,
				Title
FROM			Employees
ORDER	BY		FirstName;

-- Resultado da Query: Adicionamos linhas em nossa consulta e apelidamos como ID:

ID	FirstName	Title
1	Andrew		Vice President, Sales
2	Anne		Sales Representative
3	Janet		Sales Representative
4	Laura		Inside Sales Coordinator
5	Margaret	Sales Representative
