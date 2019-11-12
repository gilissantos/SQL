/*

A função REPLACE realiza a substituição de caracteres específicos por outros,ou seja, subtituir um determinado valor por outro.

Sintáxe: 

SELECT	REPLACE(string, oldString, newString);

Obs: pode substituir por mais de uma palavra ou por nenhum caractere, basta não passar nenhum valor entre aspas ''.	
*/

SELECT REPLACE('Eastem', 'm', '') AS 'REPLACE';

-- Resultado da Query: selecionamos o texto Eastem e subtitituímos o caractere m por nada, ou seja, não passamos nenhum valor.

REPLACE
Easte