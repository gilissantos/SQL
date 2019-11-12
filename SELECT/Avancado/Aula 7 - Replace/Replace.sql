/*

A fun��o REPLACE realiza a substitui��o de caracteres espec�ficos por outros,ou seja, subtituir um determinado valor por outro.

Sint�xe: 

SELECT	REPLACE(string, oldString, newString);

Obs: pode substituir por mais de uma palavra ou por nenhum caractere, basta n�o passar nenhum valor entre aspas ''.	
*/

SELECT REPLACE('Eastem', 'm', '') AS 'REPLACE';

-- Resultado da Query: selecionamos o texto Eastem e subtititu�mos o caractere m por nada, ou seja, n�o passamos nenhum valor.

REPLACE
Easte