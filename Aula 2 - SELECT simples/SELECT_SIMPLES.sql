/*

O SELECT simples utilizamos o caractere especial * para recuperar todas as colunas de uma tabela.
Em boas práticas não devemos utilizá-lo, o ideal é colocar os nomes das colunas que queremos recuperar os dados.


Sintáxe:

SELECT -> SELECIONE
  *    -> [Todas as colunas]	
FROM   -> [nome da tabela]
		
*/




SELECT * FROM Employees;



EmployeeID		LastName		FirstName		Title
1				Davolio			Nancy			Sales Representative
2				Fuller			Andrew			Vice President, Sales
3				Leverling		Janet			Sales Representative
4				Peacock			Margaret		Sales Representative
5				Buchanan		Steven			Sales Manager
6				Suyama			Michael			Sales Representative
7				King			Robert			Sales Representative
8				Callahan		Laura			Inside Sales Coordinator
9				Dodsworth		Anne			Sales Representative


 -- Observação: Neste exemplo resulta em 9 linhas e 4 colunas(porém nesta tabela há 14 colunas) 
