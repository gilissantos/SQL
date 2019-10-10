/*
	A instrução SELECT junto com as funções do SQL Server facilitam a extração de dados e criação de relatório.
	Saber utilizar algumas funções aumenta expressivamente a sua produtividade para resolver alguns problemas. 
	Algumas funções possuem parâmetro obrigatório para retornar um valor, porém outras não possuem parâmetros.
	Há dois tipo de funções:
	

	-Determinísticas: retorna o mesmo valor, uma função que calcula a quantidade de produtos vendidos em um determinado dia.
	-Não determinísticas: os valores alteram cada vez que invocamos a função, por exemplo extrair a data/hora atual.
	

	Sintáxe:

	SELECT nameColumn1, nameFunction() FROM nameTable;



	Importante: Os SGBD's possuem funções distintas de acordo com cada distribuidor, porém conforme citado anteriormente vamos trabalhar com as funções nativas do SQL Server da Microsoft.

	Links de apoio: https://docs.microsoft.com/pt-br/sql/relational-databases/user-defined-functions/deterministic-and-nondeterministic-functions?view=sql-server-2017
*/




